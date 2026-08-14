# DAX Measures

Assuming the source table is named `Production_Data`:

```DAX
Total Production =
SUM(Production_Data[Production_Qty])
```

```DAX
Total Defects =
SUM(Production_Data[Defects])
```

```DAX
Good Units =
[Total Production] - [Total Defects]
```

```DAX
Defect Rate =
DIVIDE(
    [Total Defects],
    [Total Production],
    0
)
```

`Defect Rate` should be formatted as a percentage in Power BI.
