# Write your MySQL query statement below

select s.machine_id, round((et-st),3) processing_time 

from 

(select machine_id, avg(timestamp) st from  Activity where activity_type='start' group by machine_id) s 

inner join 

( select machine_id, avg(timestamp) et from Activity where activity_type ='end' group by machine_id) e 

on s.machine_id=e.machine_id;
