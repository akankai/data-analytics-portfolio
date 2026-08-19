from pathlib import Path
import sqlite3
import numpy as np
import pandas as pd

SEED = 42
N_CUSTOMERS = 120
N_ORDERS = 500
OUT = Path(__file__).resolve().parents[1]
rng = np.random.default_rng(SEED)

customers = np.arange(10001, 10001 + N_CUSTOMERS)
profiles = rng.choice(["High Value", "Loyal", "Occasional", "At Risk"], N_CUSTOMERS, p=[.12, .28, .45, .15])
weights = np.array([{"High Value": 12, "Loyal": 8, "Occasional": 4, "At Risk": 2.5}[x] for x in profiles])
weights /= weights.sum()
customer = rng.choice(customers, N_ORDERS, p=weights)
products = [("Olive Oil 1L","Oils",35),("Olive Oil 5L","Oils",150),("Couscous 1kg","Grains",18),("Couscous 5kg","Grains",72),("Tomato Sauce","Canned Goods",12),("Tuna 160g","Canned Goods",9),("Milk 1L","Dairy",8),("Cheese 500g","Dairy",42),("Flour 1kg","Baking",11),("Flour 5kg","Baking",49),("Honey 500g","Pantry",38),("Dates 1kg","Pantry",55)]
countries = ["Morocco","France","Spain","Belgium"]
channels = ["Supermarket","Online","Retail"]
dates = pd.date_range("2025-01-01", "2025-12-31").to_numpy()
rows = []
for i in range(N_ORDERS):
    product, category, base = products[rng.integers(len(products))]
    quantity = int(rng.choice([1,2,3,4,5], p=[.25,.35,.22,.13,.05]))
    price = round(base * rng.uniform(.92, 1.10), 2)
    discount = float(rng.choice([0,.05,.1,.15,.2], p=[.55,.2,.15,.08,.02]))
    revenue = round(quantity * price * (1 - discount), 2)
    cost = round(revenue * rng.uniform(.58, .76), 2)
    rows.append([f"O{100000+i}", int(customer[i]), str(pd.Timestamp(rng.choice(dates)).date()), product, category, rng.choice(countries, p=[.78,.08,.08,.06]), rng.choice(channels, p=[.45,.25,.30]), quantity, price, discount, revenue, cost, round(revenue-cost,2)])

df = pd.DataFrame(rows, columns=["Order_ID","Customer_ID","Order_Date","Product","Category","Country","Sales_Channel","Quantity","Unit_Price_MAD","Discount_Rate","Revenue_MAD","Cost_MAD","Profit_MAD"]).sort_values("Order_Date")
DATA = OUT / "data"
DATA.mkdir(exist_ok=True)
df.to_csv(DATA / "customer_transactions.csv", index=False)

# Build the reproducible SQLite database.
con = sqlite3.connect(DATA / "customer_segmentation.db")
df.to_sql("transactions", con, if_exists="replace", index=False)
analysis_date = pd.to_datetime(df.Order_Date).max() + pd.Timedelta(days=1)
rfm = df.groupby("Customer_ID").agg(Last_Order=("Order_Date","max"), Frequency=("Order_ID","nunique"), Monetary=("Revenue_MAD","sum")).reset_index()
rfm["Recency"] = (analysis_date - pd.to_datetime(rfm.Last_Order)).dt.days
rfm["R_Score"] = pd.qcut(rfm.Recency.rank(method="first", ascending=True), 5, labels=[5,4,3,2,1]).astype(int)
rfm["F_Score"] = pd.qcut(rfm.Frequency.rank(method="first"), 5, labels=[1,2,3,4,5]).astype(int)
rfm["M_Score"] = pd.qcut(rfm.Monetary.rank(method="first"), 5, labels=[1,2,3,4,5]).astype(int)
def segment(r):
    if r.R_Score >= 4 and r.F_Score >= 4 and r.M_Score >= 4: return "Champions"
    if r.R_Score >= 4 and r.F_Score >= 3: return "Loyal Customers"
    if r.R_Score <= 2 and r.F_Score >= 3 and r.M_Score >= 3: return "At Risk - High Value"
    if r.R_Score <= 2: return "At Risk"
    return "Potential Loyalists"
rfm["Segment"] = rfm.apply(segment, axis=1)
rfm.to_sql("customer_rfm", con, if_exists="replace", index=False)
summary = rfm.groupby("Segment").agg(Customers=("Customer_ID","count"), Revenue=("Monetary","sum"), Avg_Recency=("Recency","mean"), Avg_Frequency=("Frequency","mean")).reset_index()
summary.to_sql("segment_summary", con, if_exists="replace", index=False)
con.close()
print(f"Generated {len(df):,} orders and {len(rfm):,} customers")
