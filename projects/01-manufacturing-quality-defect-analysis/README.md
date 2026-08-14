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

The uploaded workbook contains **460 production records** and the following fields:

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

The dashboard contains:

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

The dashboard currently reports approximately **232.15K units produced**, **228.32K good units**, **3.82K defects**, and a **1.65% defect rate** for the report view.

The monthly trend shows a slight improvement from May through July, with the defect rate falling from roughly 1.66% to 1.57% in the dashboard view.

### Product performance

Product defect rates are relatively close to one another. Noir Extrême appears among the highest-performing-risk products in the dashboard, while Noir Light has the lowest defect rate.

The important analytical lesson is that a product having a higher fat percentage does **not** by itself demonstrate that fat is causing defects. The fat-versus-defect-rate scatter plot does not show a clear monotonic relationship.

### Machine performance

M03 is the main machine requiring investigation. In the dashboard comparison it has the highest overall defect rate at approximately **1.84%**, compared with approximately **1.59% for M01** and **1.52% for M02**.

More importantly, M03 shows the highest defect rate for most products in the machine/product matrix. This makes the M03 signal more meaningful than simply observing that M03 has the highest aggregate defect rate.

However, the analysis does **not** claim that M03 causes the defects. Machine condition, calibration, operating conditions, product mix, and other process variables still need to be investigated.

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

## 8. Limitations

- The dataset is synthetic and intended for portfolio demonstration.
- The current analysis is observational; it cannot establish causation.
- Some process variables may be correlated with product type, creating potential confounding.
- The dashboard view and source workbook should be kept synchronized before publishing final KPI figures.

## 9. Tools

- Microsoft Excel
- Power BI
- DAX

## 10. Project Files

- `data/` — dataset documentation and data dictionary.
- `power-bi/` — Power BI documentation and DAX measures.
- `analysis/` — methodology, findings, and recommendations.
- `assets/` — dashboard screenshots and presentation visuals.
