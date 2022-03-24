{{
  config(
    materialized='table'
  )
}}

select 

     fuo.user_id
     , fuo.address_id
     , fuo.first_name
     , fuo.last_name
     , fuo.email
     , fuo.phone_number
     , fuo.address
     , fuo.zipcode
     , fuo.state
     , fuo.country
     , count (fuo.order_id) as num_purchases
          , case
           when count (fuo.order_id) >= 1 then 1.0
           else 0
      end is_purchased_user
    , case
           when count (fuo.order_id) > 1 then 1.0
           else 0
      end is_repeat_purchase_user

from {{ ref('fact_users_orders') }} fuo


group by (1,2,3,4,5,6,7,8,9,10)