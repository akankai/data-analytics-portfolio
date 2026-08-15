# Power BI Project Notes

The dashboard was built in Power BI using the `Production_Data` table from the synthetic Excel workbook.

## Model

A single production fact-style table is sufficient for this portfolio exercise. The model contains batch-level production records and calculated DAX measures for the main KPIs.

## Measures

See [`dax-measures.md`](dax-measures.md).

## Dashboard

See [`dashboard.md`](dashboard.md) for the visual inventory and interpretation.

## Important validation

Machine utilization was validated against the source data. Each record has 8 available hours and an average operating time of about 7.54 hours, giving an overall utilization of approximately **94.27%**.
