##1.combine the menu_item and order_Details into singletable

SELECT * from
 order_details od LEFT JOIN menu_items mi 
 on od.item_id = mi.menu_item_id ;

##2.what was the least and most ordered  items ? what categories were they in ? 

SELECT item_name , category  , count(order_details_id) AS num_purchaes from
order_details od LEFT JOIN menu_items mi 
on od.item_id = mi.menu_item_id  #the most ordered items is hamburger is american
group by item_name ,category      #the least ordered items is Chicken Tacos is mexican
 order by num_purchaes DESC  ;


##3. what was the top 5 orders that spent most money ? 
SELECT order_id ,  sum(price) AS tot_spend from
order_details od LEFT JOIN menu_items mi 
on od.item_id = mi.menu_item_id  
group by order_id       
 order by tot_spend DESC
 limit 5;

##.4 view the details of the heighst spend order ? what insight can you gather from 
SELECT category , count(item_id) as num_items from
 order_details od LEFT JOIN menu_items mi 
 on od.item_id = mi.menu_item_id 
 where order_id= 440
 group by category ;  # heighst spend orders and italian is most heighst in the menu



##.5 view the details of the top 5 heighst spend order? what insight can you gather from 
SELECT category , count(item_id) as num_items from
 order_details od LEFT JOIN menu_items mi 
 on od.item_id = mi.menu_item_id 
 where order_id in (440 , 2075,1957,330,2675)
 group by category ;  
 
 # heighst spend orders and italian is most heighst in the menu


