SELECT 
	first_name, 
    last_name,
    points,
	((points + 10) * 100)/3 AS 'discount'
FROM customers;

USE sql_store;

-- with distinct we can remove duplicate stuff
SELECT DISTINCT state 
FROM customer;

-- EXERCISE
-- Return all products
-- name , unit price , new price (unit price * 1.1)

SELECT  
	name, 
    unit_price, 
    unit_price * 1.1 AS new_price
    
FROM products;

-- I Saw at 38:14, i will countinue this course from this point.
