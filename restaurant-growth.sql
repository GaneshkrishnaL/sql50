with cte as(
select visited_on, sum(amount) over(order by visited_on rows between 6 PRECEDING and current row) as amount,
       Round(avg(amount) over(order by visited_on rows between 6 PRECEDING and current row),2) as average_amount,
       row_number() over(order by visited_on) rn
from (select visited_on, sum(amount) amount from Customer group by visited_on) cu)
select visited_on, amount, average_amount
from cte
where rn > 6;
