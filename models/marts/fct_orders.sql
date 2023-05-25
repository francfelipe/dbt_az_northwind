with
    customers as (
        select *
        from {{ref('dim_customers')}}
    ),
    orders as (
        select *
        from {{ref('stg_orders')}}
    )
select
    customers.sk_customer
    , orders.*
from orders
left join customers on customers.customer_id = orders.customer_id