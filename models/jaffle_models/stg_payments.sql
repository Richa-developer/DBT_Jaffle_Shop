{{ config (
  schema='STAGING',
  alias='STG_PAYMENTS',
  tags=["staging"]
) }}

select
        id as payment_id,
	order_id,
	payment_method,
	amount / 100 as amount
from {{ ref('raw_payments') }}



