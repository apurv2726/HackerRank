/*
Enter your query here.
*/

with recursive print_triangle as (
    select 1 as n
    union all
    select n+1 from print_triangle
    where n<20
    
)

select repeat('* ',n) from print_triangle;
