select C_CUSTKEY,sum(O_TOTALPRICE) as O_TOTALPRICE
from {{ ref('stg_customer') }} cust
join {{ ref('stg_orders') }} ord
on cust.C_CUSTKEY = ord.O_CUSTKEY
group by C_CUSTKEY
