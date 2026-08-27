# Analytical Findings — Inventory & Supply Chain Analysis

## Executive summary

The synthetic 2025 inventory dataset contains 600 records. The dashboard highlights a combination of **high low-stock exposure, moderate stockout risk and uneven supplier reliability**.

The most important operational signals are the 82.83% low-stock rate, the 4.83% stockout rate, and the weak 76.52% on-time delivery rate for Sahara Trading.

These observations identify areas for investigation; they do not establish root cause.

## KPI-level results

| KPI | Result |
|---|---:|
| Inventory Value | 1,501,526 MAD |
| Stockout Rate | 4.83% |
| Low Stock Rate | 82.83% |
| On-Time Delivery Rate | 87.00% |
| Inventory Turnover | 0.59× |

## 1. Low-stock exposure is the main inventory risk

497 of the 600 records have closing stock below the configured reorder point, giving a **82.83% low-stock rate**.

This is substantially larger than the 4.83% stockout rate, meaning that many records are below the replenishment threshold without yet recording a stockout.

**Interpretation:** the replenishment policy may be conservative, demand may be consuming stock faster than expected, or reorder points may not reflect current demand patterns. The dataset alone cannot distinguish between these explanations.

## 2. Stockout risk is concentrated in a few products

| Product | Stockout Rate |
|---|---:|
| Canned Peas 400g | 13.33% |
| Flour 1kg | 10.00% |
| Couscous 1kg | 6.78% |
| Milk Powder 500g | 5.08% |
| Pasta 500g | 4.92% |

Canned Peas 400g is the clearest stockout-risk priority.

## 3. Supplier reliability is uneven

| Supplier | On-Time Delivery |
|---|---:|
| Sahara Trading | 76.52% |
| AgroSource | 88.07% |
| Atlas Foods | 89.38% |
| Maghreb Supply | 90.08% |
| Rif Distribution | 92.00% |

Sahara Trading is approximately **15.48 percentage points below** Rif Distribution.

**Interpretation:** supplier service levels should be reviewed alongside lead-time variability and purchase-order history before changing sourcing decisions.

## 4. Inventory is concentrated in Casablanca

| Warehouse | Inventory Value |
|---|---:|
| Casablanca | 697,569 MAD |
| Rabat | 448,498 MAD |
| Marrakech | 355,460 MAD |

Casablanca holds the largest inventory value. This makes it the most important warehouse to monitor for working-capital concentration and potential rebalancing opportunities.

## 5. Category exposure

| Category | Inventory Value | Low Stock Rate |
|---|---:|---:|
| Dry Goods | 669,233 MAD | 79.0% |
| Oils | 428,309 MAD | 82.0% |
| Canned Goods | 266,000 MAD | 87.0% |
| Dairy | 137,984 MAD | 90.0% |

Dry Goods carry the largest inventory value, while Dairy has the highest low-stock rate.

## 6. Inventory turnover

The dashboard reports an **observed inventory turnover ratio of 0.59×** using cost-weighted sold value divided by cost-weighted average inventory based on opening and closing stock.

Because the source is a synthetic observation-level dataset rather than a formal accounting ledger, this should not be interpreted as a standardized annual financial turnover KPI. It represents the ratio of cost-weighted movement to average inventory holding across the 600 observation records.

## 7. ABC inventory classification

An ABC analysis based on inventory value (closing stock × unit cost) shows the concentration of working capital:

| Class | Criteria | Products | Inventory Value | Share |
|---|---|---|---|---|
| **A** | Top ~20% of value | Olive Oil 1L | ~428K MAD | ~28.5% |
| **B** | Next ~30% of value | Basmati Rice 5kg, Milk Powder 500g, Couscous 1kg | ~538K MAD | ~35.8% |
| **C** | Bottom ~50% of value | Canned Tuna 160g, Sugar 1kg, Tomato Sauce 500g, Pasta 500g, Flour 1kg, Canned Peas 400g | ~536K MAD | ~35.7% |

**Interpretation:** A single product (Olive Oil 1L) accounts for 28.5% of total inventory value, making it the single most important item for working-capital management. The next three products bring the top four items to 64.3% of total value. This is a moderately concentrated ABC pattern. Class A and B items should receive the most attention in replenishment policy review, stockout prevention, and demand forecasting.

The ABC classification is based on inventory value at the observation level and would need to be recalculated with formal period-end balances in a production deployment.

## Recommended actions

1. Review reorder points for products with repeated low-stock conditions.
2. Prioritize Canned Peas 400g and Flour 1kg for replenishment-policy review.
3. Investigate Sahara Trading's late-delivery pattern and compare it with lead-time variability.
4. Review inventory concentration in Casablanca and Dry Goods.
5. For production deployment, add demand forecasts, purchase-order dates, supplier lead-time variability and promotion/seasonality information.

## Limitations

- The dataset is synthetic.
- Low-stock observations do not prove that reorder points are incorrect.
- Supplier performance does not prove supplier causality for stockouts.
- The turnover calculation is not an accounting-grade annual turnover measure.
- No maintenance, promotion, demand forecast or purchase-order event history is available.
