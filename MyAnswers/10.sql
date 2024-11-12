/*
List of sales people and rank the car models they've sold the most of.
*/

SELECT 
  employeeId,
  model,
  COUNT(model)
FROM sales as s
JOIN inventory as i
ON s.inventoryId = i.inventoryId
JOIN model as m
ON i.modelId = m.modelId
GROUP BY s.employeeId, m.modelId
ORDER BY employeeId ASC, COUNT(model) DESC

/*
Get only the model that is sold the most per employee
*/

SELECT
  employeeId,
  model,
  MAX(countModel)
FROM (
  SELECT 
    employeeId,
    model,
    COUNT(model) AS countModel
  FROM sales as s
  JOIN inventory as i
  ON s.inventoryId = i.inventoryId
  JOIN model as m
  ON i.modelId = m.modelId
  GROUP BY s.employeeId, m.modelId)
GROUP BY employeeId