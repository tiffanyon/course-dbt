What is our user repeat rate?

79.8%

select 
     sum(is_purchased_user) as purchased_users_total
     , sum(is_repeat_purchase_user) as repeat_purchased_users_total
     , sum(is_repeat_purchase_user)/sum(is_purchased_user) as repeat_user_rate
from dbt.dbt_tiffany_o.fact_users_orders_agg

What are good indicators of a user who will likely purchase again? What about indicators of users who are likely NOT to purchase again? If you had more data, what features would you want to look into to answer this question? NOTE: This is a hypothetical question vs. something we can analyze in our Greenery data set. Think about what exploratory analysis you would do to approach this question.

Maybe look into how much was spent on the first purchase or if a promo code was used with first purchase
