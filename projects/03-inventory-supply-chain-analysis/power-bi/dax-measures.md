# DAX Measures

The source table is named `Inventory_Data`.

## Inventory Value

```DAX
Inventory Value =
SUMX(
    Inventory_Data,
    Inventory_Data[Closing_Stock_units] *
    Inventory_Data[Unit_Cost_MAD]
)
```

## Stockout Rate

```DAX
Stockout Rate =
DIVIDE(
    COUNTROWS(
        FILTER(
            Inventory_Data,
            Inventory_Data[Stockout_Days] > 0
        )
    ),
    COUNTROWS(Inventory_Data),
    0
)
```

## Low Stock Rate

```DAX
Low Stock Rate =
DIVIDE(
    COUNTROWS(
        FILTER(
            Inventory_Data,
            Inventory_Data[Closing_Stock_units]
                < Inventory_Data[Reorder_Point_units]
        )
    ),
    COUNTROWS(Inventory_Data),
    0
)
```

## On-Time Delivery Rate

```DAX
On-Time Delivery Rate =
AVERAGEX(
    Inventory_Data,
    IF(
        Inventory_Data[Late_Delivery] = 0,
        1,
        0
    )
)
```

## Inventory Turnover

```DAX
Inventory Turnover =
DIVIDE(
    SUMX(
        Inventory_Data,
        Inventory_Data[Units_Sold] *
        Inventory_Data[Unit_Cost_MAD]
    ),
    SUMX(
        Inventory_Data,
        DIVIDE(
            Inventory_Data[Opening_Stock_units] +
            Inventory_Data[Closing_Stock_units],
            2
        ) *
        Inventory_Data[Unit_Cost_MAD]
    ),
    0
)
```

## Formatting

- Inventory Value: currency / MAD, displayed in millions where appropriate
- Stockout Rate: percentage
- Low Stock Rate: percentage
- On-Time Delivery Rate: percentage
- Inventory Turnover: decimal ratio (×)

The percentage measures should be formatted as **Percentage** in Power BI rather than multiplying the DAX results by 100.
