USE restaurant_db;

 # 1. View the menu item table 
    SELECT * FROM menu_items;
    
# 2. number of items in the menu 
   SELECT COUNT(*) from menu_items;
   
   # 3. what are the least and most expensive item in the menu
   SELECT * FROM menu_items
   ORDER BY price;    # least item is Edamame it is price = 5
   
    SELECT * FROM menu_items
   ORDER BY price DESC  ;          # most item shrimp scampi it is price =19.95
   
   
   #4. how many italian dishes in the menu 
   
   SELECT Count(*) As total_italian_dishes FROM  menu_items
   WHERE category = 'Italian';
   
   
   # 5. what are the least and most expensive italian dishes in the menu
	 SELECT * FROM menu_items
     where category = 'Italian'
	ORDER BY price;     # the least italian dishes are Spaghetti and Fettuccine Alfredo it is price = 14.50 
   
    SELECT * FROM menu_items
     where category = 'Italian'
	ORDER BY price DESC ;     # the most italian dishes are shrimp Scampi it is price = 19.95
    
     #6. How Many dishes in each category 
     
     Select category , COUNT(menu_item_id) AS num_dishes
     FROM menu_items 
     GROUP BY category;
    
    #7. what is average dish price for each category?
    
    Select category , AVG(price) As AveragPrice
     FROM menu_items 
     GROUP BY category
    
    
    
    
    
    
    
    
    
    
   