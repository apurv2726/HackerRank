/*
Enter your query here.
*/
select 
case 
    when (a+b<=c) or (b+c<=a) or (c+a<=b) then 'Not A Triangle'
    when a=b and b=c and c=a then 'Equilateral'
    when a!=b and b!=c and c!=a then 'Scalene'
    else 'Isosceles'
end
from triangles;
