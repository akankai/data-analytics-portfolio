# Data Provenance

## Source

The dataset in [`production_data.csv`](production_data.csv) is **synthetic data created for this portfolio project**. It does not represent real company production data, nor was it derived from any public or proprietary source.

## How it was created

The CSV was generated to support a manufacturing quality analysis workflow. The data structure (460 batch-level records with 5 products, 3 machines, 5 operators, and 12 fields including quality parameters) was designed to be realistic for a chocolate manufacturing context, but all values are synthetic.

The dataset was regenerated in August 2026 to align with the documented headline statistics:
- Total production: 532,362 units
- Total defects: 8,689 units
- Overall defect rate: 1.63%
- Machine-level defect rates: M03 (1.84%), M01 (1.59%), M02 (1.52%)

## What the dataset does not represent

- It is not actual production data from any facility.
- It is not derived from any company's confidential information.
- It is not suitable for operational decision-making outside this portfolio context.

## Why this matters

For a portfolio project, using synthetic data allows the full analytics workflow to be demonstrated without confidentiality constraints. However, any cost, defect, or performance figures derived from this data should be understood as illustrative, not as real operational metrics.

The dataset is suitable for:
- Demonstrating data validation workflows
- Practicing KPI construction and segmentation
- Building Power BI dashboards and DAX measures
- Exploring analytical relationships (correlation, Pareto, statistical testing)
- Showing an end-to-end analytics process

The dataset is NOT suitable for:
- Making real production decisions
- Benchmarking against actual plant performance
- Establishing cost baselines for a real operation
