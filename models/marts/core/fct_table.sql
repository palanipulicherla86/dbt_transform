{{
    config(
        materialized='table'
    )
}}
with customer as (
    select * from {{ source ('tpch', 'stg_customer')}}
),
orders as (
    select * from {{ source('tpch','stg_orders')}}
)
select 
    stg_orders.order_key,
    stg_orders.customer_key

  
from stg_orders