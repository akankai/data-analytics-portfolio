# Methodology

## 1. Validation

The transaction data is checked for missing values, duplicate order identifiers, valid dates, and numeric KPI fields.

## 2. Customer aggregation

Transactions are grouped by `Customer_ID` to calculate:

- latest order date
- distinct order count
- total revenue
- total profit

## 3. RFM scoring

- **Recency:** days since the customer's latest order.
- **Frequency:** number of distinct orders.
- **Monetary:** total revenue.

Each metric is converted to a quintile score. Recency is reversed because lower days since purchase is better.

## 4. Segmentation rules

| Segment | Rule |
|---|---|
| Champions | R >= 4, F >= 4, M >= 4 |
| Loyal Customers | R >= 4, F >= 3 |
| At Risk - High Value | R <= 2, F >= 3, M >= 3 |
| At Risk | R <= 2 |
| Potential Loyalists | Remaining customers |

The rules are intentionally transparent rather than using a black-box model.

## 5. Business interpretation

Segment size is evaluated alongside revenue, average frequency, and recency. This prevents a large low-value segment from automatically becoming the top business priority.

RFM is descriptive: it identifies groups with different historical behaviors but does not establish causality or predict future revenue by itself.
