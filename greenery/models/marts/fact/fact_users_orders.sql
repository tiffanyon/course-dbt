{{
  config(
    materialized='table'
  )
}}

SELECT
    iuo.first_name
    , iuo.last_name
    , iuo.email
    , iuo.phone_number
    , iuo.address_id
    , iuo.address
    , iuo.zipcode
    , iuo.state
    , iuo.country
    , iuo.user_id
    , iuo.order_id
    , COUNT(DISTINCT iuo.order_id) AS num_of_orders_per_user
FROM {{ ref('int_users_orders') }} iuo
GROUP BY 1,2,3,4,5,6,7,8,9,10,11

