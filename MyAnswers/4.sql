/*
Total number of cars sold by each employee
*/

SELECT e.firstName, e.lastName, COUNT(salesId) AS numberSales
FROM employee AS e
JOIN sales AS s
ON s.employeeId = e.employeeId
GROUP BY e.employeeId
ORDER BY numberSales DESC