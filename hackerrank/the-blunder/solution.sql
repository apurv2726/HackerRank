/*
Enter your query here.
*/


with my_cte as (
    select avg(REPLACE(salary, '0', '') + 0) as miscalculation,
    avg(salary) as actual
     from employees
)
select ceil(actual-miscalculation) from my_cte;
