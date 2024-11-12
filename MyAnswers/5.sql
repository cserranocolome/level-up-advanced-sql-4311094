/*
Least and most expensive car sold by each employee this year
*/

SELECT e.firstName, e.lastName, MIN(s.salesAmount) AS minimumSale, MAX(s.salesAmount) AS maximumSale 
FROM sales AS s
JOIN employee AS e
ON e.employeeId = s.employeeId
WHERE soldDate LIKE '2022-%'
GROUP BY e.employeeId
