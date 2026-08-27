# Operational Cost Model — Production Performance & Efficiency

## Purpose

This model provides an **illustrative operational cost estimate** based on the synthetic production data. It is not a real cost analysis — all cost parameters are assumed, and all resulting cost figures are illustrative.

The model is included to demonstrate how an analyst would structure an operational cost model when real cost data becomes available.

## Assumptions

All cost parameters are **illustrative assumptions**, not actual company data.

| Cost Parameter | Assumed Value | Basis |
|---|---|---|
| Downtime cost | 500 MAD/hour | Illustrative: lost capacity, standby labor, maintenance response cost |
| Waste cost | 300 MAD/kg | Illustrative: raw material + processing cost lost to waste |
| Lost production opportunity cost | 200 MAD/kg | Illustrative: margin foregone on unproduced good output |

**These are not actual company costs.** They are sensitivity parameters chosen to show how the analysis would work with different cost assumptions.

The model uses three separate cost components because they measure different things:
- **Downtime cost** = cost of time when the machine is not operating
- **Waste cost** = cost of material/processing lost to defective output
- **Lost production cost** = margin foregone on the gap between actual and planned production

## Calculations

### Downtime cost (machine-level)

Downtime cost = Total downtime (hours) × 500 MAD/hour

| Machine | Downtime (min) | Downtime (hours) | Illustrative Downtime Cost |
|---|---|---|---|
| M01 | 3,090.0 | 51.50 | 25,750 MAD |
| M02 | 3,014.0 | 50.23 | 25,117 MAD |
| M03 | 4,823.5 | 80.39 | 40,196 MAD |
| M04 | 2,826.3 | 47.11 | 23,553 MAD |
| **Total** | **13,753.8** | **229.23** | **114,616 MAD** |

**M03 accounts for 35.1% of total downtime and 35.1% of illustrative downtime cost.**

### Waste cost (machine-level)

Waste cost = Total waste (kg) × 300 MAD/kg

Based on the dataset: Waste Rate = Waste / Input Quantity, so Waste (kg) = Waste Rate × Input Quantity.

| Machine | Waste Rate | Waste (approx. kg) | Illustrative Waste Cost |
|---|---|---|---|
| M01 | 3.07% | ~17,747 | 5,324 MAD |
| M02 | 3.02% | ~17,479 | 5,244 MAD |
| M03 | 2.98% | ~17,150 | 5,145 MAD |
| M04 | 3.19% | ~18,470 | 5,541 MAD |
| **Total** | **3.06%** | **~70,846** | **~21,254 MAD** |

(Waste kg approximated from waste rate × average input quantity per machine. Illustrative only.)

**M04 has the highest waste cost despite having the lowest downtime cost** — its problem is waste, not downtime.

### Lost production opportunity cost

Lost production cost = Production gap (kg) × 200 MAD/kg

The production gap of 35,927 kg represents the difference between actual production (550,695 kg) and planned production (586,622 kg).

**Illustrative lost production opportunity cost: 35,927 kg × 200 MAD/kg = 7,185,400 MAD**

This is the largest cost component because it represents the margin foregone on the entire production gap. However, it is also the most sensitive to the assumption — the 200 MAD/kg is the margin per kg that would have been earned on the unproduced output.

**Important caveat:** This cost is a gross opportunity cost, not a net cost. If the planned production was not achievable for reasons beyond the operation's control (e.g., raw material shortage, demand shortfall), the opportunity cost would be lower. The 7,185,400 MAD figure assumes every kg of the gap represented achievable, margin-generating production that was lost.

## Combined illustrative operational cost

| Cost Component | Illustrative Cost | % of Total |
|---|---|---|
| Downtime cost | 114,616 MAD | ~1.6% |
| Waste cost | ~21,254 MAD | ~0.3% |
| Lost production opportunity cost | 7,185,400 MAD | ~98.2% |
| **Total** | **~7,321,270 MAD** | **100%** |

**The lost production opportunity cost dominates the total** — this is expected because it applies to the entire production gap at the margin rate, while downtime and waste costs apply only to the specific losses.

## Key observations

1. **M03 is the cost priority for downtime.** At 40,196 MAD, M03's downtime cost is 60% higher than M02's (25,117 MAD). Reducing M03's downtime to M02's level would save approximately 15,079 MAD in downtime cost (illustrative).

2. **M04 is the cost priority for waste.** Despite having the lowest downtime cost (23,553 MAD), M04 has the highest waste cost (~5,541 MAD) because of its 3.19% waste rate. M04's problem is different from M03's — downtime vs. waste — and the cost model reflects this.

3. **The lost production opportunity cost is highly sensitive to the assumption.** At 100 MAD/kg (lower margin assumption), the lost production cost would be 3,592,700 MAD. At 400 MAD/kg (higher margin), it would be 14,370,800 MAD. The 7,185,400 MAD figure at 200 MAD/kg is a midpoint illustration.

4. **The cost model does not change the prioritization from the OEE analysis.** M03 remains the top priority (largest downtime, lowest OEE). M04 remains a secondary priority (highest waste). The cost model quantifies the illustrative financial impact but does not identify new priorities.

## What this model does not include

- **Maintenance cost:** the cost of performing the maintenance that would reduce downtime.
- **Labor cost:** the cost of operators during downtime (not necessarily lost — they may be reassigned).
- **Fixed cost allocation:** factory overhead, depreciation, etc. — these are incurred regardless of production level.
- **Energy cost:** energy consumption (60,250.2 kWh) is in the dataset but not valued here.
- **Quality cost beyond waste:** customer returns, rework labor, inspection cost, brand impact.

A complete operational cost model would include these. The model here is intentionally limited to three illustrative components that the dataset partially supports (downtime, waste rate, production gap).

## How to use this in a real context

In a real production environment, the analyst would:

1. Replace each assumed parameter with actual cost data from finance/operations/maintenance.
2. Calculate actual downtime cost using actual downtime hours and actual standby/lost-capacity cost.
3. Calculate actual waste cost using actual waste kg and actual material + processing cost per kg.
4. Calculate actual lost production cost using the actual margin per kg and a realistic assessment of how much of the gap was achievable.
5. Prioritize improvement investments based on actual cost savings, net of the cost of the improvement action.
6. Track operational cost over time to measure the financial impact of efficiency improvements.

For this portfolio project, the illustrative model demonstrates the structure and approach. The actual values are not meaningful for decision-making.
