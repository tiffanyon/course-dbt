What is our overall conversion rate?

62.5%

with purchase_events as (
    select count(distinct session_id) as total_purchases
    from dbt.dbt_tiffany_o.dim_events
    where event_type = 'checkout'), 

total_events as (
    select count(distinct session_id) as events
    from dbt.dbt_tiffany_o.dim_events)

select a.total_purchases / b.events:: numeric * 100 AS conversion_rate
from purchase_events a, total_events b

What is our conversion rate by product?

