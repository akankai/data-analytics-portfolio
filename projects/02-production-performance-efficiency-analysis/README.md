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

The dataset contains **500 batch-level production records** across:

- 5 chocolate products
- 4 machines
- 3 shifts
- 8 operators
- January–December 2025

Key fields include planned production, actual production, input quantity, good output, waste, downtime, available time, operating time and energy consumption.

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
|---|---:|
| Total Production | **550,695 kg** |
| Planned Production | **586,622 kg** |
| Production Gap | **−35,927 kg** |
| Yield | **92.07%** |
| Production Efficiency | **93.88%** |
| Waste Rate | **3.06%** |
| Machine Utilization | **94.27%** |
| Total Downtime | **13,753.8 min** |
| Energy Consumption | **60,250.2 kWh** |

## Dashboard

![Production Performance Dashboard](assets/production-performance-dashboard.png)

The dashboard provides:

- KPI cards for production, yield, efficiency, waste and utilization.
- Monthly production-efficiency trend.
- Efficiency by machine.
- Efficiency by product.
- Waste rate by machine.
- Machine utilization by machine.

## Key findings

1. **M03 is the main operational priority.** It has the lowest machine efficiency (**93.18%**) and lowest utilization (**92.27%**), while also recording the highest downtime (**4,823.5 min**). This combination makes it the first machine to investigate.
2. **M04 has the highest waste rate at 3.19%.** Its utilization is relatively high (**94.75%**), so the issue is not simply lack of machine usage; input/output losses should be investigated separately.
3. **May is the weakest month for efficiency at 92.98%,** while December is the strongest at **95.18%**. The monthly pattern suggests that production performance varies over time and merits operational investigation.
4. **Noir Extrême has the lowest product-level efficiency at 92.98%.** The difference between products is relatively small, so product effects should be considered alongside machine assignment and operating conditions.
5. **The morning shift has the highest waste rate at 3.21%.** This makes it a useful area for a deeper process or startup analysis.
6. **Overall production is 35,927 kg below plan.** The 93.88% efficiency KPI shows that the operation produced about 94% of planned volume over the period.

## Interpretation and limitations

The dashboard identifies where performance differs, but it does not establish root cause or causality. For example, M03's lower efficiency coincides with higher downtime, but the synthetic dataset does not contain maintenance events, process settings or other causal variables needed to prove that downtime caused the efficiency gap.

Correlation checks also show that downtime has only a weak linear relationship with production gap in this synthetic dataset. Energy consumption is strongly associated with production volume, which is expected because higher production requires more energy; this should not be interpreted as a causal driver of performance.

## Recommendations

1. Prioritize M03 for maintenance, calibration and operating-condition review.
2. Investigate M04 waste separately from utilization to identify material or process losses.
3. Review May's production conditions and compare them with the stronger December period.
4. Analyze product-machine combinations before changing product-level processes.
5. Review morning-shift startup, setup and operating practices because of the higher waste rate.
6. In a real deployment, enrich the dataset with maintenance events, downtime reasons, process settings, raw-material lots and shift-level context.

## Tools

- **Microsoft Excel** — source data and validation
- **Microsoft Power BI** — data modeling and dashboarding
- **DAX** — KPI measures and interactive analysis

## Project documentation

- [Analysis findings](analysis/findings.md)
- [Methodology](analysis/methodology.md)
- [Data dictionary](data/data-dictionary.md)
- [Data notes](data/README.md)
- [Dashboard documentation](power-bi/dashboard.md)
- [DAX measures](power-bi/dax-measures.md)
- [Power BI project notes](power-bi/README.md)
- [Dashboard assets](assets/README.md)
