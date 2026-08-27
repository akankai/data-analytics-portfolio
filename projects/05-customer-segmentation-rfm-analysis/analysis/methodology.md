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

### Why quintile scoring?

RFM scoring uses quintiles (5 equal-frequency bins) rather than absolute thresholds because:
1. **Relative comparison:** quintiles rank customers against each other within this dataset, which is appropriate when there are no external benchmark values for what constitutes "recent" or "frequent" or "high-value."
2. **Distribution handling:** the Recency, Frequency, and Monetary distributions are skewed (a small number of high-value, high-frequency customers and a longer tail of occasional ones). Quintile binning normalizes these distributions so that each score level captures roughly 20% of customers.
3. **Transparency:** the rule-based segments (Champions, At Risk, etc.) are built from the quintile scores using business-readable thresholds, making the segmentation easy to explain to non-technical stakeholders.

With 117 customers, each quintile contains approximately 23 customers. The recency distribution is right-skewed (many customers purchased recently, fewer have long gaps), so the R-score quintile boundaries are less evenly spaced than F and M. This is noted as a limitation: the R-score is noisier at the extremes than F and M.

## 5. Business interpretation

Segment size is evaluated alongside revenue, average frequency, and recency. This prevents a large low-value segment from automatically becoming the top business priority.

RFM is descriptive: it identifies groups with different historical behaviors but does not establish causality or predict future revenue by itself.
