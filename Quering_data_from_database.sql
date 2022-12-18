SELECT ID, Age, Name
FROM tablename;


-- ----------- SELECT STATEMENT - ------------

USE sql_store;



SELECT *
FROM customers;


SELECT points, first_name, last_name
FROM customers


-- ORDER CLAUSE


SELECT first_name, last_name, points
FROM customers
ORDER BY points DESC


SELECT * 
FROM customers


SELECT first_name, last_name, points, birth_date
FROM customers
WHERE birth_date > '1900-01-01'
ORDER BY points DESC

-- NB: SFWO


-- SELECT Detail - -

SELECT first_name, 
			   last_name, 
               points, 
               (points*10)-5,
               (points*10)-5 AS operations
FROM customers

-- BODMAS


SELECT * 
FROM customers



SELECT* 
FROM order_items



SELECT product_id, 
			quantity, 
			unit_price, 
            quantity*unit_price AS price, 
            round((quantity*unit_price)-(quantity*unit_price)*0.05,2) AS discount
FROM order_items


-- DISTINCT

SELECT DISTINCT state
FROM customers


-- ---------------				WHERE Clause In Details  -------------


SELECT * 
FROM customers
WHERE points > 2000

-- Comparison operator

-- <
-- <=
-- >
-- >=
-- != or <>

SELECT * 
FROM customers
WHERE state = 'VA'


-- 

SELECT * 
FROM customers
WHERE birth_date > '1990-01-01'



-- --------- 							AND, OR, and NOT operators   -------------


SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' AND city = 'Chicago'


-- OR

SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' OR city = 'Chicago'


-- Combined AND nad OR


SELECT * 
FROM customers
WHERE birth_date > '1990-01-01' AND city = 'Chicago' AND points > 1000


-- NOT


SELECT * 
FROM customers
WHERE NOT(birth_date > '1990-01-01' OR city = 'Chicago' AND points <1000)



SELECT*
FROM customers
WHERE NOT(birth_date <='1990-01-01' AND points <=500)


SELECT*
FROM customers
WHERE birth_date >'1990-01-01' OR points >500



-- IN

SELECT *
FROM customers
WHERE state IN ( 'FL' ,'VA' ,'GA')

-- BETWEEN 
SELECT * 
FROM customers
WHERE points >=1000 AND points <= 3000


--

SELECT * 
FROM customers
WHERE points BETWEEN 1000 AND 3000

-- LIKE


SELECT *
FROM customers
WHERE last_name LIKE 'b%'

SELECT *
FROM customers
WHERE last_name LIKE 'brush%'


SELECT *
FROM customers
WHERE phone LIKE '7%'

SELECT *
FROM customers
WHERE last_name LIKE '%b%'

-- ben
SELECT *
FROM customers
WHERE last_name LIKE 'b______y'


-- REGEXP: Reqular Expression

SELECT *
FROM customers
WHERE last_name REGEXP 'b'

-- 

SELECT *
FROM customers
WHERE last_name REGEXP '^b'

-- 

SELECT *
FROM customers
WHERE last_name REGEXP 'y$'

SELECT *
FROM customers
WHERE last_name REGEXP 'y|s'


SELECT *
FROM customers
WHERE last_name REGEXP 'brus|mac|se'

-- e in their last name, before 'e' ge,se,ie


SELECT *
FROM customers
WHERE last_name REGEXP '[gsi]e'

-- 
SELECT *
FROM customers
WHERE last_name REGEXP '[g-m]e'

-- REGEXP
-- ^ begining of a string
-- $ to indicate the end of a string
-- | to indical logical OR
-- [a,d,b] to indicate combination of characters before or after a letter
-- [a-i] to indicate combination of characters before or after a letter



-- IS NULL 

SELECT*
FROM customers
WHERE phone IS NULL

--

SELECT*
FROM customers
WHERE phone IS NOT NULL


-- ORDER BY operator

SELECT *
FROM customers
ORDER BY first_name DESC

--

SELECT *
FROM customers
ORDER BY POINTS DESC


SELECT*
FROM customers
ORDER BY state, first_name
--

SELECT first_name, state
FROM customers
ORDER BY state, first_name


-- LIMIT operator

SELECT*
FROM customers
LIMIT 5

--
SELECT *
FROM customers
LIMIT 5,5
