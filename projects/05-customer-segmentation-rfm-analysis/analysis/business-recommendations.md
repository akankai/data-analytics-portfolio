# Business recommendations — Customer Segmentation & RFM Analysis

These recommendations follow the structure: **Data → Finding → Interpretation → Recommended Action → Illustrative Impact → Validation**.

### Recommendation 1: Protect Champions with retention and relevant cross-sell

**Data:** Champions (22 customers) generate 15,688 MAD (34.4% of total revenue), with average recency of 19.1 days and average frequency of 7.68 orders. Their per-customer revenue is approximately 713 MAD.

**Finding:** Champions are disproportionately valuable — 18.8% of the customer base generates 34.4% of revenue. They combine high recency (recent purchases), high frequency (7.68 orders on average), and high monetary value.

**Interpretation:** Losing Champions would have a disproportionate revenue impact. However, RFM describes the current state — it does not predict that Champions will churn or that retention offers will prevent churn. The recommendation to "protect" Champions is based on their current value, not on a prediction of future behavior.

**Recommended action:** Design retention offers for Champions that reinforce loyalty without unnecessary discounting (which would erode the margin that makes them valuable). Relevant cross-sell opportunities (products aligned with their purchase history) are preferable to blanket discounts. Avoid treating Champions like a generic customer segment — they have demonstrated high engagement and value, so the offers should reflect that.

**Illustrative impact:** If Champions represent 34.4% of revenue and the average transaction margin is approximately 33% (based on the dataset's overall margin), their contribution to profit is approximately 5,177 MAD (34.4% × 15,171 MAD total profit). Losing even 20% of Champions would reduce revenue by approximately 3,138 MAD and profit by approximately 1,035 MAD — but this assumes Champions would churn without intervention, which RFM does not predict. The actual impact depends on churn probability (not available in this dataset) and the effectiveness of retention offers (not tested in this dataset).

**Validation:** Track Champions' recency, frequency, and monetary value over time. If Champions start showing churn signals (recency increases, frequency drops), investigate and intervene. Measure whether retention offers improve Champions' retention and whether the margin cost of the offers is justified by the revenue retained.

### Recommendation 2: Target At Risk-High Value with focused reactivation

**Data:** At Risk-High Value (12 customers) generate 6,761 MAD (14.8% of revenue), with average recency of 117.3 days and average frequency of 5.58 orders. Their per-customer revenue (563 MAD) is substantially higher than the general At Risk group (211 MAD).

**Finding:** These customers have historically been valuable (high monetary, decent frequency) but are showing churn signals (high recency — 117 days since last order). They are the clearest targeted retention priority because they combine high historical value with current churn signals.

**Interpretation:** "At Risk-High Value" does not mean these customers will definitely churn — it means they have been valuable and are currently inactive relative to the rest of the base. The 117-day recency is high compared to Champions (19.1 days) but may be normal for some purchase cycles. The recommendation to target them is based on the combination of value and inactivity, not on a prediction.

**Recommended action:** Build a targeted reactivation campaign for At Risk-High Value customers, prioritized by monetary value. Use focused, personalized offers rather than broad discounting — these customers have demonstrated willingness to spend, so a relevant offer (product they're likely to buy, timing aligned with their purchase cycle) is more appropriate than a generic discount. Avoid treating them like the general At Risk segment (35 customers, 2.49 frequency, 211 MAD per customer) — their value profile is different and deserves a different approach.

**Illustrative impact:** If the reactivation campaign re-engages 30% of At Risk-High Value customers (3.6 customers, rounded to 4), and each returns to Champion-like behavior (7.68 orders, 713 MAD per customer), the recovered revenue would be approximately 2,852 MAD and recovered profit approximately 941 MAD. However, this assumes the campaign works and the customers return to Champion behavior, neither of which is supported by this dataset. The actual impact depends on the campaign effectiveness and the customers' likelihood to return.

**Validation:** Track At Risk-High Value customers' recency after the campaign. If recency decreases (they make a new purchase), measure the frequency and monetary value of their return purchases. Calculate whether the campaign's cost (offer cost, Marketing cost) is justified by the recovered revenue and profit.

### Recommendation 3: Develop Potential Loyalists by increasing purchase frequency

**Data:** Potential Loyalists (36 customers) generate 11,580 MAD (25.4% of revenue), with average recency of 39.7 days and average frequency of 3.47 orders. They are the largest segment by customer count.

**Finding:** Potential Loyalists have decent recency (39.7 days — not as recent as Champions but not as dormant as At Risk) and lower frequency (3.47 orders). They represent a growth opportunity — increasing purchase frequency among this group has more headroom than trying to reactivate the At Risk segments.

**Interpretation:** Potential Loyalists are customers who are still active but not yet high-frequency. The gap between their current frequency (3.47) and Champions' frequency (7.68) is substantial — closing even part of that gap would increase their value. This is a growth opportunity, not a churn prevention opportunity.

**Recommended action:** Test frequency-increasing interventions for Potential Loyalists: bundled offers that encourage multiple purchases, reminders timed to their purchase cycle, personalized recommendations based on their purchase history, loyalty rewards that incentivize repeat purchases. Measure the effect on purchase frequency. If frequency increases without excessive discounting, the segment's value increases.

**Illustrative impact:** If Potential Loyalists' average frequency increased from 3.47 to 5.0 orders (a 44% increase), and their average order value remained constant, their total revenue would increase from 11,580 MAD to approximately 16,679 MAD (36 customers × 5.0 orders × ~93 MAD average order value). The additional revenue would be approximately 5,099 MAD, with additional profit of approximately 1,683 MAD (at 33% margin). However, this assumes the frequency increase is achievable and doesn't reduce average order value or margin — none of which is tested in this dataset.

**Validation:** Run the frequency-increasing intervention as a test (some Potential Loyalists receive the intervention, some don't). Measure the difference in purchase frequency between the test and control groups. If the intervention works, roll it out to the full segment and continue monitoring frequency.

### Recommendation 4: Monitor discounting impact on margin before increasing incentives

**Data:** The dataset shows an overall profit margin of 33.23%. RFM segmentation does not include margin data per customer — the segmentation is based on recency, frequency, and monetary value, not on profitable vs. unprofitable customers.

**Finding:** Retention and growth offers typically involve some form of discounting or incentive, which reduces margin on the affected transactions. Without customer-level margin data, the analysis cannot determine which segments would remain profitable after receiving offers.

**Interpretation:** The RFM segmentation identifies *who* to target, but not *what* to offer them in a margin-protecting way. A Champions retention offer that gives a 10% discount on a 33% margin transaction reduces the margin to 23% — still profitable, but less so. An At Risk-High Value reactivation offer with a 20% discount reduces margin to 13%. The margin impact of offers is real and should be monitored.

**Recommended action:** Track the margin impact of any retention or growth offers. Before increasing incentives, measure the current margin impact of existing offers (if any). Calculate the net effect: margin lost to discounts vs. revenue retained or gained from the targeted customers. If the net effect is positive, the offer is justified; if negative, redesign the offer to protect margin (lower discount depth, targeted offers rather than blanket discounts, bundle offers that maintain margin).

**Illustrative impact:** If a 10% discount is applied to all Champion transactions (15,688 MAD revenue), the margin reduction is approximately 1,569 MAD (10% of 15,688 MAD). If this discount retains all Champions who would otherwise churn, the net impact depends on the churn probability without the discount. If the churn probability is high enough that the 1,569 MAD margin cost is less than the lost profit from churn, the discount is justified. Without churn probability data, this calculation cannot be completed.

**Validation:** After implementing offers, track: (a) the margin impact of the offers (discount depth × affected revenue), (b) the retention/growth outcome (did the targeted customers stay or increase purchases?), and (c) the net effect (outcome value − margin cost). Use this to decide whether to continue, adjust, or discontinue each offer.

### Recommendation 5: Recalculate segments when the customer base or analysis period changes

**Data:** The segmentation uses quintile scoring (relative to the current 117-customer base) with rules defined on the quintile scores (R≥4, F≥4, M≥4 = Champion, etc.).

**Finding:** The quintile thresholds are relative to this dataset. If the customer base grows (more customers) or the analysis period changes (different time window), the quintile boundaries change, and the segment assignments would change.

**Interpretation:** The segments are meaningful for this dataset at this point in time, but they are not stable labels — a customer classified as Champion today might be reclassified if the customer base grows and the quintile boundaries shift. This is not a flaw in the method, but it is a limitation that should be acknowledged and managed.

**Recommended action:** Recalculate RFM scores and segments when the customer base or analysis period changes significantly. Document the date of the last segmentation and the dataset characteristics (n = 117 customers, 2025 data) so stakeholders understand the context. If the business needs stable customer labels (for longitudinal tracking), consider absolute thresholds (e.g., R ≤ 30 days = Champion) rather than relative quintile thresholds — but absolute thresholds need justification and may not work well with skewed distributions.

**Illustrative impact:** The dataset does not contain a historical customer base to demonstrate how segments would change over time. The recommendation is to manage this proactively: recalculate regularly, document the context, and choose the scoring approach (relative vs. absolute) based on the business need.

**Validation:** Track segment stability over time. If segments are recalculated monthly or quarterly, monitor how many customers change segments between periods and whether the changes are meaningful or just noise from threshold shifts.
