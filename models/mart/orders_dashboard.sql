with 

final as (

select cust.cust_id as cust_id,cust.cust_address as cust_address ,cust.cust_name as cust_name,cust.cust_phone as cust_phone,
ord.ord_id as ord_id ,ord.ordered_at as ordered_at,ord.product_name as product_name,ord.price as price,ord.VAT as VAT
from {{ ref('stg_orders') }} ord
join {{ ref('stg_customer') }} cust
on ord.cust_id = cust.cust_id

)

select cust_id,
cust_address,
cust_name,
cust_phone,
ord_id,
ordered_at,
product_name,
price,
VAT,
{{- macro_discount('price') -}} as discounted_price
from final
