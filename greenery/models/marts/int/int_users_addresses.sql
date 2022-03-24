{{
  config(
    materialized='table'
  )
}}

SELECT
    du.user_id
    , du.first_name
    , du.last_name
    , du.email
    , du.phone_number
    , du.created_at
    , du.updated_at
    , du.address_id
    , da.address
    , da.zipcode
    , da.state
    , da.country
FROM {{ ref('dim_users') }} du
LEFT JOIN {{ ref('dim_addresses') }} da
  ON du.address_id = da.address_id