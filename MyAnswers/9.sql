/*
Find all sales where the car purchased was electric, using subquery
*/

SELECT *
FROM sales
WHERE inventoryId IN (
  SELECT inventoryId
  FROM inventory
  WHERE modelId IN (
    SELECT modelId
    FROM model
    WHERE EngineType = 'Electric'))
