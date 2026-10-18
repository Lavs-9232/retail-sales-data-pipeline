{{ config(materialized='table') }}

SELECT
    o.ORDER_ID,
    o.CUSTOMER_ID,
    oi.PRODUCT_ID,
    o.ORDER_DATE,
    o.ORDER_STATUS,
    oi.QUANTITY,
    oi.UNIT_PRICE,
    oi.QUANTITY * oi.UNIT_PRICE AS LINE_AMOUNT
FROM {{ ref('stg_orders') }} o
INNER JOIN {{ ref('stg_order_items') }} oi
    ON o.ORDER_ID = oi.ORDER_ID