# Retail Sales Data Pipeline

## Project Overview
An end-to-end cloud data engineering portfolio project that processes retail sales data using AWS S3, Snowflake, and dbt Cloud. The project demonstrates data ingestion, transformation, data quality testing, incremental processing, and analytical data modeling.

## Architecture
**AWS S3 → Snowflake RAW → dbt Cloud → Snowflake DBT_DEV**

## Technologies
- **AWS S3** – Stores retail CSV datasets.
- **Snowflake** – Data warehouse, RAW tables, external stage, and Snowpipe for automatic customer-file ingestion.
- **dbt Cloud** – Data transformation, testing, incremental models, snapshots, seeds, and documentation.
- **GitHub** – Version control and project collaboration.

## Datasets
The project uses six retail datasets:
- Customers
- Products
- Orders
- Order Items
- Payments
- Returns

Customer files use Snowpipe for automatic ingestion; the other five datasets use batch loading through `COPY INTO`.

## Key Implementations
- Created the Snowflake database and RAW tables for retail datasets.
- Configured S3 integration, an external stage, and Snowpipe for customer CSV ingestion.
- Developed dbt staging models for source-data preparation and filtering.
- Implemented customer, product, and date dimensions.
- Developed sales and returns fact models.
- Calculated sales amounts at the order-item level to support accurate sales analysis.
- Enriched return records with payment method and payment status.
- Added dbt data quality tests for selected unique and non-null columns.
- Implemented an incremental sales model using a seven-day lookback window to help handle late-arriving records.
- Created a customer snapshot to track historical changes.
- Used a seed file for product category-to-department mapping.
- Generated dbt documentation and model lineage.

## Repository Structure
- `aws/` – S3 setup documentation
- `snowflake/` – Snowflake SQL scripts
- `dbt/` – dbt models, tests, seeds, snapshots, and project configuration
- `docs/` – Project documentation

## Project Status
Core ingestion, transformation, testing, and documentation steps have been implemented. The project is maintained in GitHub as a practical Cloud Data Engineering portfolio project.

## Limitations
The incremental sales model uses a seven-day lookback window, so records arriving with order dates earlier than that window may require additional handling. Automated scheduling and CI validation are potential future improvements.
