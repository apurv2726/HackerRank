/*
Enter your query here.
*/

select distinct(city) from station 
where lower(city) regexp '^[^aieou]'
or lower(city) regexp '[^aeiou]$';
