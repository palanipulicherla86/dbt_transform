with orders as (
    select * from {{ ref('orders') }}
)
select 
  O_ORDERKEY,
  sum(O_TOTALPRICE) as total_amount
from orders 
group by O_ORDERKEY
having total_amount < 0



