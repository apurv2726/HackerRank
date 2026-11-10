/*
Enter your query here.
*/


(select city,  char_length(city) from station 
order by char_length(city) asc, city asc limit 1)
union all
(select city,  char_length(city) from station 
order by char_length(city) desc, city asc limit 1);
