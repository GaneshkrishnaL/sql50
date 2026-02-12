select
case when id%2=0 then id-1
when id%2=1 AND id=(select MAX(id) from Seat) then id
else id+1
END as id, student from Seat order by id asc
