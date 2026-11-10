/*
Enter your query here.
*/

select distinct(city) from station 
where lower(city) regexp '^[aeiou].*[aeiou]$';
