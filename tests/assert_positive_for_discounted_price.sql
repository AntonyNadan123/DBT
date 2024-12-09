select C_CUSTKEY,sum(O_TOTALPRICE) as total_discounted_price
from {{ ref('Order_Dashboard') }}
group by C_CUSTKEY
having total_discounted_price < 0 