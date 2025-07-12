# Write your MySQL query statement below
SELECT employee_id , department_id
FROM employee
WHERE primary_flag='Y'
group by employee_id
UNION
SELECT employee_id , department_id
FROM employee
group by employee_id
HAVING count(employee_id)=1