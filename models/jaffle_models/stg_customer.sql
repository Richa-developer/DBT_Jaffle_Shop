{{ config (
schema='STAGING',
  alias='STG_CUSTOMERS',
  tags=["staging"]
) }}

select
        id as customer_id,
        first_name,
	last_name,
        email
from  {{ ref('raw_customers') }}

