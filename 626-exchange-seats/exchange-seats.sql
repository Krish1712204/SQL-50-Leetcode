# Write your MySQL query statement below
SELECT 
case 
when id=(select max(id) from seat) and id%2=1 then id
when id%2 =1 then id+1 else id-1 end as id , student
FROM seat
order by id