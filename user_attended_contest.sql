select 
contest_id, 
round((count(distinct u.user_id))*100/ (select count(distinct user_id) from Users ),2) as percentage 

from Users u 

inner join Register r 

on u.user_id=r.user_id group by contest_id 
ORDER BY percentage DESC, contest_id ASC

