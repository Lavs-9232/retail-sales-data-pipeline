
{{ config(materialized='table') }}

SELECT
    r.RETURN_ID,
    r.ORDER_ID,
    r.PRODUCT_ID,
    o.CUSTOMER_ID,
    r.RETURN_DATE,
    r.RETURN_REASON,
    r.REFUND_AMOUNT,
    p.PAYMENT_METHOD,
    p.PAYMENT_STATUS
FROM {{ ref('stg_returns') }} r
INNER JOIN {{ ref('stg_orders') }} o
    ON r.ORDER_ID = o.ORDER_ID
LEFT JOIN {{ ref('stg_payments') }} p
    ON r.ORDER_ID = p.ORDER_ID
