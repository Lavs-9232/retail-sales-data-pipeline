
-- Retail Sales Data Pipeline
-- S3 storage integration, CSV file format, and external stage

USE DATABASE RETAIL_SALES_DB;
USE SCHEMA RAW;

-- Allow Snowflake to access the S3 bucket
CREATE STORAGE INTEGRATION RETAIL_S3_INTEGRATION
    TYPE = EXTERNAL_STAGE
    STORAGE_PROVIDER = S3
    ENABLED = TRUE
    STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::936687422572:role/RetailS3Role'
    STORAGE_ALLOWED_LOCATIONS = ('s3://retail-sales-data-pipeline-2026/');

-- CSV configuration
CREATE FILE FORMAT CSV_FORMAT
    TYPE = CSV
    SKIP_HEADER = 1
    FIELD_OPTIONALLY_ENCLOSED_BY = '"'
    DATE_FORMAT = 'DD-MM-YYYY';

-- External stage for the retail S3 bucket
CREATE STAGE RETAIL_S3_STAGE
    URL = 's3://retail-sales-data-pipeline-2026/'
    STORAGE_INTEGRATION = RETAIL_S3_INTEGRATION
    FILE_FORMAT = CSV_FORMAT;
