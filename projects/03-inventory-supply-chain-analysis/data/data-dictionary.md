# Data Dictionary

| Field | Description | Unit / Type |
|---|---|---|
| Date | Inventory observation date/time | DateTime |
| Product | Product identifier/name | Text |
| Category | Product category | Text |
| Supplier | Supplier associated with the record | Text |
| Warehouse | Warehouse location | Text |
| Opening_Stock_units | Stock available at the start of the observation | Units |
| Units_Received | Quantity received during the observation | Units |
| Units_Sold | Quantity sold during the observation | Units |
| Closing_Stock_units | Stock remaining at the end of the observation | Units |
| Reorder_Point_units | Stock threshold used for replenishment | Units |
| Stockout_Days | Number of stockout days recorded | Days |
| Lead_Time_Days | Supplier lead time | Days |
| Unit_Cost_MAD | Unit inventory cost | MAD/unit |
| Orders_Placed | Number of orders placed | Count |
| Late_Delivery | Late-delivery indicator (0/1) | Binary |

## Derived measures

- Inventory Value
- Stockout Rate
- Low Stock Rate
- On-Time Delivery Rate
- Inventory Turnover
