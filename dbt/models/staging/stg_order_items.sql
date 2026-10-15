SELECT
    ORDER_ITEM_ID,
    ORDER_ID,
    PRODUCT_ID,
    QUANTITY,
    UNIT_PRICE
FROM {{ source('retail', 'order_items') }}
WHERE ORDER_ITEM_ID IS NOT NULL
  AND QUANTITY > 0
  AND UNIT_PRICE >= 0