# CI Workflow

This directory contains a GitHub Actions workflow that validates the portfolio's reproducible components on each push and pull request.

## What it checks

### P05 dataset generation and validation

The workflow runs [`scripts/generate_dataset.py`](projects/05-customer-segmentation-rfm-analysis/scripts/generate_dataset.py) and verifies:

1. **Script execution:** the generator runs without error.
2. **Output files exist:** `data/customer_transactions.csv` and `data/customer_segmentation.db` are created.
3. **Baseline characteristics:** the generated dataset matches expected baselines:
   - 500 orders
   - 117 customers
   - Revenue ≈ 45,664.56 MAD
   - The SQLite database contains the expected tables (`transactions`, `customer_rfm`, `segment_summary`).

This validates that the P05 analysis is reproducible — re-running the generator produces the same dataset structure and approximate statistics.

### Why this matters

For a portfolio, reproducibility is a credibility signal. A CI check that re-generates the dataset and verifies its characteristics demonstrates that:

- The generator logic is deterministic and stable.
- The dataset has not been manually modified in a way that breaks the generator.
- The analysis can be re-run by anyone cloning the repository.

### Limitations

The CI check validates the P05 reproducible dataset only. It does not:

- Validate the P01–P04 datasets (those are static files, not regenerated).
- Validate SQL syntax (SQLite is forgiving; the scripts are validated by manual execution).
- Validate Power BI files (these require Power BI Desktop and cannot be validated in a CI environment).
- Check the Power BI dashboard visuals or DAX measures.

## Workflow file

See [`.github/workflows/ci.yml`](.github/workflows/ci.yml) for the full workflow definition.
