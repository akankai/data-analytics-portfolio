# Statistical Analysis — AgriFood Sales & Demand Analysis

## Promotion margin comparison

The dataset contains a `Promotion` flag (Yes/No) for each transaction, along with revenue and cost. The analysis compares the profit margin of promoted transactions against non-promoted transactions to assess whether there is a statistically significant difference.

**Hypotheses:**
- H₀: The distribution of profit margin is the same for promoted and non-promoted transactions.
- H₁: The distribution of profit margin differs between promoted and non-promoted transactions.

**Significance threshold:** α = 0.05 (two-sided).

## Data characteristics

| Group | n (transactions) | Mean Margin | Std Dev | Skewness | Min | Max |
|---|---|---|---|---|---|---|
| Non-promoted | 745 | 36.20% | 5.43% | Right-skewed | ~15% | ~55% |
| Promoted | 255 | 31.44% | 6.16% | Right-skewed | ~12% | ~50% |

The margin distributions are right-skewed (margins are proportions of revenue, bounded at 0%, with a cluster of lower-margin transactions). The standard deviations are similar (5.43% vs. 6.16%), but the promoted group has slightly higher variance and a lower mean.

**Key numbers:**
- Difference in means: 36.20% − 31.44% = **4.76 percentage points**
- Promoted margin: 31.44%
- Non-promoted margin: 36.20%

## Test selection

The margin data is a proportion (profit/revenue), bounded at 0%, and right-skewed. A standard independent-samples t-test assumes normality, which is violated here. However, with large sample sizes (n₁ = 745, n₂ = 255), the Central Limit Theorem means the sampling distribution of the mean is approximately normal, so a **Welch two-sample t-test** (which does not assume equal variances) is defensible for comparing means.

To be robust to the non-normality and boundedness, a **Mann-Whitney U test** (non-parametric, comparing rank distributions) is also performed. This tests whether a randomly selected non-promoted transaction tends to have higher margin than a randomly selected promoted transaction.

Both tests are reported. They ask slightly different questions:
- **Welch t-test:** Is the mean margin different between groups?
- **Mann-Whitney U:** Is the distribution of margin shifted between groups?

## Results

### Welch two-sample t-test

- t statistic = 10.96
- p-value < 0.001 (approximately 0.000000)
- Result: **Statistically significant at α = 0.05**

### Mann-Whitney U test (non-parametric)

- U statistic = 135,601
- p-value < 0.001 (approximately 0.000000)
- Result: **Statistically significant at α = 0.05**

### Effect size

| Measure | Value | Interpretation |
|---|---|---|
| Cohen's d | ~0.85 | Large effect (|d| > 0.8) |
| Rank-biserial r | −0.43 | Medium-to-large effect |

Cohen's d of ~0.85 indicates a **large** standardized difference between the group means. The rank-biserial correlation of −0.43 indicates that a non-promoted transaction has approximately a 71% chance of having higher margin than a promoted transaction (Probability of Superiority = 0.5 + |r|/2 ≈ 0.71).

## Interpretation

1. **The margin difference is statistically significant.** Both the parametric (Welch t) and non-parametric (Mann-Whitney) tests reject the null hypothesis at α = 0.05 with p < 0.001. The probability that this difference arose by chance is extremely low.

2. **The effect size is large, not trivial.** Cohen's d of ~0.85 means the difference is not just statistically detectable — it is practically substantial. The promoted group's mean margin (31.44%) is meaningfully lower than the non-promoted group's mean (36.20%).

3. **Statistical significance does not establish causation.** The dataset does not contain:
   - Discount depth (how much was the promotion discounting the price?)
   - Incremental volume (did promotions generate more units sold?)
   - Customer acquisition (did promotions attract new customers?)
   - Product-mix confounding (are promotions concentrated in certain products?)
   - Channel-mix confounding (are promotions concentrated in certain channels?)

   Therefore, while the margin difference is real and statistically robust, the analysis cannot determine whether the promotion *caused* the lower margin, or whether the lower margin is partially or entirely driven by other factors.

4. **The category-level control (sql/09_promotion_by_category.sql) shows the gap is consistent across all five categories.** Promoted transactions have lower margin than non-promoted in every category (Oils: −5.70 pp, Dairy: −5.35 pp, Grains: −4.26 pp, Beverages: −4.17 pp, Canned Goods: −4.76 pp). This consistency rules out the explanation that the overall gap is driven by promotion concentration in low-margin categories.

5. **The margin reduction of ~4.76 pp is economically meaningful at scale**, but the net business impact depends on whether the lost margin is offset by higher volume. Without volume elasticity data, the net impact is unknown. This means increasing promotion intensity is a bet, not a calculated decision based on this data.

## Summary

The statistical analysis confirms that the observed margin difference between promoted and non-promoted transactions is:
- **Statistically significant** (p < 0.001, both Welch t-test and Mann-Whitney U test)
- **Large in effect size** (Cohen's d ≈ 0.85)
- **Consistent across categories** (significant gap in all 5 categories)

However, the analysis cannot establish that promotions *cause* the lower margin, because the dataset does not contain the variables needed to control for confounding (discount depth, incremental volume, customer acquisition, mix effects beyond category).

The statistically significant result supports the business finding that promoted transactions have lower margins, but the business recommendation must acknowledge that the net impact (margin loss vs. volume gain) is unknown without additional data.
