

##1. view order_details table 
select * from order_details;


##2. what is the date range of the table

SELECT min(order_date) minDate , max(order_date) As maxDate from order_details;


##3.how many orders were made within this date range
select Count( distinct order_id)As num_orders from order_details;

##4.how many items were ordered within this date range?
select Count(*) num_items from order_details;


##5. wich order has the most number of items?
 Select order_id , count(item_id) As num_items from order_details
group by order_id
order by num_items DESC;

##6. how many orders had more than 12 items?
Select Count(*) from 
 (Select order_id , count(item_id) As num_items from order_details
group by order_id
HAVING num_items > 12) AS num_orders;