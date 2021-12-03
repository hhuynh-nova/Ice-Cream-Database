-- UPDATE Queries
--Increase Lauren's salary to $39.000

UPDATE employee SET salary = '39000' WHERE ssn = '786941234';

-- SELECT Queries
-- Find customers who have spent at least 5 dollars in a single order and list their name and price of order
-- Order by price descending

SELECT f_name, price FROM customer c, cust_order o WHERE o.price >= '5' AND o.cust_ID = c.cust_ID ORDER BY o.price DESC;

-- DELETE Queries
-- Cancel Order Number #45678

DELETE FROM cust_order WHERE orderno = '45678';
