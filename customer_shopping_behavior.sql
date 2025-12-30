use customer_behavior;
select * from customer
LIMIT 100;

select gender, sum(purchase_amount) as Net_Revenue
from customer
group by gender;

select customer_id, purchase_amount
from customer
where discount_applied = "Yes" and purchase_amount >= (select avg(purchase_amount) from customer);

select item_purchased, round(avg(review_rating),2) as Net_rating
from customer 
group by item_purchased
order by Net_rating Desc
LIMIT 5;

select shipping_type, round(avg(purchase_amount),2) as Avg_Value
from customer
where shipping_type in ("Express","Standard")
group by shipping_type;

select subscription_status, round(avg(purchase_amount),2) as Net_Sales,
count(customer_id) as Number_of_Customers,
Sum(purchase_amount) as Total_Revenue
from customer
group by subscription_status
order by total_revenue desc;

select item_purchased , 
round(sum(case when discount_applied = "Yes" then 1 else 0 END)/count(*)*100,2) as Discount_percentage
from customer 
group by item_purchased
order by Discount_percentage desc
LIMIT 7;

with customer_type as(     #cte - common table expression - used as a virtual table for duration of one query or a simple table with a temporary view
select customer_id, previous_purchases,
case
	when previous_purchases = 1 then "New"
    when previous_purchases between 2 and 10 then "Returning"
    else "Loyal" 
    end as "Customer_segment"
from customer 
)
select Customer_segment, count(*) as Number_of_Customers
from customer_type
group by customer_segment;

with item_list as(
select item_purchased, category, count(item_purchased),
row_number() over (partition by category order by count(item_purchased) DESC) as item_rank
from customer
group by category, item_purchased
)
select * from item_list
where item_rank <= 3;

select age_group, sum(purchase_amount) as Total_Revenue
from customer 
group by age_group
order by Total_Revenue DESC;


