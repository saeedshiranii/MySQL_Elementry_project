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

-- I Saw at 38:14, i will countinue this course from this point
SELECT * 
FROM Customers 
WHERE points > 3000;

SELECT * FROM Customers WHERE state = 'VA';
SELECT * FROM Customers WHERE state != 'VA';



-- Get the order placed this year

-- this querie has not a right answer
SELECT * 
FROM orders
WHERE order_date >= '2019-01-01';


-- AND NOT OR
SELECT * 
FROM customers
WHERE birth_date >= '1990-01-01' AND points >= 1000;

SELECT * 
FROM customers
WHERE birth_date >= '1990-01-01' OR points >= 1000;


-- OR Oprator 

SELECT * 
FROM customers 
WHERE state NOT IN ('CA', 'VA' );


-- return products with quantity in stuck equal to 49, 38, 72
USE sql_inventory;

SELECT * FROM products 
WHERE quantity_in_stock IN (49, 38, 72);

-- ‌‌‌Between oprator
-- help you to get a range of values
USE sql_store;

SELECT * 
FROM customers
WHERE points BETWEEN 1000 AND 3000;



-- Like oprator

/* % for any number of character  \\\\\\ _ for single character*/

SELECT *
FROM customers
WHERE last_name LIKE '%b%'; -- b is somewhere in her/him last name 


-- get customer who has
	-- in her/his name TRAIL or AVENUE 
    -- has number 9 at the end of phone number
    
SELECT * 
FROM customers
WHERE (address LIKE '%AVENUE%' OR
	   address LIKE '%TRAIL%' ) 
       AND 
       (phone NOT LIKe '%9');
       
       
       
-- SEE the REGEXP at 1:00:00


-- NULL Oprator 
SELECT * 
FROM customers
WHERE phone IS /*NOT*/ NULL;


-- GET the orders that are not shipped.
SELECT * 
FROM orders 
WHERE shipped_date IS NULL;

-- ORDER by oprator

SELECT * 
FROM customers 
ORDER By first_name, phone





      