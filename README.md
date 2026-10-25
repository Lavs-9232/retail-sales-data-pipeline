# Retail Sales Data Pipeline

## Project Overview

An end-to-end Cloud Data Engineering portfolio project that processes retail sales data using AWS S3, Snowflake, and dbt Cloud. The project demonstrates data ingestion, transformation, data quality testing, incremental processing, and analytical data modeling.

## Architecture

**AWS S3 → Snowflake RAW → dbt Cloud → Snowflake DBT_DEV**

## Technologies

- **AWS S3:** Stores retail CSV datasets.
- **Snowflake:** Data warehouse, RAW tables, external stage, storage integration, and Snowpipe.
- **dbt Cloud:** Data transformation, testing, incremental models, snapshots, seeds, and documentation.
- **GitHub:** Version control and project documentation.

## Datasets

The project uses six retail datasets:

- Customers
- Products
- Orders
- Order Items
- Payments
- Returns

Customer files use Snowpipe for automatic ingestion. The other five datasets are loaded using batch processing with `COPY INTO`.

## Key Implementations

- Created Snowflake database objects and RAW tables for the retail datasets.
- Configured AWS S3 integration, an external stage, and Snowpipe for customer-file ingestion.
- Developed dbt staging models to prepare source data for analysis.
- Built customer and product dimensions, along with sales and returns fact models.
- Calculated sales amounts at the order-item level for sales analysis.
- Enriched return records with payment method and payment status.
- Added dbt data quality tests for selected unique and non-null columns.
- Implemented an incremental sales model with a seven-day lookback window to help handle late-arriving records.
- Created a customer snapshot to track historical changes.
- Used a seed file to map product categories to departments.
- Generated dbt documentation and model lineage.

## Repository Structure

- `aws/` – AWS S3 setup documentation
- `snowflake/` – Snowflake SQL scripts
- `dbt/` – dbt models, tests, seeds, snapshots, and project configuration
- `docs/` – Project documentation

## Project Status

Implemented the data ingestion, transformation, testing, and documentation workflows.
