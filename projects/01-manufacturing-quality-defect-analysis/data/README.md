# Data

## Source

The source workbook for this project is the uncleaned Excel dataset provided for the case study.

The workbook contains two sheets:

- `Production_Data` — batch-level production and quality observations.
- `Data_Dictionary` — original field descriptions.

The workbook contains 460 records and 12 variables.

## Data quality checks

Initial checks on the provided workbook found:

- No missing values in the main production table.
- `Date` is stored as a date field.
- Production quantity and defect counts are numeric.
- Quality measurements are numeric.
- Product, batch, operator, and machine are categorical fields.

## Important note

The dataset is synthetic and contains no confidential company information. It is suitable for a public portfolio.

The final repository should contain only the shareable source dataset or a cleaned/public version of it.
