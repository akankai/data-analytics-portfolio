# Project 01 — Manufacturing Quality & Defect Analysis

## 1. Business Problem

A chocolate manufacturing company wants to understand its production quality performance after management noticed persistent defects in finished production.

The objective is not only to report how many defects occurred, but to determine **where quality problems are concentrated and which production factors deserve further investigation**.

## 2. Objectives

- Monitor production and quality KPIs.
- Track defect-rate evolution over time.
- Compare defect rates across products and machines.
- Investigate relationships between defects and process-quality measurements.
- Compare machine performance within each product to avoid misleading aggregate conclusions.
- Produce a management-oriented Power BI dashboard.
- Formulate evidence-based recommendations without confusing correlation with causation.

## 3. Dataset

The project uses a synthetic batch-level manufacturing dataset supplied as an uncleaned Excel workbook.

The uploaded workbook contains **460 production records** and 12 variables. The complete source workbook is documented in [`data/`](data/) and was inspected for missing values and data types.

Main fields:

| Field | Description |
|---|---|
| Date | Production date |
| Product | Chocolate product |
| Batch | Unique production batch |
| Production_Qty | Units produced |
| Defects | Defective units |
| Humidity_pct | Product humidity (%) |
| Fat_pct | Fat content (%) |
| Viscosity | Viscosity measurement |
| Fineness_um | Particle fineness (µm) |
| Production_Time_h | Production duration (hours) |
| Operator | Production operator |
| Machine | Machine used |

See [`data/data-dictionary.md`](data/data-dictionary.md) for the full data dictionary.

## 4. KPIs

The dashboard uses four core KPIs:

- **Total Production** — total units produced.
- **Good Units** — production minus defective units.
- **Total Defects** — total defective units.
- **Defect Rate** — the primary quality KPI.

### Main KPI

`Defect Rate = Total Defects / Total Production`

The DAX definitions are documented in [`power-bi/dax-measures.md`](power-bi/dax-measures.md).

## 5. Power BI Dashboard

The current Power BI report contains:

- KPI cards for production, good units, defects, and defect rate.
- Monthly defect-rate trend.
- Defect rate by machine.
- Defect rate by product.
- Defect rate versus humidity.
- Defect rate versus fat percentage.
- Defect rate versus viscosity.
- Defect rate versus fineness.
- Machine/product comparison matrix.

## 6. Analysis & Findings

### Overall performance

The current dashboard view reports approximately **232.15K units produced**, **228.32K good units**, **3.82K defects**, and a **1.65% defect rate**.

The monthly trend in the dashboard shows a slight improvement from May through July, with the defect rate falling from roughly 1.66% to 1.57%.

### Product performance

Product defect rates are relatively close to one another. The dashboard places Noir Extrême among the higher defect-rate products and Noir Light among the lower ones.

The important analytical lesson is that a product having a higher fat percentage does **not** by itself demonstrate that fat is causing defects. The fat-versus-defect-rate scatter plot does not show a clear monotonic relationship.

### Machine performance

M03 is the main machine requiring investigation. In the current dashboard comparison it has the highest overall defect rate at approximately **1.84%**, compared with approximately **1.59% for M01** and **1.52% for M02**.

The dashboard's machine/product matrix shows M03 performing worse for most products. In the complete uploaded source workbook, M03 is also the highest-rate machine for every product, which strengthens the case for investigating M03. This difference is useful because it exposes an important portfolio-quality issue: **the PBIX report and the full source workbook should be synchronized before final publication**.

The analysis does **not** claim that M03 causes the defects. Machine condition, calibration, operating conditions, product mix, and other process variables still need to be investigated.

### Process parameters

The exploratory scatter plots show:

- **Fat %:** no clear relationship with defect rate.
- **Viscosity:** no clear relationship with defect rate.
- **Fineness:** no clear relationship with defect rate.
- **Humidity:** a possible relationship worth further statistical investigation, but not enough evidence to claim causation.

## 7. Recommendations

1. **Prioritize M03 for quality investigation** — inspect calibration, maintenance history, operating conditions, and recent interventions.
2. **Compare M03 against M01/M02 within the same product** before attributing defects to the machine itself.
3. **Monitor humidity more closely** because the exploratory analysis suggests it may warrant further investigation.
4. **Do not target fat, viscosity, or fineness as root causes based only on visual correlation.**
5. **Continue monitoring the monthly defect rate** to determine whether the recent improvement is sustained.
6. **Collect additional operational variables** such as temperature, maintenance events, shift, raw-material lot, and machine settings for a stronger root-cause analysis.
7. **Synchronize the PBIX model with the complete source workbook** before publishing final KPI numbers.

## 8. Limitations

- The dataset is synthetic and intended for portfolio demonstration.
- The analysis is observational; it cannot establish causation.
- Some process variables may be correlated with product type, creating potential confounding.
- The current PBIX dashboard appears to use a report view/subset that does not match the complete 460-row workbook totals. Final published figures should therefore be recalculated after refreshing the Power BI model from the source workbook.

## 9. Tools

- Microsoft Excel
- Power BI
- DAX

## 10. Project Files

- `data/` — dataset documentation and data dictionary.
- `power-bi/` — Power BI documentation and DAX measures.
- `analysis/` — methodology, findings, and recommendations.
- `assets/` — dashboard screenshots and presentation visuals.

The working PBIX and source Excel are also associated with the Project 01 GitHub release.
