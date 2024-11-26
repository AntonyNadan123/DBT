select ord_id,sum(discounted_price) as total_discounted_price
from {{ ref('orders_dashboard') }}
group by ord_id
having total_discounted_price < 0