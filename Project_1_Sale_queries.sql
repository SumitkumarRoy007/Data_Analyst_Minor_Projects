create database sales_analysis;
use sales_analysis;
-- Displaying the data
select * from sales;

-- 1. overall business performancesqlselect 
select 
  count(*) as Total_orders,
  (sum(total_sales)/10000000) as Total_revenue_Cr,
  round(avg(total_sales)/1000,2) as Avg_order_value_Thousand,
  sum(quantity) as Total_units
from sales;

-- 2. revenue by category and product - what sells most?
select category, product, sum(quantity) as units_sold, round(sum(total_sales)/10000000,2) as Revenue_Cr
from sales
where order_status = 'completed'
group by category, product
order by Revenue_Cr desc limit 10;

-- 3. location and region wise performance
select location, region, count(*) as orders, round(sum(total_sales)/10000000,2) as Revenue_Cr
from sales
where order_status = 'completed'
group by location, region
order by Revenue_Cr desc;

-- 4. Best Salesperson
select salesperson, count(*) as orders_closed, sum(total_sales) as revenue, avg(discount_percent) as avg_discount_given
from sales
where order_status = 'completed'
group by salesperson
order by revenue desc limit 1;

-- 5. loss analysis - why orders are lost?
select Order_status, Lost_Scale, count(*) as no_of_orders, round((sum(total_sales)/10000000),2) as lost_revenue_Cr
from sales
where order_status in ('cancelled','returned')
group by order_status, Lost_Scale
order by no_of_orders desc;

-- 6. lead source and payment mode - which converts best?
select lead_source, payment_mode,
       count(*) as total_orders,
       sum(case when order_status='completed' then 1 else 0 end) as completed,
       round(sum(case when order_status='completed' then 1 else 0 end)*100.0/count(*),2) as conversion_pct
from sales
group by lead_source, payment_mode
order by conversion_pct desc;

-- 7. discount impact - does more discount = more sales?
select 
  case 
    when discount_percent=0 then 'no discount'
    when discount_percent<=5 then '0-5%'
    when discount_percent<=10 then '5-10%'
    else '10%+'
  end as discount_slab,
  count(*) as orders,
  round(avg(total_sales),2) as avg_sale,
  round(sum(total_sales)/10000000,2) as revenue_Cr
from sales
where order_status='completed'
group by discount_slab
order by discount_slab;

-- 8. monthly / yearly seasonality
select year, month, count(*) as orders, round(sum(total_sales)/10000000,2) as revenue_Cr
from sales
where order_status='completed'
group by year, month
order by year, field(month,'jan','feb','mar','apr','may','jun','jul','aug','sep','oct','nov','dec');

-- 9. sales category analysis
select sales_category, count(*) as orders, round(sum(total_sales)/10000000,2) as revenue_Cr, round(avg(quantity),0) as avg_qty
from sales
where order_status='completed'
group by sales_category
order by revenue_Cr desc;

-- 10. top 10 high value customers
select customer_id, customer_name, location, count(*) as orders, sum(total_sales) as total_spent
from sales
where order_status='completed'
group by customer_id, customer_name, location
order by total_spent desc limit 10;









