
{{
    config(
        materialized='incremental',
        unique_key='ORDER_ITEM_ID'
    )
}}

SELECT
    oi.ORDER_ITEM_ID,
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

{% if is_incremental() %}
    WHERE o.ORDER_DATE >= (
        SELECT COALESCE(MAX(ORDER_DATE), '1900-01-01')
        FROM {{ this }}
    )
{% endif %}
