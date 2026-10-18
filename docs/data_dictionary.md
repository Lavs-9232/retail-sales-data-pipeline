# Retail Sales Data Pipeline — Data Dictionary

| Dataset | Primary Key | Purpose |
|---|---|---|
| Customers | `CUSTOMER_ID` | Customer details and location |
| Products | `PRODUCT_ID` | Product catalogue and pricing |
| Orders | `ORDER_ID` | Order dates, status, and totals |
| Order Items | `ORDER_ITEM_ID` | Products, quantities, and unit prices per order |
| Payments | `PAYMENT_ID` | Payment methods, status, and amounts |
| Returns | `RETURN_ID` | Returned products and refund details |

## Key Relationships
- Customers → Orders: `CUSTOMER_ID`
- Orders → Order Items: `ORDER_ID`
- Products → Order Items: `PRODUCT_ID`
- Orders → Payments: `ORDER_ID`
- Orders → Returns: `ORDER_ID`

## Notes
- Source data is provided in CSV format.
- Sample dates use `DD-MM-YYYY`.
- Sales line amount is calculated as `QUANTITY * UNIT_PRICE`.
- Returns contain a separate `REFUND_AMOUNT`.
- Actual column types and constraints are defined in Snowflake and dbt.
