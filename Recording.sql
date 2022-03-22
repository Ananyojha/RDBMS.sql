select * from emp;
select * from Dept;
select * from salgrade;

-- *********** JOINS ************



-- Inner join 

SELECT * 
From emp 
Inner join on emp.deptno = dept.deptno

-- right join 


SELECT * 
From emp 
Right join on emp.deptno = dept.deptno


-- left join 


SELECT * 
From emp 
Left join on emp.deptno = dept.deptno


-- Outer Join


SELECT * 
From emp 
Full join on emp.deptno = dept.deptno


-- Cross join 

SELECT * 
From emp,dept


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
