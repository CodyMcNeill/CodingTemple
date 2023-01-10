-- BASIC QUERY

-- SELECT ALL RECORDS FROM THE ACTOR TABLE

SELECT * FROM actor;

SELECT first_name, last_name FROM actor;

SELECT last_name, first_name FROM actor;

SELECT * FROM actor WHERE first_name = 'Nick';

SELECT * FROM actor WHERE first_name LIKE 'Nick';

-- % sign acts as a wildcard for the LIKE
SELECT * FROM actor WHERE first_name LIKE 'N%';

-- _ sign acts as a single wildcard
SELECT * FROM actor WHERE first_name LIKE 'K___%n';

-- Comparing operators
-- GREATER THAN >
-- LESS THAN <
-- GREATER OR EQAUL TO >=
-- LESS OR EQUAL TO <=
-- NOT EQUAL <>

SELECT * FROM payment;

SELECT customer_id, amount FROM payment WHERE amount > 4.99;

SELECT DISTINCT customer_id FROM payment WHERE amount > 10.00
ORDER BY amount DESC;

SELECT first_name, last_name, email FROM customer WHERE customer_id = 341

--Find Distinct Customers (get rid of duplicates)
-- This gives us total amount
SELECT SUM(amount)
FROM payment 
WHERE amount > 10.00;

--I want total for each customer
SELECT SUM(amount), customer_id
FROM payment 
WHERE amount > 10.00
GROUP BY customer_id
ORDER BY SUM(amount) DESC;

--Different SQL aggregators are
--SUM(), AVG(), COUNT(), MIN(), MAX()
--When using an aggregator, you always need a Group By for other search parameters such as above
SELECT SUM(amount)
FROM payment
WHERE customer_id = 341;

SELECT AVG(amount)
FROM payment
WHERE amount > 5.99;

SELECT COUNT(*)
FROM payment
WHERE amount > 5.99;

SELECT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

SELECT MIN(amount) AS smallest_amount_paid
FROM payment;

SELECT MAX(amount) AS most_amount_paid
FROM payment;

SELECT customer_id, SUM(amount) 
FROM payment
WHERE customer_id BETWEEN 70 AND 79
GROUP BY customer_id
HAVING SUM(amount) > 150
ORDER BY customer_id
LIMIT 2
OFFSET 1;

