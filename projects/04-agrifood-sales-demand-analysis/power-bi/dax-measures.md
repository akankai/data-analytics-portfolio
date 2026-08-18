# DAX Measures

Assuming the source table is named `sales_data`:

```DAX
Total Revenue =
SUM(sales_data[Revenue_MAD])

Total Cost =
SUM(sales_data[Cost_MAD])

Total Profit =
SUM(sales_data[Profit_MAD])

Profit Margin =
DIVIDE(
    [Total Profit],
    [Total Revenue],
    0
)

Total Units Sold =
SUM(sales_data[Units_Sold])

Average Order Value =
DIVIDE(
    [Total Revenue],
    DISTINCTCOUNT(sales_data[Order_ID]),
    0
)

Promoted Revenue =
CALCULATE(
    [Total Revenue],
    sales_data[Promotion] = "Yes"
)

Non-Promoted Revenue =
CALCULATE(
    [Total Revenue],
    sales_data[Promotion] = "No"
)

Promoted Profit Margin =
DIVIDE(
    CALCULATE([Total Profit], sales_data[Promotion] = "Yes"),
    CALCULATE([Total Revenue], sales_data[Promotion] = "Yes"),
    0
)

Non-Promoted Profit Margin =
DIVIDE(
    CALCULATE([Total Profit], sales_data[Promotion] = "No"),
    CALCULATE([Total Revenue], sales_data[Promotion] = "No"),
    0
)
```

`Profit Margin`, `Promoted Profit Margin` and `Non-Promoted Profit Margin` should be formatted as percentages in Power BI.
