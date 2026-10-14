
{% snapshot customer_snapshot %}

{{
    config(
        target_schema='SNAPSHOTS',
        unique_key='CUSTOMER_ID',
        strategy='check',
        check_cols=['FIRST_NAME', 'LAST_NAME', 'EMAIL', 'CITY', 'STATE', 'COUNTRY']
    )
}}

SELECT
    CUSTOMER_ID,
    FIRST_NAME,
    LAST_NAME,
    EMAIL,
    CITY,
    STATE,
    COUNTRY,
    SIGNUP_DATE
FROM {{ ref('stg_customers') }}

{% endsnapshot %}
