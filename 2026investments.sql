select round(sum(tiv_2016),2) tiv_2016 from Insurance i inner join 

(select lat,lon, count(*) ct from Insurance group by lat,lon having ct<=1) a

on i.lat=a.lat and i.lon=a.lon 

inner join 

(select tiv_2015, count(*) ct1 from Insurance group by tiv_2015 having ct1>1) b

on i.tiv_2015=b.tiv_2015
