# Write your MySQL query statement below
SELECT Department , Employee , Salary from(
    SELECT d.name as Department , e.name as Employee , e.salary as Salary,
dense_rank() over (partition by d.name order by e.salary desc ) as ranks
from Employee e
left join department d
on e.departmentId = d.id
) temp
where ranks <=3;