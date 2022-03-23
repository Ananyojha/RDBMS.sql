select * from emp;
select * from Dept;
select * from salgrade;



-- *********** JOINS ************



-- Inner join 

SELECT * 
From emp 
Inner join DEPT on emp.deptno = DEPT.DeptNo

-- right join 


SELECT * 
From emp 
Right join dept on emp.deptno = dept.deptno


-- left join 


SELECT * 
From emp 
Left join DEPT on emp.deptno = dept.deptno


-- Outer Join


SELECT * 
From emp 
Full join dept on emp.deptno = dept.deptno


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
Correlated subqueries are used for row-by-row processing. 
Each subquery is executed once for every row of the outer query.

*/

SELECT Ename, sal, hiredate
 FROM emp
 WHERE sal > (SELECT AVG(hisal)
                 FROM SALGRADE)
   
