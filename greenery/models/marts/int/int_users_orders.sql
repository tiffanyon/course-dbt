{{
  config(
    materialized='table'
  )
}}

SELECT
    dox.order_id
    , dox.user_id
    , dox.promo_id
    , dox.address_id
    , dox.created_at
    , dox.order_cost
    , dox.shipping_cost
    , dox.order_total
    , dox.estimated_delivery_at
    , dox.delivered_at
    , dox.status
    , du.first_name
    , du.last_name
    , du.email
    , du.phone_number
    , du.address
    , du.zipcode
    , du.state
    , du.country
FROM {{ ref('dim_orders') }} dox
LEFT JOIN {{ ref('int_users_addresses') }} du ON dox.user_id = du.user_id