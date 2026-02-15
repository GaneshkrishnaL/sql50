# Write your MySQL query statement below
select name results from(
select m.user_id, u.name , count(m.rating) as ct from Users u  right join MovieRating m
on u.user_id=m.user_id
group by m.user_id, u.name order by ct desc, name asc limit 1 ) subq1

union all

select title from(
select m.movie_id, u.title , coalesce(avg(m.rating),m.rating) as av from Movies u  right join MovieRating m
on u.movie_id=m.movie_id
WHERE MONTH(created_at) = 2
  AND YEAR(created_at) = 2020
group by m.movie_id, u.title order by av desc, title asc  limit 1) subq2
