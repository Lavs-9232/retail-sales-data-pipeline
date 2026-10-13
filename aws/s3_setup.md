# AWS S3 Setup

## Project
Retail Sales Data Pipeline

## S3 Bucket
`retail-sales-data-pipeline-2026`

## Dataset Folders
- customers/
- products/
- orders/
- order_items/
- payments/
- returns/

## Purpose
Amazon S3 stores the retail CSV datasets before they are loaded into Snowflake RAW tables. 
Snowpipe is configured for automatic ingestion of new customer CSV files.
