{{
    config(
        materialized='table'
    )
}}


with orders as (
    
    select * from {{ ref('stg_tpch_orders') }}

),

customers as (

    select * from {{ ref('stg_tpch_customers') }}

)
select 

    
    orders.order_key,
    orders.customer_key,
    orders.order_date,
    customers.custkey,
    customers.name
    
   
from
    orders
inner join customers
        on orders.order_key = customers.custkey
