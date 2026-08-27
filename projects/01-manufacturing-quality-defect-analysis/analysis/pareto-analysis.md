# Pareto Analysis — Manufacturing Quality & Defect Analysis

## Purpose

Pareto analysis identifies which categories account for the largest share of defects, so that quality improvement efforts can be prioritized. The analysis is performed at three levels: machine, product, and operator.

**Methodology:** Defects are sorted in descending order, and cumulative percentages are calculated. The goal is to identify the categories responsible for the largest share of total defects — not to force an 80/20 result.

## Defects by machine

| Rank | Machine | Defects | % of Total | Cumulative % |
|---|---|---|---|---|
| 1 | M03 | 3,226 | 37.1% | 37.1% |
| 2 | M01 | 2,772 | 31.9% | 69.0% |
| 3 | M02 | 2,691 | 31.0% | 100.0% |

**Observation:** M03 and M01 together account for **69.0%** of all defects. M03 alone accounts for **37.1%**. This is a moderately concentrated distribution — the top 2 of 3 machines (67%) account for 69% of defects.

**Implication:** M03 is the single largest source of defects and the first priority for investigation. M01 is the second priority. M02, despite having the lowest defect rate, still accounts for 31.0% of total defects because it produces a comparable volume.

## Defects by product

| Rank | Product | Defects | % of Total | Cumulative % |
|---|---|---|---|---|
| 1 | Noir Extrême | 2,281 | 26.3% | 26.3% |
| 2 | Noir Gourmand | 1,755 | 20.2% | 46.4% |
| 3 | Noir Corsé | 1,680 | 19.3% | 65.8% |
| 4 | Lait Suprême | 1,548 | 17.8% | 83.6% |
| 5 | Noir Light | 1,425 | 16.4% | 100.0% |

**Observation:** The distribution is relatively even across products — the top 3 products account for **65.8%** of defects, and the top 4 account for **83.6%**. No single product dominates.

**Implication:** Product-level defect concentration is modest. The defects are spread across all five products, which means a product-specific quality issue is less likely than a machine- or process-level issue. However, Noir Extrême (26.3%) and Noir Gourmand (20.2%) together account for 46.4% of defects, making them the products to monitor most closely if machine-level investigation confirms product-specific patterns.

## Defects by operator

| Rank | Operator | Defects | % of Total | Cumulative % |
|---|---|---|---|---|
| 1 | OP02 | 1,990 | 22.9% | 22.9% |
| 2 | OP04 | 1,842 | 21.2% | 44.1% |
| 3 | OP01 | 1,766 | 20.3% | 64.4% |
| 4 | OP05 | 1,701 | 19.6% | 84.0% |
| 5 | OP03 | 1,390 | 16.0% | 100.0% |

**Observation:** The operator distribution is the most even of the three — the top 2 operators account for **44.1%** of defects, and the top 3 account for **64.4%**. No operator dominates.

**Implication:** Operator-level defect concentration is weak. The differences between operators (22.9% vs. 16.0% for the top and bottom) are modest. This suggests that operator-specific factors are not the primary driver of defects, though individual operator practices (setup, handling, quality checks) could still be a contributing factor worth investigating alongside machine conditions.

## Pareto summary

| Dimension | Top 2 share | Top 3 share | Concentration |
|---|---|---|---|
| Machine | 69.0% | — | Moderate (2 of 3) |
| Product | 46.4% | 65.8% | Low-moderate (spread across 5) |
| Operator | 44.1% | 64.4% | Low (spread across 5) |

The strongest concentration is at the **machine level**, where M03 and M01 together account for 69.0% of defects. This reinforces the finding from the defect-rate segmentation that M03 is the primary investigation priority.

## How this supports the business recommendations

The Pareto analysis directly supports the prioritization in the business recommendations:

1. **M03 is the top priority** — it accounts for 37.1% of all defects and has the highest defect rate (1.84%). Pareto confirms that focusing on M03 addresses the largest single source of defects.
2. **M01 is the secondary priority** — 31.9% of defects. After M03, M01 offers the next-largest improvement opportunity.
3. **Product-level Pareto shows no single product dominates**, which means product-specific changes are less likely to yield large improvements than machine-level investigation. The recommendations correctly prioritize machines over products.
4. **Operator-level Pareto shows weak concentration**, which means operator-specific interventions (training, assignment changes) are lower priority than machine-level investigation. The recommendations correctly do not lead with operator changes.
