# Retail Sales Data Pipeline

## Project Overview
An end-to-end cloud data engineering project that processes retail sales data using AWS S3, Snowflake, and dbt Cloud. The project demonstrates data ingestion, transformation, data quality testing, and analytical data modeling.

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

## Key Implementations
- Created Snowflake database and RAW tables for retail datasets.
- Configured S3 integration, external stage, and Snowpipe for customer CSV ingestion.
- Developed dbt staging models to clean and validate source data.
- Implemented customer and product dimensions, sales and returns fact models.
- Added data quality tests for unique and non-null identifiers.
- Implemented an incremental sales model.
- Created a customer snapshot to track historical changes.
- Used a seed file for product category mapping.
- Generated dbt documentation and lineage.

## Repository Structure
- `aws/` – S3 setup documentation
- `snowflake/` – Snowflake SQL scripts
- `dbt/` – dbt models, tests, seeds, snapshots, and project configuration
- `docs/` – Project documentation

## Project Status
Core ingestion, transformation, testing, and documentation steps have been implemented. The project is maintained in GitHub as a practical Cloud Data Engineering portfolio project.
