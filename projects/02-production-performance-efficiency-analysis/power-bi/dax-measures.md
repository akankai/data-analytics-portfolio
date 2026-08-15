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

All four percentage measures should be formatted as **Percentage** in Power BI.

## Modeling note

The measures intentionally divide aggregated quantities rather than averaging row-level ratios. This makes the KPIs respond correctly to report filters and different aggregation levels.
