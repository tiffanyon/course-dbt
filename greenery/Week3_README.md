What is our overall conversion rate?

with purchase_events as (
    select count(distinct session_id) as total_purchases
    from dbt.dbt_tiffany_o.dim_events
    where event_type = 'checkout'), 

total_events as (
    select count(distinct session_id) as events
    from dbt.dbt_tiffany_o.dim_events)

    select a.total_purchases / b.events:: numeric * 100
    from purchase_events a, total_events b

What is our conversion rate by product?