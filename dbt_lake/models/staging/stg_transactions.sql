{{ config(
    materialized='table'
) }}

SELECT
    transaction_id,
    account_id,
    bank_name,
    transaction_type,
    amount,
    currency,
    transaction_date,
    status,
    description,
    merchant_name,
    reference,
    transaction_category
FROM
    {{ source('raw', 'transactions') }} t

{% if is_incremental() %}
WHERE
    date(t.transaction_date) > (SELECT MAX(date(transaction_date)) FROM {{ ref('transactions') }})
    date(t.transaction_date) <= '{{ var("load_date") }}'
{% endif %}
 