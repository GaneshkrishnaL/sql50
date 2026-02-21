# Write your MySQL query statement below
select w.id from Weather w cross join Weather w2 where w.temperature>w2.temperature and datediff(w.recordDate,w2.recordDate)=1
