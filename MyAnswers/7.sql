/*
Total number of sales per year
*/

SELECT SUBSTR(soldDate,1,4) AS soldYear, count(salesId) AS numberSales
FROM sales
GROUP BY soldYear