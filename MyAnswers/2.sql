/*
Identify sales people with 0 sales
*/

SELECT
  e.firstName,
  e.lastName
FROM 
  employee as e
LEFT JOIN
  sales as s
ON 
  e.employeeId = s.employeeId
WHERE 
  s.salesID IS NULL AND e.title = 'Sales Person'
