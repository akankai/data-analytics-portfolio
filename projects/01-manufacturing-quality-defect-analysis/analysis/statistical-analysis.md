# Statistical Analysis — Manufacturing Quality & Defect Analysis

## Approach

The dataset contains **460 batch-level records** with 4 quality parameters (humidity, fat percentage, viscosity, fineness) and a defect rate for each batch. The statistical analysis investigates whether any of these parameters show a systematic association with defect rate, and whether the machine-level defect rate differences are statistically distinguishable.

**Significance threshold:** α = 0.05 (two-sided).

**Hypotheses tested:**
1. **Quality parameter associations:** H₀: no linear (Pearson) or monotonic (Spearman) association between each quality parameter and batch-level defect rate.
2. **Machine differences:** H₀: mean defect rate is equal across the three machines (one-way ANOVA).

## Data characteristics

| Parameter | Mean | Std Dev | Skewness | Min | Max |
|---|---|---|---|---|---|
| Defect Rate | 1.63% | ~0.36% | Slight right skew | ~0.5% | ~3.0% |
| Humidity (%) | ~0.75 | ~0.26 | Approx. symmetric | ~0.3 | ~1.2 |
| Fat (%) | ~35.0 | ~4.0 | Approx. symmetric | ~28 | ~42 |
| Viscosity | ~6600 | ~350 | Approx. symmetric | ~6000 | ~7200 |
| Fineness (µm) | ~18.0 | ~1.2 | Approx. symmetric | ~16 | ~20 |

All four quality parameters are approximately normally distributed (low skewness). The defect rate is bounded at 0% and shows slight right skew, but with n=460 the Central Limit Theorem supports using parametric tests for group comparisons.

## Correlation analysis — quality parameters vs defect rate

Because both the quality parameters and the defect rate are continuous, **Pearson correlation** (linear) and **Spearman rank correlation** (monotonic, non-parametric) were calculated for each parameter.

### Results

| Parameter | Pearson r | 95% CI (Fisher) | p-value | Spearman ρ | p-value | Significant at α=0.05? |
|---|---|---|---|---|---|---|
| Humidity (%) | −0.043 | [−0.964, 0.958] | 0.358 | −0.050 | 0.289 | No |
| Fat (%) | −0.043 | [−0.964, 0.958] | 0.361 | −0.045 | 0.332 | No |
| Viscosity | −0.117 | [−0.969, 0.951] | **0.012** | −0.120 | **0.010** | **Yes** |
| Fineness (µm) | −0.021 | [−0.963, 0.960] | 0.660 | −0.009 | 0.843 | No |

### Interpretation

- **Viscosity shows a statistically significant negative association with defect rate** (Pearson r = −0.117, p = 0.012; Spearman ρ = −0.120, p = 0.010). The association is consistent across both parametric and non-parametric tests.
- **However, the effect size is very small.** |r| = 0.117 explains approximately 1.4% of the variance in defect rate (R² = 0.014). This is statistically significant with n = 460, but it has **no practical significance** for operational decision-making. A batch with viscosity at the 90th percentile vs. the 10th percentile would be expected to have a defect rate difference of less than 0.1 percentage points.
- **Humidity, fat percentage, and fineness show no statistically significant association** with defect rate (all p > 0.05). The confidence intervals for these correlations are wide, reflecting the small effect sizes.
- The Pearson and Spearman results are consistent, suggesting the associations (or lack thereof) are not driven by outliers or non-normality in the data.

### Important caveats

1. **Statistical association ≠ causation.** Even the statistically significant association between viscosity and defect rate does not mean viscosity causes defects. It could reflect a third variable (e.g., a specific product that happens to have both higher viscosity and lower defect rates under certain machine conditions).
2. **Batch-level, not causal.** These correlations are calculated at the batch level. They do not control for machine, product, operator, or production-time confounding. A multivariable analysis would be needed to isolate any independent effect.
3. **No correction for multiple comparisons.** Four parameters were tested. If a Bonferroni correction were applied (α = 0.05/4 = 0.0125), the viscosity result (p = 0.012) would be borderline and might not survive correction. The finding should be treated as exploratory, not confirmatory.

## Machine-level comparison (ANOVA)

A one-way ANOVA was performed to test whether the mean defect rate differs significantly across the three machines.

| Machine | n (batches) | Mean Defect Rate | Std Dev |
|---|---|---|---|
| M01 | 152 | 1.58% | 0.35% |
| M02 | 156 | 1.49% | 0.33% |
| M03 | 152 | 1.82% | 0.43% |

**ANOVA result:** F(2, 457) = 31.04, p < 0.001

### Interpretation

The ANOVA is statistically significant at α = 0.05, indicating that the mean defect rate differs across machines. **M03 has the highest mean defect rate (1.82%), and the differences are statistically distinguishable from M01 (1.58%) and M02 (1.49%).**

However, this result must be interpreted carefully:

1. **The statistical significance reflects the large sample size (n = 460), not a large practical difference.** The between-machine difference (M03 vs. M02) is approximately 0.33 percentage points. While statistically detectable, this is a modest absolute difference.
2. **ANOVA does not identify the cause of the difference.** It only indicates that the group means are not all equal. The reason M03 has a higher defect rate is not established by this analysis.
3. **Product mix complicates the comparison.** M03 has the highest defect rate for 4 of 5 products, but the product-to-machine assignment in this synthetic dataset may not reflect a real production layout. The ANOVA result is a signal for investigation, not proof of a machine-specific quality problem.
4. **Within-machine variance is larger than between-machine variance** in absolute terms, meaning individual batch-to-batch variation dominates the machine-level averages. This is typical for manufacturing data and reinforces the need for larger samples and process-level investigation.

## Summary

- **Viscosity is the only quality parameter with a statistically significant association with defect rate (p = 0.012), but the effect is very weak (r = −0.117, R² = 1.4%) and has no practical significance.**
- **Humidity, fat percentage, and fineness show no statistically significant association.**
- **Machine-level defect rates are statistically distinguishable (ANOVA p < 0.001), with M03 showing the highest mean defect rate.**
- **None of these results establish causation.** They are signals for investigation, not findings about root causes.

The statistically significant viscosity association is reported here because the user specifically asked for statistical testing. In the broader business context, it is not actionable — the 1.4% variance explanation means viscosity is not a useful predictor of defect rate for operational purposes. The machine-level difference, while also modest in absolute terms, is more relevant for prioritization because it points to a specific machine for investigation.
