{{
  config(
    materialized='table'
  )
}}

select 
  so.order_id
  , so.user_id
  , so.promo_id
  , so.address_id
  , so.created_at
  , so.order_cost
  , so.shipping_cost
  , so.order_total
  , so.tracking_id
  , so.shipping_service
  , so.estimated_delivery_at
  , so.delivered_at
  , so.status

FROM {{ ref('stg_orders') }} so