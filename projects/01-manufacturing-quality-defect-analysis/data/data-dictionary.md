# Data Dictionary

| Column | Type | Description |
|---|---|---|
| Date | Date | Production date |
| Product | Text | Chocolate product |
| Batch | Text | Unique production batch identifier |
| Production_Qty | Integer | Number of units produced |
| Defects | Integer | Number of defective units |
| Humidity_pct | Decimal | Product humidity percentage |
| Fat_pct | Decimal | Fat content percentage |
| Viscosity | Decimal | Viscosity measurement |
| Fineness_um | Decimal | Particle fineness in micrometers |
| Production_Time_h | Decimal | Production duration in hours |
| Operator | Text | Production operator identifier |
| Machine | Text | Machine identifier |

## Derived metrics

### Good Units

`Good Units = Total Production - Total Defects`

### Defect Rate

`Defect Rate = Total Defects / Total Production`
