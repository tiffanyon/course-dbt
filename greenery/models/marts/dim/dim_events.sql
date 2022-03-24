{{
  config(
    materialized='table'
  )
}}

select 
     se.event_id
      , se.session_id
      , se.user_id
      , se.page_url
      , se.created_at
      , se.event_type
      , case
           when (se.event_type) = 'add_to_cart' then 1
           else 0
        end is_add_to_cart
      , case
           when (se.event_type) = 'checkout' and (se.order_id) is null then 1
           else 0
        end checkout_no_order
      , case
           when (se.event_type) = 'checkout' then 1
           else 0
        end is_checkout    
      , case
           when (se.event_type) = 'page_view' then 1
           else 0
        end is_page_view    
      , case
           when (se.event_type) = 'package_shipped' then 1
           else 0
        end is_shipped
      , se.order_id

FROM {{ ref('stg_events') }} se