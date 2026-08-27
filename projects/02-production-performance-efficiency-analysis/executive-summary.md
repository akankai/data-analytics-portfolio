# Executive Summary — Production Performance & Efficiency Analysis

## The business question

A food manufacturing operation is producing 35,927 kg below plan. Where are the losses, and which operational dimensions should be investigated first?

## What the data shows

Across 500 batch-level production records (5 products, 4 machines, 3 shifts, 8 operators, 2025):

| KPI | Value |
|---|---|
| Total Production | 550,695 kg |
| Planned Production | 586,622 kg |
| Production Gap | −35,927 kg |
| Yield | 92.07% |
| Production Efficiency | 93.88% |
| Waste Rate | 3.06% |
| Machine Utilization | 94.27% |
| Total Downtime | 13,753.8 min |
| **OEE** | **86.29%** |

### OEE breakdown

- **Availability:** 94.27% — 5.73% of available time is lost to downtime
- **Performance:** 93.88% — 6.12% of planned output is not achieved during operating time
- **Quality:** 97.50% — 2.50% of output is defective
- **OEE Loss:** 13.71% of planned good output

The biggest loss driver is **Performance** (the gap between actual and planned output), followed by **Availability** (downtime). Quality loss is the smallest component at 2.50%.

### Machine ranking by OEE

| Machine | OEE | Downtime | Key Issue |
|---|---|---|---|
| M01 | 87.7% | 3,090 min | Balanced |
| M02 | 87.4% | 3,014 min | Best performer |
| M03 | **83.8%** | **4,823 min** (35.1% of total) | Lowest OEE, highest downtime |
| M04 | 86.3% | 2,826 min | Highest waste rate (3.19%) |

M03's OEE loss represents approximately **25,227 kg** of potential good output — the largest machine-level loss. M04 has a different problem profile: high utilization but high waste, suggesting material/process losses rather than availability problems.

### Monthly trend

OEE ranges from 84.9% (April) to 87.7% (February). December is strongest at 87.5% OEE; May is weakest at 85.8%.

## What this means

The production gap of 35,927 kg is a performance problem more than a quality problem. Quality loss (2.50%) is relatively contained; the bigger opportunity is in closing the actual-to-planned production gap and reducing downtime.

M03 is the priority machine: its combination of lowest OEE, highest downtime, and lowest utilization makes it the single largest improvement opportunity. If M03's downtime were reduced to M02's level, a substantial portion of the OEE gap would close.

M04's high waste rate (3.19%) with high utilization (94.75%) suggests that waste reduction on M04 is a separate investigation from machine availability.

## Recommended next steps

1. Prioritize M03 for maintenance, calibration, and operating-condition review, targeting the 4,823.5 min downtime (35.1% of total).
2. Investigate M04 waste causes separately — material yield, process parameters, setup practices.
3. Analyze what drove December's stronger performance (87.5% OEE) and whether those conditions are repeatable.
4. Review morning-shift startup and setup practices (highest waste rate at 3.21%).
5. Attribute OEE losses to specific causes — maintenance events, downtime reason codes, process settings, raw material lots.

*Dataset: synthetic. Findings demonstrate an analytics workflow and should not be interpreted as findings about a real facility.*
