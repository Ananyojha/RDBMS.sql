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













/* SELECT * 
FROM alter.table
WHERE job = 'Analyst' 

Rename default.conf to default.conf.bak

Create a file called server1.conf with this configuration in it:

server { root /home/ubuntu/public_html; location /application1 { } location /images { root /home/ubuntu/data; } }


*/
