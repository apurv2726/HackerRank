/*
Enter your query here.
*/

With my_cte as 
(
    select 
    lat_n,
    row_number() over (order by lat_n) as rn,
    count(*) over () as total_rows
    from station
)

select round(avg(lat_n),4) 
from my_cte 
where rn in 
(
   floor ((total_rows+1)/2),
   floor ((total_rows+2)/2) 
);
