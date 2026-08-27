# Executive Summary — AgriFood Sales & Demand Analysis

## The business question

A food business needs to understand where revenue and profit come from, which products and regions perform best, how sales channels compare, and whether promotional transactions are associated with different margins.

## What the data shows

Across 1,000 valid transactions (12 products, 5 categories, 5 regions, 4 channels, 12 months, 2025):

| KPI | Value |
|---|---|
| Orders (valid) | 1,000 |
| Units sold | 105,204 |
| Revenue | 2,816,965 MAD |
| Cost | 1,922,505 MAD |
| Profit | 894,448 MAD |
| Profit Margin | 31.75% |
| Avg. Margin per Unit | 8.50 MAD |

### Category performance

| Category | Revenue | Profit | Margin |
|---|---|---|---|
| Oils | 1,384,780 MAD | 381,325 MAD | 27.54% |
| Dairy | 479,391 MAD | 148,460 MAD | 30.97% |
| Beverages | 391,585 MAD | 150,485 MAD | 38.43% |
| Grains | 354,892 MAD | 128,331 MAD | 36.16% |
| Canned Goods | 206,317 MAD | 85,846 MAD | 41.61% |

Oils is the revenue leader but the margin laggard. Canned Goods has the highest margin despite being the smallest category by revenue.

### Product performance

Olive Oil 1L is the top revenue product at 843,481 MAD.

### Regional performance

Casablanca leads in revenue (908,992 MAD) and profit (288,538 MAD). Fes has the strongest margin (32.62%).

### Channel performance

Supermarket is the strongest channel (951,074 MAD revenue, 304,255 MAD profit). Wholesale is close behind (914,121 MAD revenue). Online is the smallest channel (255,735 MAD).

### Monthly trends

May is strongest (328,425 MAD revenue, 102,600 MAD profit). September is weakest (166,427 MAD revenue, 52,296 MAD profit). The May-September gap is substantial: May generates nearly twice September's revenue.

### Promotion analysis

| Condition | Revenue | Profit | Margin |
|---|---|---|---|
| Non-promoted | 2,137,484 MAD | 705,699 MAD | 33.02% |
| Promoted | 679,481 MAD | 188,749 MAD | 27.78% |

A category-level control (sql/09_promotion_by_category.sql) confirms the margin gap is consistent across all five categories — promoted transactions have lower margins than non-promoted in every category. This means the overall gap is not an artifact of promotion concentration in low-margin categories.

However, the dataset does not contain discount depth, incremental volume, or customer acquisition data, so it cannot determine whether the margin reduction is offset by higher volume.

## What this means

The business has a healthy 31.75% overall margin, but the mix matters:
- **Oils** drives revenue but drags margin. If Oils volume is driven by a high-volume, low-margin product strategy, that's fine — but the margin gap vs. other categories (27.54% vs. 41.61% for Canned Goods) is worth understanding.
- **Canned Goods** has the highest margin and could be a candidate for commercial focus, but its absolute revenue is the smallest.
- **May vs. September:** the seasonal swing is large enough to warrant investigation. Is May driven by a specific product, region, or channel? Is September affected by stockouts, competition, or reduced demand?
- **Promotions consistently reduce margin** by 4-6 percentage points across all categories. The question is whether the lost margin is recovered through incremental volume. Without volume elasticity data, the answer is unknown — which means increasing promotion intensity is a bet, not a calculated decision.

## Recommended next steps

1. Review pricing, cost structure, or product mix for the Oils category — its revenue leadership comes with the lowest margin.
2. Investigate drivers behind Canned Goods' strong margin and assess transferability.
3. Analyze May vs. September in detail (product mix, channel mix, regional contribution) to identify repeatable patterns.
4. Evaluate promotional mechanics: what discount depth is applied, what incremental volume does it generate, and what is the net margin impact? Compare promotion performance by product and channel.
5. Use regional and channel performance to prioritize commercial attention.

*Dataset: synthetic. Findings are descriptive and should not be interpreted as causal conclusions.*
