# Findings

The committed dataset is generated deterministically with seed 42. The verified baseline is:

| KPI | Result |
|---|---:|
| Orders | 500 |
| Customers with orders | 117 |
| Revenue | 45,664.56 MAD |
| Profit | 15,171.06 MAD |
| Profit margin | 33.23% |

## Segment performance

| Segment | Customers | Revenue (MAD) | Avg. Recency | Avg. Frequency |
|---|---:|---:|---:|---:|
| Champions | 22 | 15,688.00 | 19.1 days | 7.68 |
| Potential Loyalists | 36 | 11,579.98 | 39.7 days | 3.47 |
| At Risk | 35 | 7,390.79 | 164.1 days | 2.49 |
| At Risk - High Value | 12 | 6,761.40 | 117.3 days | 5.58 |
| Loyal Customers | 12 | 4,244.39 | 15.0 days | 4.33 |

## Business interpretation

### Champions

Champions generate 15,688.00 MAD, approximately 34.4% of total revenue. They combine strong recency, frequency, and monetary value and should be protected from churn.

### At Risk - High Value

This smaller group generates 6,761.40 MAD while averaging more than 117 days since its latest order. It is the clearest targeted retention priority because its historical value is materially higher than the general At Risk group on a per-customer basis.

### Potential Loyalists

Potential Loyalists are the largest customer segment. Their average recency is substantially better than the At Risk groups, but their purchase frequency is lower than Champions. Increasing repeat purchase frequency is therefore a reasonable growth opportunity.

## Recommendation priority

1. Retain Champions.
2. Reactivate At Risk - High Value customers.
3. Increase frequency among Potential Loyalists.
4. Monitor margin impact when using discounts or incentives.

These conclusions are descriptive and should be validated against future campaign results before being treated as causal evidence.
