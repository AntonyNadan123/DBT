select Id as cust_id,
name as cust_name,
address as cust_address,
phone as cust_phone
from {{ ref('src_customer') }}