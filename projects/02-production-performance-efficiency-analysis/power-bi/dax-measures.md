# DAX Measures

The source table is named `Production_Data`.

```DAX
Total Production =
SUM(Production_Data[Actual_Production_kg])
```

```DAX
Yield % =
DIVIDE(
    SUM(Production_Data[Good_Output_kg]),
    SUM(Production_Data[Input_Quantity_kg]),
    0
)
```

```DAX
Production Efficiency % =
DIVIDE(
    SUM(Production_Data[Actual_Production_kg]),
    SUM(Production_Data[Planned_Production_kg]),
    0
)
```

```DAX
Waste Rate % =
DIVIDE(
    SUM(Production_Data[Waste_kg]),
    SUM(Production_Data[Input_Quantity_kg]),
    0
)
```

```DAX
Machine Utilization % =
DIVIDE(
    SUM(Production_Data[Operating_Time_h]),
    SUM(Production_Data[Available_Time_h]),
    0
)
```

```DAX
Availability % =
DIVIDE(
    SUM(Production_Data[Operating_Time_h]),
    SUM(Production_Data[Available_Time_h]),
    0
)
```

```DAX
Performance % =
DIVIDE(
    SUM(Production_Data[Actual_Production_kg]),
    SUM(Production_Data[Planned_Production_kg]),
    0
)
```

```DAX
Quality % =
DIVIDE(
    SUM(Production_Data[Good_Output_kg]),
    SUM(Production_Data[Actual_Production_kg]),
    0
)
```

```DAX
OEE % =
[Availability %] * [Performance %] * [Quality %]
```

All percentage measures should be formatted as **Percentage** in Power BI.

**Note:** OEE % multiplies the three component measures. Because Power BI evaluates measures in context, this works correctly when filtered by machine, product, shift, or month. The three components are also available as standalone KPIs for loss-driver analysis.

## Modeling note

The measures intentionally divide aggregated quantities rather than averaging row-level ratios. This makes the KPIs respond correctly to report filters and different aggregation levels.
