# Illustrative Cost of Quality Model

## Purpose

This model estimates the **illustrative cost of defects** based on the synthetic production data. It is not a real cost analysis — the cost per defective unit is an assumed parameter, and all resulting cost figures are illustrative.

**This model is included to demonstrate how an analyst would structure a cost-of-quality analysis when real cost data becomes available.**

## Assumption

**Cost per defective unit: variable** (sensitivity analysis at 10, 25, and 50 MAD per defective unit).

These values are chosen as illustrative ranges for a chocolate manufacturing context:
- **10 MAD/unit:** low-end estimate (minor defect, rework cost only)
- **25 MAD/unit:** mid-range estimate (scrap cost + some rework)
- **50 MAD/unit:** high-end estimate (scrap + rework + potential customer-return exposure)

**These are not actual company costs.** They are sensitivity parameters chosen to show how the analysis would work with different cost assumptions.

## Total defects

- **Total defects in dataset:** 8,689 defective units (from 532,362 total units produced)
- **Overall defect rate:** 1.63%

## Cost estimates by scenario

### At 10 MAD per defective unit

| Machine | Defects | Illustrative Cost | % of Total |
|---|---|---|---|
| M03 | 3,226 | 32,260 MAD | 37.1% |
| M01 | 2,772 | 27,720 MAD | 31.9% |
| M02 | 2,691 | 26,910 MAD | 31.0% |
| **Total** | **8,689** | **86,890 MAD** | **100%** |

### At 25 MAD per defective unit

| Machine | Defects | Illustrative Cost | % of Total |
|---|---|---|---|
| M03 | 3,226 | 80,650 MAD | 37.1% |
| M01 | 2,772 | 69,300 MAD | 31.9% |
| M02 | 2,691 | 67,275 MAD | 31.0% |
| **Total** | **8,689** | **217,225 MAD** | **100%** |

### At 50 MAD per defective unit

| Machine | Defects | Illustrative Cost | % of Total |
|---|---|---|---|
| M03 | 3,226 | 161,300 MAD | 37.1% |
| M01 | 2,772 | 138,600 MAD | 31.9% |
| M02 | 2,691 | 134,550 MAD | 31.0% |
| **Total** | **8,689** | **434,450 MAD** | **100%** |

## Key observations

1. **The cost distribution mirrors the defect distribution.** Because the model applies a uniform cost per defective unit, the cost share by machine is identical to the defect share. M03 accounts for 37.1% of both defects and illustrative cost across all three scenarios.

2. **M03's illustrative cost ranges from 32,260 MAD to 161,300 MAD** depending on the cost assumption. This range demonstrates why real cost data matters: the financial priority of investigating M03 depends heavily on the actual cost per defect.

3. **The cost concentration is moderate.** M03 + M01 together account for 69.0% of illustrative cost. This is the same concentration as the Pareto analysis — the cost model does not change the prioritization, it quantifies it.

4. **The sensitivity analysis shows the value of knowing the real cost.** If the actual cost per defective unit is 10 MAD, the total cost of defects is 86,890 MAD — modest enough that investigation might be deprioritized against other operational demands. If it is 50 MAD, the cost is 434,450 MAD — substantial enough to warrant immediate investigation.

## What this model does not include

A complete cost-of-quality analysis would also include:

- **Cost of rework** (separate from scrap cost per defective unit)
- **Cost of customer returns** (if defective units reach customers)
- **Cost of inspection** (to detect defects)
- **Cost of downtime** caused by quality issues
- **Cost of lost customer trust** (not directly quantifiable)
- **Prevention costs** (quality control systems, training, process controls)

These are not included because the dataset does not contain rework, return, inspection, or prevention data. The model is intentionally limited to a single illustrative cost parameter.

## How to use this in a real context

In a real production environment, the analyst would:

1. Obtain actual cost data from finance/operations: scrap cost per unit, rework labor cost, customer-return cost.
2. Replace the sensitivity parameter with the actual cost.
3. Calculate actual cost of quality by machine, product, and shift.
4. Prioritize improvement investments based on actual cost, not assumed cost.
5. Track cost of quality over time to measure the impact of quality improvements.

For this portfolio project, the sensitivity analysis demonstrates the analytical approach without requiring real cost data.
