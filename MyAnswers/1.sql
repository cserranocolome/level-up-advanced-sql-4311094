/*
First and last names of all employees and their managers
*/

SELECT 
  e.firstName AS 'Employee first name',
  e.lastName AS 'Employee last name',
  m.firstName AS 'Manager first name',
  m.lastName AS 'Manager last name'
FROM
  employee AS e
JOIN
  employee as m
ON
  e.managerId = m.employeeId
