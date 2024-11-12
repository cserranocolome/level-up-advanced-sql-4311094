/*
Sales report showing number of cars sold this month and last month
*/

SELECT 
  SUBSTR(soldDate,1,7) AS monthSold,
  COUNT(salesID) AS carsSold,
  LAG(COUNT(salesID),1,0) OVER calMonth AS LastMonthCarsSold
FROM sales
GROUP BY monthSold
WINDOW calMonth AS (ORDER BY SUBSTR(soldDate,1,7))
ORDER BY monthSold