
{{ config(materialized='table') }}

SELECT
    p.PRODUCT_ID,
    p.PRODUCT_NAME,
    p.CATEGORY,
    c.DEPARTMENT,
    p.BRAND,
    p.UNIT_PRICE,
    CASE
        WHEN p.UNIT_PRICE < 50 THEN 'Budget'
        WHEN p.UNIT_PRICE < 200 THEN 'Mid-Range'
        ELSE 'Premium'
    END AS PRICE_SEGMENT
FROM {{ ref('stg_products') }} p
LEFT JOIN {{ ref('category_mapping') }} c
    ON p.CATEGORY = c.CATEGORY
