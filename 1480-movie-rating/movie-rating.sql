# Write your MySQL query statement below
(SELECT u.name as results
FROM users u
left join MovieRating mr
on u.user_id= mr.user_id
group by u.user_id
order by count(mr.user_id) desc , u.name
limit 1)
UNION all
(SELECT m.title as results
FROM movies m
left join MovieRating mr
on m.movie_id= mr.movie_id
where extract(year_month from created_at) = 202002
group by m.movie_id
order by avg(mr.rating) desc , m.title
limit 1)