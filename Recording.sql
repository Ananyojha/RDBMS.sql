select * from emp;
select * from Dept;
select * from salgrade;

-- *********** JOINS ************











-- Display the names and job titles of all employees with the same job as Jones.
select ename,job
from Emp
where job = (select job from emp where ename = 'jones')



-- List the employee details who earn highest salary for their job.
SELECT ename
FROM Emp
WHERE Sal IN (SELECT Max(sal) FROM
emp group by Deptno);

/*
Correlated subqueries are used for row-by-row processing. Each subquery is executed once for every row of the outer query.

*/

SELECT last_name, salary, department_id
 FROM employees outer
 WHERE salary >
                (SELECT AVG(salary)
                 FROM sal
                 WHERE department_id =
                        outer.department_id);
