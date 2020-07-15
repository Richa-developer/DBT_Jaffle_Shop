{{ config (
  schema='DIM',
  alias='CUSTOMER_PAYMENTS',
  tags=["dim"]
) }}

select
        customers.id
from "DATAOPS_FB_FEATURERSDEMANDFORECAST_CANDIDATE"."TEST".raw_customers customers
left join "DATAOPS_FB_FEATURERSDEMANDFORECAST_CANDIDATE"."TEST".raw_orders customer_orders using (id)
