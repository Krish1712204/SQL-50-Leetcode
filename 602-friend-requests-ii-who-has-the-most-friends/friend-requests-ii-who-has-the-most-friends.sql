# Write your MySQL query statement below
SELECT id, count(id) as num from
(SELECT requester_id as id from RequestAccepted
UNION all
SELECT accepter_id as id from RequestAccepted) temp
group by id
order by num desc limit 1