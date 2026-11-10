/*
Enter your query here.
*/

/*
select distinct(city) from station where lower(city) regexp '[aeiou]$';
*/

select distinct(city) from station where lower(right(city,1)) in ('a','e','i','o','u');
