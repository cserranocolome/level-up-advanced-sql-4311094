/*
List of employees who have made more than five sales this year
*/

SELECT e.firstName, e.lastName, COUNT(salesId) AS numberSales
FROM sales AS s
JOIN employee AS e
ON e.employeeId = s.employeeId
WHERE soldDate LIKE '2022-%'
GROUP BY e.employeeId
HAVING numberSales>5
ORDER BY numberSales