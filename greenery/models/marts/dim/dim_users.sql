{{
  config(
    materialized='table'
  )
}}

select 
    su.user_id
    , su.address_id
    , su.first_name
    , su.last_name
    , concat (su.first_name,' ',su.last_name) as full_name
    , su.email
    , su.phone_number
    , su.created_at
    , su.updated_at

FROM {{ ref('stg_users') }} su