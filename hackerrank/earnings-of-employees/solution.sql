/*
Enter your query here.
*/

/*
select max(salary*months),count(*) from employee 
where salary*months=(select max(salary*months) from employee);
*/

SELECT
    salary * months AS total_earnings,
    COUNT(*)
FROM employee
GROUP BY salary * months
ORDER BY total_earnings DESC
LIMIT 1;
