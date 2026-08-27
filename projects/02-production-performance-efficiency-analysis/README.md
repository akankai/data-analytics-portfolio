# Project 02 — Production Performance & Efficiency Analysis

## Overview

A food manufacturing operation wants to understand how efficiently it converts planned production capacity and raw inputs into good output. The analysis focuses on production efficiency, yield, waste and machine utilization, then breaks performance down by month, machine, product and shift.

This project demonstrates an end-to-end **Excel → Power BI → DAX** workflow using a synthetic manufacturing dataset.

> **Dataset note:** The data is synthetic and was created specifically for this portfolio project. It does not represent confidential or real company production data.

## Business objectives

- Measure overall production performance.
- Compare actual production with planned production.
- Monitor yield and production waste.
- Measure machine utilization.
- Identify machines, products, shifts and periods with weaker performance.
- Turn dashboard observations into operational recommendations.

## Dataset

The dataset contains **500 batch-level production records** across 5 chocolate products, 4 machines, 3 shifts and 8 operators during 2025.

See [`data/data-dictionary.md`](data/data-dictionary.md) for field definitions.

## KPI definitions

| KPI | Definition |
|---|---|
| Total Production | Sum of actual production (kg) |
| Yield | Good Output ÷ Input Quantity |
| Production Efficiency | Actual Production ÷ Planned Production |
| Waste Rate | Waste ÷ Input Quantity |
| Machine Utilization | Operating Time ÷ Available Time |

## Overall results

| KPI | Result |
|---|---|
| Total Production | **550,695 kg** |
| Planned Production | **586,622 kg** |
| Production Gap | **−35,927 kg** |
| Yield | **92.07%** |
| Production Efficiency | **93.88%** |
| Waste Rate | **3.06%** |
| Machine Utilization | **94.27%** |
| Total Downtime | **13,753.8 min** |
| Energy Consumption | **60,250.2 kWh** |
| **OEE** (Availability × Performance × Quality) | **86.29%** |

### OEE breakdown
- **Availability:** 94.27% (operating time / available time)
- **Performance:** 93.88% (actual production / planned production)
- **Quality:** 97.50% (good output / actual production)
- **Overall OEE:** 86.29% — meaning roughly 13.7% of planned good output is lost to the combined effect of downtime, under-performance, and defects.

## Dashboard

![Production Performance Dashboard](assets/production-performance-dashboard.svg)

## Key findings

1. **M03 is the main operational priority:** lowest OEE (**83.8%** vs. 87.4% for M02), lowest efficiency (**93.18%**) and utilization (**92.27%**), plus the highest downtime (**4,823.5 min**, 35.1% of total). M03's OEE loss of ~25,227 kg of potential good output is the largest of any machine.

2. **M04 has the highest waste rate at 3.19%.** Its utilization remains relatively high, so waste should be investigated separately from machine usage. Its OEE (86.3%) is closer to the average than M03's.

3. **May is the weakest month for efficiency at 92.98%** (OEE 85.8%), while December is strongest at 95.18% efficiency (OEE 87.5%).

4. **Noir Extrême has the lowest product-level efficiency at 92.98%.**

5. **The morning shift has the highest waste rate at 3.21%.**

6. **Overall OEE is 86.29%**, meaning 13.71% of planned good output is lost. Availability (94.27%) and Performance (93.88%) are the larger loss drivers than Quality (97.50%), which means the biggest improvement opportunity is in reducing downtime and closing the actual-to-planned production gap, not in reducing defects (which are already at a relatively low 2.5% loss rate).

7. Overall actual production is **35,927 kg below plan**, corresponding to **93.88% production efficiency**.

## Interpretation and limitations

The dashboard identifies performance differences and investigation priorities; it does not establish root cause. The synthetic dataset does not contain maintenance events, downtime reason codes or process-setting variables needed to prove causality.

## Business recommendations

These recommendations follow the structure: **Data → Finding → Interpretation → Recommended Action → Illustrative Impact → Validation**.

### Recommendation 1: Prioritize M03 for maintenance, calibration, and operating-condition review

**Data:** M03 has the lowest OEE (83.8%), lowest utilization (92.27%), lowest efficiency (93.18%), and highest downtime (4,823.5 min, 35.1% of total). M03's OEE loss represents approximately 25,227 kg of potential good output — the largest machine-level OEE loss.

**Finding:** M03 is the weakest machine across availability, performance, and overall OEE. The OEE decomposition shows M03's problem is primarily in Availability (utilization) and Performance (efficiency), not Quality (92.05%, comparable to other machines).

**Interpretation:** M03's high downtime (80.39 hours, vs. M02's 50.23 hours) is the primary driver of its OEE gap. Reducing M03's downtime to M02's level would recover approximately 30.16 hours of operating time. At an illustrative downtime cost of 500 MAD/hour, this corresponds to approximately 15,080 MAD in avoided downtime cost — but this is illustrative only.

**Recommended action:** Begin with M03 maintenance history, calibration records, and operating-condition review. Investigate the reasons for the 4,823.5 minutes of downtime: unplanned stops, changeovers, setup time, minor stops. Prioritize the largest downtime categories first. If M03's downtime is concentrated in specific periods (e.g., May, when OEE was weakest at 85.8%), investigate what was different about those periods.

**Illustrative impact:** The OEE loss of ~25,227 kg represents the gap between M03's actual good output and what it would have produced at M02's OEE level. Recovering this gap depends on identifying and resolving the specific downtime causes. The illustrative downtime cost saving (15,080 MAD) assumes the downtime is reduced to M02's level and valued at 500 MAD/hour — both are assumptions, not projections.

**Validation:** After maintenance/calibration actions, re-measure M03's OEE, downtime, and utilization over a comparable period. Compare against the baseline (83.8% OEE, 4,823.5 min downtime). Track whether the OEE improvement is sustained or reverts.

### Recommendation 2: Investigate M04 waste as a separate problem from utilization

**Data:** M04 has the highest waste rate (3.19%) but relatively high utilization (94.75%). Its OEE (86.3%) is closer to average than M03's. M04's waste cost (illustrative ~5,541 MAD at 300 MAD/kg) is the highest of any machine.

**Finding:** M04's problem profile is different from M03's — high utilization but high waste, suggesting material/process losses rather than availability problems.

**Interpretation:** M04 does not need more operating time; it needs better material yield or process control. The waste rate of 3.19% vs. M02's 3.02% may seem small, but at the dataset's production volumes it represents approximately 1,000 kg more waste than M02 (illustrative), which at 300 MAD/kg corresponds to approximately 300,000 MAD more waste cost per the dataset's volume — but this is illustrative and depends on the actual waste volume, which the dataset approximates from the waste rate.

**Recommended action:** Investigate M04's waste causes: raw material quality, process parameters, setup practices, machine calibration for the specific products run on M04. Compare M04's waste rate by product and by shift to identify patterns. If M04 runs different products than other machines, control for product mix before concluding the machine is the issue.

**Illustrative impact:** Reducing M04's waste rate to M02's level (3.02%) would reduce waste by approximately 0.17 percentage points. At the dataset's volumes, this is a modest per-unit improvement but potentially significant in absolute terms. The illustrative waste cost saving is approximately 50,000–100,000 MAD depending on the actual waste volume and cost per kg — but this range is illustrative only.

**Validation:** Re-measure M04's waste rate after process adjustments. Track waste kg (not just rate) over time, since waste rate can be misleading if production volume changes.

### Recommendation 3: Focus improvement efforts on Performance (closing the actual-to-planned gap)

**Data:** OEE decomposition shows Performance (93.88%) is the largest loss driver at 6.12%, followed by Availability (94.27%, 5.73% loss), with Quality (97.50%) being the smallest loss at 2.50%.

**Finding:** The production gap of 35,927 kg is primarily a Performance problem — the operation is not achieving planned output during the time it is actually operating. The correlation between downtime and production gap is weak (−0.02 in this dataset), which means downtime alone does not explain the gap.

**Interpretation:** Focusing only on downtime reduction (Availability) would address 5.73% of the loss but leave the larger Performance loss (6.12%) untouched. The biggest OEE improvement opportunity is in understanding and closing the gap between actual and planned production during operating time. This could be due to speed losses, minor stops, reduced operating speed, or planned production targets that are not achievable under current conditions.

**Recommended action:** Analyze the actual-to-planned gap at the machine-product-shift level. Identify which combinations contribute most to the Performance loss. If the planned production targets are consistently unachievable (actual is always below planned), review whether the targets are realistic. If the gap varies by machine or shift, investigate what conditions correspond to higher vs. lower Performance.

**Illustrative impact:** Improving Performance from 93.88% to 95% (a 1.12 pp improvement) would increase actual production by approximately 6,564 kg (1.12% × 586,622 kg planned), closing about 18% of the 35,927 kg gap. At an illustrative lost-production opportunity cost of 200 MAD/kg, this corresponds to approximately 1,312,800 MAD in recovered opportunity — but this is illustrative only and assumes every kg of recovered production would have generated 200 MAD in margin.

**Validation:** Track Performance over time after any process improvements. Measure whether actual production as a percentage of planned production increases, and whether the increase is sustained.

### Recommendation 4: Investigate what drove December's stronger performance

**Data:** December has the highest efficiency (95.18%) and OEE (87.5%), while May has the lowest efficiency (92.98%) and OEE (85.8%). The 1.7 pp OEE gap between December and May is the largest month-to-month difference.

**Finding:** December performed better than May on both efficiency and OEE. This is a natural comparison: what was different about December that made it stronger?

**Interpretation:** Without additional data (staffing, maintenance schedule, product mix, raw material lots, weather/seasonality for any temperature-sensitive processes), the December-vs-May comparison is a signal for investigation, not an explanation. The dataset does not contain the context needed to explain the difference.

**Recommended action:** If this were operational data, compare December and May on: maintenance events and downtime reasons, staffing levels and shift patterns, product mix (which products were run in each month), raw material lots and suppliers, any process changes or adjustments made between May and December. Identify which factors correlate with the OEE difference, then test whether those factors can be replicated in other months.

**Illustrative impact:** If the factors behind December's stronger performance can be identified and replicated, the 1.7 pp OEE improvement could be applied to other months. At the dataset's overall production level, a 1.7 pp OEE improvement would increase good output by approximately 9,973 kg (1.7% × 586,622 kg). The illustrative financial impact depends on the margin per kg and the cost of implementing the changes — neither is available in this dataset.

**Validation:** After identifying and implementing the repeatable factors, monitor whether OEE in other months improves to December-like levels. Track whether the improvement is sustained or reverts.

### Recommendation 5: Build the operational cost model with real data before prioritizing investments

**Data:** The illustrative cost model shows total operational cost of approximately 7,321,270 MAD, with lost production opportunity cost (7,185,400 MAD) dominating. M03's downtime cost is 40,196 MAD; M04's waste cost is ~5,541 MAD.

**Finding:** The cost model is dominated by the lost production opportunity cost, which is highly sensitive to the assumed margin per kg (200 MAD/kg). The downtime and waste costs are smaller but more directly attributable to specific machines.

**Interpretation:** The illustrative model shows the structure of an operational cost model and the relative magnitude of different cost components. But the actual priority of improvement investments depends on the real cost parameters, the cost of the improvement actions, and the likelihood of success.

**Recommended action:** Replace the illustrative parameters with actual cost data: actual downtime cost (standby labor, lost capacity, maintenance response), actual waste cost (material + processing cost per kg wasted), and actual margin per kg for the lost production opportunity. Calculate the net cost of each improvement action (e.g., cost of maintenance intervention vs. expected downtime reduction). Prioritize investments based on net cost savings, not gross cost illustration.

**Illustrative impact:** With real data, the cost model would convert from an illustration into a decision-support tool. The current model demonstrates the approach; a real model would drive actual investment priorities.

**Validation:** Track actual operational cost over time, by machine and by cost component. Measure whether improvement actions reduce the cost components they target.

### Recommendation 6: Investigate morning-shift waste as a setup/startup issue

**Data:** The morning shift (Matin) has the highest waste rate (3.21%) among the three shifts.

**Finding:** Morning shift waste is the highest, while night shift has the highest efficiency (94.08%).

**Interpretation:** The morning shift's higher waste rate could be related to startup and setup practices — machines may be started up with more trial runs, adjustments, or calibration checks in the morning, generating more waste during the startup period. This is a hypothesis, not a finding — the dataset does not contain setup duration or startup waste data.

**Recommended action:** If this were operational data, investigate morning-shift startup procedures: setup duration, number of startup runs, calibration checks, changeover practices from the previous night's production. Compare morning-shift waste in the first hours of operation vs. later in the shift. If startup waste is the issue, optimize startup procedures to reduce waste during the startup period.

**Illustrative impact:** If morning-shift waste rate were reduced to the afternoon shift level (2.90%), the waste reduction would be 0.31 percentage points. At the dataset's morning-shift volumes, this is a modest per-unit improvement. The illustrative cost saving depends on the actual morning-shift waste volume and cost per kg — neither is available in this dataset.

**Validation:** After adjusting startup procedures, measure morning-shift waste rate over a comparable period. Compare against the baseline (3.21%) and against other shifts.


## Tools

- **Microsoft Excel** — source data and validation
- **Microsoft Power BI** — data modeling and dashboarding
- **DAX** — KPI measures

## Project documentation

- [Analysis findings](analysis/findings.md)
- [Methodology](analysis/methodology.md)
- [Data dictionary](data/data-dictionary.md)
- [Data notes](data/README.md)
- [Dashboard documentation](power-bi/dashboard.md)
- [DAX measures](power-bi/dax-measures.md)
- [Power BI project notes](power-bi/README.md)
- [Dashboard assets](assets/README.md)
- [Operational cost model](analysis/operational-cost-model.md)
- [OEE visualization](analysis/oee-visualization.md)
- [What I learned](analysis/what-i-learned.md)
