
{{ config(materialized='table') }}

SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    BRAND,
    UNIT_PRICE,
    CASE
        WHEN UNIT_PRICE < 50 THEN 'Budget'
        WHEN UNIT_PRICE < 200 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS PRICE_SEGMENT
FROM {{ ref('stg_products') }}
