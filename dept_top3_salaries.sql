select  d.name Department,  e.name Employee,  e.salary Salary 

from Employee e inner join 

(select departmentId, dd.name name,  salary, dense_rank() over(partition by departmentId order by salary desc) as rankk from Employee e inner join Department dd on e.departmentId =dd.id ) d 

on e.departmentId = d.departmentId

where d.rankk<=3 and e.salary>=d.salary

group by  Department,  Employee,  Salary 
