# Methodology

## 1. Data preparation

The source workbook contains an `Inventory_Data` table with 600 records covering 2025.

The analysis uses:

- Date
- Product
- Category
- Supplier
- Warehouse
- Opening stock
- Units received
- Units sold
- Closing stock
- Reorder point
- Stockout days
- Lead time
- Unit cost
- Orders placed
- Late delivery

The workbook also contains a `Data_Dictionary` sheet.

## 2. KPI logic

### Inventory Value

Closing stock is valued at the supplied unit cost:

`Inventory Value = SUM(Closing Stock Units × Unit Cost)`

### Stockout Rate

A record is treated as a stockout observation when `Stockout_Days > 0`:

`Stockout Rate = Records with Stockout_Days > 0 / Total Records`

### Low Stock Rate

A record is treated as low stock when:

`Closing Stock Units < Reorder Point Units`

The rate is the share of records satisfying that condition.

### On-Time Delivery Rate

A delivery is treated as on time when `Late_Delivery = 0`:

`On-Time Delivery Rate = On-Time Records / Total Records`

### Inventory Turnover

The project uses a cost-weighted turnover calculation:

`Turnover = SUM(Units Sold × Unit Cost) / SUM(((Opening Stock + Closing Stock) / 2) × Unit Cost)`

This produces the observed ratio used by the Power BI dashboard.

## 3. Dashboard design

The dashboard is organized into:

- Category, Supplier and Warehouse slicers
- Five KPI cards
- Category-level inventory value
- Product-level stockout rate
- Supplier-level on-time delivery
- Product-level inventory turnover
- Warehouse-level inventory value
- Product-level low-stock rate

The layout is designed to move from overall performance to operational priorities.

## 4. Interpretation

The analysis focuses on identifying **where to investigate**, rather than claiming causal explanations from descriptive data.

For example, a high low-stock rate can indicate that reorder points need review, demand is higher than expected, or replenishment is delayed. Additional operational data would be required to distinguish these causes.
