
SELECT
    PRODUCT_ID,
    PRODUCT_NAME,
    CATEGORY,
    BRAND,
    UNIT_PRICE
FROM {{ source('retail', 'products') }}
WHERE PRODUCT_ID IS NOT NULL
  AND UNIT_PRICE >= 0
