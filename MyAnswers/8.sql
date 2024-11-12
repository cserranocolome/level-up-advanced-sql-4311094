/*
Amount of sales per employee for each month in 2021
*/

SELECT 
  e.employeeId,
  e.firstName,
  e.lastName,
  SUM(CASE WHEN s.soldDate LIKE '2021-01-%'
    THEN salesAmount END) AS 'JanSales',
  SUM(CASE WHEN s.soldDate LIKE '2021-02-%'
    THEN salesAmount END) AS 'FebSales'
FROM sales AS s
JOIN employee AS e
ON e.employeeId = s.employeeId
GROUP BY e.employeeId
