# Executive Summary — Inventory & Supply Chain Analysis

## The business question

A retail operation needs to understand inventory value, stockout risk, supplier reliability, and inventory turnover to manage working capital and service levels.

## What the data shows

Across 600 inventory observation records (10 products, 4 categories, 5 suppliers, 3 warehouses, 2025):

| KPI | Value |
|---|---|
| Inventory Value | 1,501,526 MAD |
| Stockout Rate | 4.83% (29 of 600 records) |
| Low Stock Rate | 82.83% (497 of 600 records) |
| On-Time Delivery Rate | 87.00% |
| Inventory Turnover | 0.59× (observed ratio) |

### Key findings

**1. Low-stock exposure is the dominant inventory risk.** 82.83% of records are below their reorder point. This is far higher than the 4.83% stockout rate, meaning most records are below threshold but haven't stocked out yet. This gap suggests either conservative reorder points, demand higher than the policy assumes, or replenishment delays — the data alone cannot distinguish these.

**2. Stockout risk is concentrated.** Canned Peas 400g (13.33%) and Flour 1kg (10.00%) are the clear priorities. Three categories have no stockouts at all (Sugar 1kg, Tomato Sauce 500g).

**3. Supplier reliability is uneven.** Sahara Trading has a 76.52% on-time delivery rate, 15.48 percentage points below Rif Distribution (92.00%). The other three suppliers are in the 88-90% range.

**4. Inventory is concentrated in Casablanca.** Casablanca holds 697,569 MAD (46.5% of total), followed by Rabat (448,498 MAD, 29.9%) and Marrakech (355,460 MAD, 23.7%).

**5. ABC analysis shows moderate concentration.** Olive Oil 1L alone accounts for 28.5% of inventory value. The top four products account for 64.3%.

## What this means

The 82.83% low-stock rate is the headline number — it suggests the replenishment policy may need review. But low stock isn't necessarily bad: it could mean efficient just-in-time replenishment. What matters is whether the low-stock condition leads to stockouts or lost sales. The 4.83% stockout rate suggests that most low-stock situations don't result in stockouts, but the concentration in Canned Peas and Flour is a risk.

Sahara Trading's 76.52% on-time rate is a concrete supplier performance issue. If this supplier is critical to the products with high stockout risk, the two issues may be connected.

The 0.59× turnover ratio is an observed ratio for the dataset period, not an annualized financial KPI. It should be interpreted as "cost-weighted movement relative to average inventory holding" for the observation period.

## Recommended next steps

1. Review reorder points for products with repeated low-stock conditions, starting with Canned Peas 400g and Flour 1kg.
2. Investigate Sahara Trading's late-delivery pattern alongside lead-time variability and purchase-order history.
3. Monitor inventory concentration in Casablanca before reallocating or increasing stock.
4. Add demand forecasts, purchase-order dates, lead-time variability, and promotion/seasonality data to enable proper turnover calculation and stockout prediction.

*Dataset: synthetic. Findings demonstrate an analytics workflow and should not be interpreted as findings about a real operation.*
