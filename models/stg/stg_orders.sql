select id as ord_id,
cust_id,
ordered_at,
product_name,
price,
VAT 
from {{ ref('src_orders') }}