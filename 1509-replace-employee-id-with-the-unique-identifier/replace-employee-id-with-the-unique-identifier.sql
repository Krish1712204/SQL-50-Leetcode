# Write your MySQL query statement below
SELECT eui.unique_id, e.name
FROM Employees e
LEFT JOIN EmployeeUNI eui
ON e.id = eui.id;
