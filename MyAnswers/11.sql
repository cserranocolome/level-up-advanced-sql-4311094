/*
Sales report showing total sales per month and an annual total.
*/

SELECT
  m.soldYear,
  m.soldMonth,
  m.totalMonth,
  y.totalYear
FROM (
  SELECT 
    SUBSTR(soldDate,1,4) AS soldYear,
    SUBSTR(soldDate,6,2) AS soldMonth,
    SUM(salesAmount) AS totalMonth
  FROM sales
  GROUP BY soldYear, soldMonth) AS m
LEFT JOIN (
  SELECT 
    soldYear,
    soldMonth,
    totalMonth,
    SUM(totalMonth) AS totalYear
  FROM (SELECT 
      SUBSTR(soldDate,1,4) AS soldYear,
      SUBSTR(soldDate,6,2) AS soldMonth,
      SUM(salesAmount) AS totalMonth
    FROM sales
    GROUP BY soldYear, soldMonth)
  GROUP BY soldYear) AS y
ON m.soldYear = y.soldYear