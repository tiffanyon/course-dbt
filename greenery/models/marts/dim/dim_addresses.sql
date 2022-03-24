{{
  config(
    materialized='table'
  )
}}

select 
    sa.address_id as address_id
    , sa.address as address
    , sa.zipcode as zipcode
    , sa.state as state
    , sa.country as country

FROM {{ ref('stg_addresses') }} sa