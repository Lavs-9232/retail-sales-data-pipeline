
{{ config(materialized='table') }}
SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    CONCAT(FIRST_NAME, ' ', LAST_NAME) AS FULL_NAME,
    EMAIL,
    CITY,
    STATE,
    COUNTRY,
    SIGNUP_DATE,
    YEAR(SIGNUP_DATE) AS SIGNUP_YEAR
FROM {{ ref('stg_customers') }}
