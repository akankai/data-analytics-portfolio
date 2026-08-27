# Executive Summary — Customer Segmentation & RFM Analysis

## The business question

A retailer has transaction-level data but needs a customer-level view: who generates the most value, which valuable customers may be drifting away, and which groups deserve different retention or growth strategies.

## What the data shows

Across 500 orders from 117 customers (12 products, 2025, seed 42 for reproducibility):

| KPI | Value |
|---|---|
| Orders | 500 |
| Customers | 117 |
| Revenue | 45,665 MAD |
| Profit | 15,171 MAD |
| Profit Margin | 33.23% |

### RFM segmentation results

| Segment | Customers | Revenue | Avg. Recency | Avg. Frequency | Revenue Share |
|---|---|---|---|---|---|
| Champions | 22 | 15,688 MAD | 19.1 days | 7.68 | 34.4% |
| Potential Loyalists | 36 | 11,580 MAD | 39.7 days | 3.47 | 25.4% |
| At Risk | 35 | 7,391 MAD | 164.1 days | 2.49 | 16.2% |
| At Risk - High Value | 12 | 6,761 MAD | 117.3 days | 5.58 | 14.8% |
| Loyal Customers | 12 | 4,244 MAD | 15.0 days | 4.33 | 9.3% |

### Key findings

**1. Champions are disproportionately valuable.** 22 customers (18.8% of the base) generate 34.4% of revenue. They combine high recency (19.1 days), high frequency (7.68 orders), and high monetary value. They are the segment to protect.

**2. At Risk - High Value is the clearest retention priority.** 12 customers generating 6,761 MAD (14.8% of revenue) with an average of 117 days since their last order. Their per-customer revenue (563 MAD) is substantially higher than the general At Risk group (211 MAD). These customers have historically been valuable but are showing churn signals.

**3. Potential Loyalists are the largest segment.** 36 customers with decent recency (39.7 days) but lower frequency (3.47). This is a growth opportunity — increasing purchase frequency among this group has more headroom than trying to reactivate the At Risk segments.

**4. Customer count alone is misleading.** The At Risk segment has 35 customers (the second-largest), but their revenue (7,391 MAD) is less than half of the Champions' 15,688 MAD. Prioritizing by revenue, not headcount, gives a different picture.

## What this means

The RFM segmentation provides a clear, actionable view of the customer base:
- **Protect:** Champions (22 customers, 34.4% of revenue) — retention and relevant cross-sell.
- **Reactivate:** At Risk - High Value (12 customers, 14.8% of revenue) — targeted reactivation, not broad discounting.
- **Develop:** Potential Loyalists (36 customers, 25.4% of revenue) — increase purchase frequency through bundles or personalized offers.
- **Monitor:** discounting impact on margin before increasing incentives.

The segmentation uses quintile scoring with transparent rule-based segments. This is deliberately not a black-box model — the segments are defined by business-readable rules (R≥4, F≥4, M≥4 = Champion), making the approach explainable to stakeholders. With 117 customers, each quintile contains approximately 23 customers. The recency distribution is right-skewed, making R-scores noisier at the extremes than F and M scores.

## Recommended next steps

1. Design retention offers for Champions that reinforce loyalty without unnecessary discounting.
2. Build a targeted reactivation campaign for At Risk - High Value customers, prioritizing by monetary value.
3. Test frequency-increasing interventions for Potential Loyalists (bundles, reminders, personalized offers) and measure the effect on purchase frequency.
4. Track churn signals over time — with only one year of data, true churn prediction requires a longer observation window.
5. Recalculate segments when the customer base or analysis period changes, since quintile thresholds are relative to the current dataset.

*Dataset: synthetic, generated deterministically with seed 42. RFM is descriptive and does not establish causal relationships.*
