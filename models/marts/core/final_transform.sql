with orders as (
    
    select * from {{ ref('stg_orders') }}

),

line_item as (

    select * from {{ ref('stg_lineitem') }}

)
select 

    orders.order_key,
    orders.customer_key
    
    
from orders
order by orders.order_key
