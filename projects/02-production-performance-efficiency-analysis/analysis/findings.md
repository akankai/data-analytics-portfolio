# Analytical Findings — Production Performance & Efficiency Analysis

## Dataset-level results

The 500 synthetic production records contain 550,695 kg of actual production against 586,622 kg planned, leaving a production gap of **−35,927 kg**. Overall yield is **92.07%**, waste rate is **3.06%**, and machine utilization is **94.27%**.

### OEE decomposition

The dataset supports an Overall Equipment Effectiveness (OEE) calculation:

| Component | Formula | Result |
|---|---|---|
| **Availability** | Operating Time / Available Time | **94.27%** |
| **Performance** | Actual Production / Planned Production | **93.88%** |
| **Quality** | Good Output / Actual Production | **97.50%** |
| **OEE** | Availability × Performance × Quality | **86.29%** |

OEE loss of 13.71% means roughly 13.7% of planned good output is lost. The largest loss driver is Performance (the gap between actual and planned output), followed by Availability (downtime), with Quality being the smallest loss at 2.50%.

## Machine performance

| Machine | Efficiency | Yield | Waste Rate | Utilization | Downtime | OEE |
|---|---|---:|---:|---:|---:|---:|
| M01 | 94.26% | 91.97% | 3.07% | 95.40% | 3,090.0 min | 87.7% |
| M02 | **94.60%** | 92.12% | 3.02% | 94.68% | 3,014.0 min | 87.4% |
| M03 | **93.18%** | 92.05% | 2.98% | **92.27%** | **4,823.5 min** | **83.8%** |
| M04 | 93.45% | 92.11% | **3.19%** | 94.75% | 2,826.3 min | 86.3% |

### Finding

M03 is the weakest machine on efficiency, utilization, downtime, and OEE (83.8% vs. 87.4% for M02). M03's OEE loss represents approximately 25,227 kg of potential good output — the largest machine-level loss. The analysis does **not** prove that downtime is the root cause.

M04 presents a different pattern: utilization is relatively high, but waste rate is the highest. Its OEE (86.3%) is closer to average. This suggests that machine usage and material/process losses should be treated as separate questions.

## Product performance

| Product | Efficiency | Yield | Waste Rate |
|---|---:|---:|---:|
| Lait Suprême | 94.42% | 91.83% | 3.21% |
| Noir Corsé | **94.63%** | 91.79% | 3.11% |
| Noir Extrême | **92.98%** | 92.07% | 2.98% |
| Noir Gourmand | 93.15% | **92.25%** | 3.01% |
| Noir Light | 94.14% | **92.36%** | **2.97%** |

Noir Extrême has the lowest efficiency, while Noir Light has the highest yield and lowest waste rate. The product differences are not large enough to justify a root-cause claim without controlling for machine and operating conditions.

## Shift performance

| Shift | Efficiency | Yield | Waste Rate | Utilization |
|---|---:|---:|---:|---:|
| Matin | 93.83% | 92.04% | **3.21%** | 94.04% |
| Après-midi | 93.81% | **92.12%** | **2.90%** | 94.48% |
| Nuit | **94.08%** | 91.97% | 3.04% | **94.36%** |

The morning shift has the highest waste rate, while the night shift has the highest efficiency. This is a signal for deeper shift-level investigation, not proof that the shift itself causes losses.

## Monthly performance

- **Lowest efficiency:** May — **92.98%**
- **Highest efficiency:** December — **95.18%**
- Efficiency is generally in the low-to-mid 90% range throughout the year.
- The May–June period combines weaker efficiency with relatively high waste rates, making it a useful period for process review.

## Energy observation

Total energy consumption is **60,250.2 kWh**, equivalent to approximately **0.109 kWh per kg of actual production**. Energy consumption has a strong positive correlation with production volume in this synthetic dataset (approximately **0.72**), which is expected because larger production volumes require more energy. It should therefore not be treated as a causal explanation for efficiency differences.

## Correlation and causality caution

The linear correlation between downtime and production gap is weak in this synthetic dataset (approximately **−0.02**). This reinforces the need to avoid claiming that downtime alone explains the production gap.

For a real manufacturing analysis, the next analytical layer should include downtime reason codes, maintenance history, product-machine combinations, process parameters, raw-material lots and shift context.

## Recommended actions

1. Investigate M03 maintenance, calibration and operating conditions.
2. Investigate M04 waste causes separately from utilization.
3. Compare May and December operating conditions to identify repeatable differences.
4. Drill into product-machine combinations before making product-specific process changes.
5. Review morning-shift startup and setup practices.
