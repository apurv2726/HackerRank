/*
Enter your query here.
*/

With recursive nums as 
(
    select 2 as n 
    union all 
    select n+1 from nums 
    where n<1000
)

select GROUP_CONCAT(n1.n order by n1.n SEPARATOR '&')
from nums n1 

where not exists (
    select 1 
    from nums n2 
    where n2.n *n2.n <=n1.n 
    and mod(n1.n,n2.n)=0
    
);
