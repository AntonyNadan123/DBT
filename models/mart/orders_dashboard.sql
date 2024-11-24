select cust.cust_id,cust.cust_address,cust.cust_name,cust.cust_phone,
ord.ord_id,ord.ordered_at,ord.product_name,ord.price,ord.VAT 
from {{ ref('stg_orders') }} ord
join {{ ref('stg_customer') }} cust
on ord.cust_id = cust.cust_id
