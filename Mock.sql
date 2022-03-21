/* 
*******************  JOINS  *******************
*/

-- CREATE ENVIRONMENT

CREATE SCHEMA hr;

CREATE TABLE hr.candidates(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);

CREATE TABLE hr.employees(
    id INT PRIMARY KEY IDENTITY,
    fullname VARCHAR(100) NOT NULL
);


INSERT INTO 
    hr.candidates(fullname)
VALUES
    ('John Doe'),
    ('Lily Bush'),
    ('Peter Drucker'),
    ('Jane Doe');


INSERT INTO 
    hr.employees(fullname)
VALUES
    ('John Doe'),
    ('Jane Doe'),
    ('Michael Scott'),
    ('Jack Sparrow');

/* CHECK TABLES :

SELECT * FROM hr.candidate 
SELECT * FROM hr.employees

*/

-- Question 

-- ************ USING INNER JOIN ************

SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    INNER JOIN hr.employees e 
        ON e.fullname = c.fullname;

-- Question

-- ********* USING LEFT JOIN ***********

SELECT  
	c.id candidate_id,
	c.fullname candidate_name,
	e.id employee_id,
	e.fullname employee_name
FROM 
	hr.candidates c
	LEFT JOIN hr.employees e 
		ON e.fullname = c.fullname;


-- Question

-- ********* USING RIGHT JOIN ***********

SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    RIGHT JOIN hr.employees e 
        ON e.fullname = c.fullname;


-- Question

-- ********** USING  FULL JOIN  **********

SELECT  
    c.id candidate_id,
    c.fullname candidate_name,
    e.id employee_id,
    e.fullname employee_name
FROM 
    hr.candidates c
    FULL JOIN hr.employees e 
        ON e.fullname = c.fullname;


-- ****** USING  CROSS JOIN *********

TABLE SHOWS ERROR WITHOUT SPECIFING IN FROM


-- ******** SUBQUERY ********




/* SELECT * 
FROM alter.table
WHERE job = 'Analyst' 

Rename default.conf to default.conf.bak

Create a file called server1.conf with this configuration in it:

server { root /home/ubuntu/public_html; location /application1 { } location /images { root /home/ubuntu/data; } }


*/
