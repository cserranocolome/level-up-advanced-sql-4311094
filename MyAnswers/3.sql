/*
Data of all sales and all customers even if some data has been removed
*/

SELECT *
FROM sales as s
LEFT JOIN customer as c
ON s.customerId = c.customerId
UNION
SELECT *
FROM sales as s
RIGHT JOIN customer as c
ON s.customerId = c.customerId
WHERE s.salesID IS NULL

-- Faster way by using full outer join:
SELECT *
FROM sales as s
FULL OUTER JOIN customer as c
ON s.customerId = c.customerId