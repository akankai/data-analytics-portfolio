# Methodology

## 1. Business question

The project asks: **Where are production efficiency losses occurring, and which operational dimensions should be investigated first?**

## 2. Data preparation

The source workbook contains 500 synthetic batch-level records. Data validation was performed before modeling:

- Checked row count and field types.
- Confirmed the expected categorical dimensions: 5 products, 4 machines, 3 shifts and 8 operators.
- Checked for missing values and duplicate batch IDs.
- Verified that available time is 8 hours per production record.
- Checked that operating time is consistent with recorded downtime.

## 3. KPI calculations

KPIs are calculated in Power BI using aggregated numerators and denominators rather than averaging row-level percentages. This keeps the measures correct when the report is filtered by month, machine, product or shift.

### OEE (Overall Equipment Effectiveness)

OEE is the product of three component ratios:

- **Availability** = Operating Time / Available Time
- **Performance** = Actual Production / Planned Production
- **Quality** = Good Output / Actual Production
- **OEE** = Availability × Performance × Quality

This decomposition separates the three types of production loss:
- **Availability loss:** downtime and stoppages (machine not running)
- **Performance loss:** running slower than planned or idle time within operating periods
- **Quality loss:** defects and scrap (good output below actual output)

### Yield

`Good Output ÷ Input Quantity`

### Production Efficiency

`Actual Production ÷ Planned Production`

### Waste Rate

`Waste ÷ Input Quantity`

### Machine Utilization

`Operating Time ÷ Available Time`

## 4. Exploratory analysis

The analysis compares KPIs across:

- Machine
- Product
- Shift
- Month

Additional checks use downtime, production gap and energy consumption to identify potential areas for further investigation.

## 5. Dashboard design

The dashboard is organized around five KPI cards followed by operational breakdowns:

1. Monthly efficiency trend
2. Efficiency by machine
3. Efficiency by product
4. Waste rate by machine
5. Machine utilization by machine

This structure moves from **overall performance → time trend → operational comparison → investigation priorities**.

## 6. Interpretation rules

The project distinguishes between:

- **Observation:** a KPI or pattern visible in the data.
- **Investigation priority:** an area that deserves operational follow-up.
- **Root cause:** a causal explanation, which cannot be established from this dataset alone.

This distinction is important because the dataset is synthetic and does not contain maintenance events, downtime reasons or process-setting variables.
