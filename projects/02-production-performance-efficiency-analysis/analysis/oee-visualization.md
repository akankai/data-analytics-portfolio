# OEE Visualization — Production Performance & Efficiency

## Current state

The Power BI dashboard (`power-bi/production-performance.pbix`) currently includes KPI cards and trend/comparison visuals for:
- Total Production
- Yield
- Production Efficiency
- Waste Rate
- Machine Utilization

**OEE is not yet visualized on the dashboard**, but the DAX measures are documented and ready to be added.

## DAX measures (ready to add)

The following measures are defined in [`dax-measures.md`](dax-measures.md) and can be added to the dashboard as a new OEE section:

| Measure | DAX | Result (overall) |
|---|---|---|
| Availability % | `DIVIDE(SUM(Operating_Time_h), SUM(Available_Time_h), 0)` | 94.27% |
| Performance % | `DIVIDE(SUM(Actual_Production_kg), SUM(Planned_Production_kg), 0)` | 93.88% |
| Quality % | `DIVIDE(SUM(Good_Output_kg), SUM(Actual_Production_kg), 0)` | 97.50% |
| **OEE %** | `[Availability %] * [Performance %] * [Quality %]` | **86.29%** |

These measures are designed to respond correctly to report filters (by machine, product, shift, month) because they aggregate at the measure level.

## Recommended OEE visual

Add an **OEE decomposition visual** to the dashboard:

### Option A: KPI card + decomposition table (simplest)

- **KPI card:** Overall OEE = 86.29%
- **Decomposition table:**

| Component | Value | Loss |
|---|---|---|
| Availability | 94.27% | 5.73% |
| Performance | 93.88% | 6.12% |
| Quality | 97.50% | 2.50% |
| **OEE** | **86.29%** | **13.71%** |

This table makes clear that Performance (6.12% loss) is the biggest loss driver, followed by Availability (5.73%), with Quality being the smallest loss (2.50%).

### Option B: OEE by machine (recommended)

A bar chart showing OEE by machine, with the three components as stacked or grouped bars:

| Machine | Availability | Performance | Quality | OEE |
|---|---|---|---|---|
| M01 | 95.40% | 94.26% | 91.97% | 87.7% |
| M02 | 94.68% | 94.60% | 92.12% | 87.4% |
| M03 | 92.27% | 93.18% | 92.05% | 83.8% |
| M04 | 94.75% | 93.45% | 92.11% | 86.3% |

This visual makes M03's OEE gap immediately visible and shows that M03's problem is primarily in Availability (lowest utilization at 92.27%) and Performance (lowest at 93.18%), not Quality.

### Option C: OEE waterfall (most informative)

A waterfall chart showing:
- Start: 100% (planned good output)
- −5.73% Availability loss (downtime)
- −6.12% Performance loss (under-production during operating time)
- −2.50% Quality loss (defects)
- End: 86.29% OEE (actual good output as % of planned)

This is the most informative OEE visual because it shows exactly where the 13.71% loss comes from. However, it requires a waterfall visual in Power BI, which may need a custom visual or a stacked bar workaround.

## Recommended implementation order

1. **Add OEE KPI card** — single number, easy to add, immediately visible on the executive overview.
2. **Add OEE by machine bar chart** — shows machine-level OEE differences.
3. **Add OEE decomposition table** — explains what drives the OEE loss.
4. **Consider waterfall** — most informative but requires custom visual or workaround.

## Why OEE matters for this dashboard

Without OEE, the dashboard shows five KPIs that are each informative but don't integrate into a single picture of production effectiveness. OEE answers the question: "What percentage of planned good output did we actually achieve, and where did the rest go?"

The decomposition (Availability vs. Performance vs. Quality) directly informs prioritization:
- If Availability loss dominates → focus on downtime reduction, maintenance, changeover efficiency.
- If Performance loss dominates → focus on achieving planned output during operating time, speed losses, minor stops.
- If Quality loss dominates → focus on defect reduction, process control, quality inspection.

In this dataset, Performance loss (6.12%) dominates, which means the dashboard should guide the viewer toward understanding why actual production falls short of planned production during operating time — not toward reducing defects (which are already relatively contained at 2.50%).
