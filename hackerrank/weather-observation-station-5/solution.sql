/*
Enter your query here.
*/

/*
(select city,  char_length(city) from station 
order by char_length(city) asc, city asc limit 1)
union all
(select city,  char_length(city) from station 
order by char_length(city) desc, city asc limit 1);
*/

with my_cte as 
(
    select city, char_length(city) as city_length, 
    row_number() over(order by char_length(city), city) as shortest,
    row_number() over (order by char_length(city) desc, city) as longest
    from station 
)

select city, city_length from my_cte 
where shortest=1 or longest =1 
order by city_length;
