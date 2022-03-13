[MS DOCS -- T SQL](https://docs.microsoft.com/en-us/sql/t-sql/lesson-1-creating-database-objects?view=sql-server-ver15)

## What and Why RDBMS 


## Structure 
![]

## Schema on read 

![](https://media-geeksforgeeks-org.cdn.ampproject.org/ii/w680/s/media.geeksforgeeks.org/wp-content/uploads/20201013102054/Hadoop_Schema_on_Read.png)

[REFER GFG](https://www.geeksforgeeks.org/what-is-schema-on-read-and-schema-on-write-in-hadoop/)

## Common terms 

SQL Server uses schemas to logically groups tables and other database objects. In our sample database, we have two schemas: sales and production. The sales schema groups all the sales-related tables while the production schema groups all the production-related tables.

constraints are the set of rules that ensures that when an authorized user modifies the database they do not disturb the data consistency and the constraints are specified within the DDL commands like “alter” and “create” command.

SQL server storage engine is software used to create, read and update data between the disk and memory. The SQL server maps the database with files that store database objects, tables and indexes

------_---------

There is no concept of a first row, a second row, or a last row. Elements may be accessed (and retrieved) in any order. If you need to return results in a certain order, you must specify it explicitly by using an ORDER BY clause in your SELECT query.

FQDN -- Server1.StoreDB.Sales.Order

When working with tables within the context of a single database, it's common to refer to tables (and other objects) by including the schema name. For example, Sales.Order

SQL statements are grouped together into several different types of statements. These different types are:

Data Manipulation Language (DML) is the set of SQL statements that focuses on querying and modifying data. DML statements include SELECT, the primary focus of this training, and modification statements such as INSERT, UPDATE, and DELETE.

Data Definition Language (DDL) is the set of SQL statements that handles the definition and life cycle of database objects, such as tables, views, and procedures. DDL includes statements such as CREATE, ALTER, and DROP.

Data Control Language (DCL) is the set of SQL statements used to manage security permissions for users and objects. DCL includes statements such as GRANT, REVOKE, and DENY


## Basics 

- `Projection vs Selection` -- Projection means choosing which columns (or expressions) the query shall return.

Selection means which rows are to be returned.

if the query is
```sql
select a, b, c from foobar where x=3;
```
then "a, b, c" is the projection part, "where x=3" the selection part.

- `operators in SQL` : What is an Operator in SQL?
An operator is a reserved word or a character used primarily in an SQL statement's WHERE clause to perform operation(s), such as comparisons and arithmetic operations. 

- `aggregation in SQL` : "An aggregate function performs a calculation on a set of values, and returns a single value. Except for COUNT(*), aggregate functions ignore null values. Aggregate functions are often used with the GROUP BY clause of the SELECT statement.

All aggregate functions are deterministic."
 [More in MS DOCS](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql?view=sql-server-ver15#:~:text=An%20aggregate%20function%20performs%20a,All%20aggregate%20functions%20are%20deterministic.)

**Aggerator Example** --
```sql
select count(Distinct CarName) from CAR -- count no. of rows with distinct values
select CARID, CarName from CAR group by CarName,CARID order by CARID -- confirmm the result with this followed by select * from CAR
```

`AS for renaming Purpose` -
```sql
-- get the answer of the count clause and avg cluase under respective column name
select count(*) as 'total rows', AVG(CARID) as 'avg value' from CAR
```
**Basic operators with select**
```sql
-- we use `AS` because it will create new column with new values in there 
SELECT (CARID*2)+1 as '2x carid',CarName FROM CAR
-- confirm your results
select * from CAR
```
**Group by to group the duplicate entries together**--

```sql
SELECT
    city,
    COUNT (customer_id) customer_count -- renaming the new column
FROM
    sales.customers
GROUP BY
    city
ORDER BY
    city;
```

In this example, the GROUP BY clause groups the customers together by city and the COUNT() function returns the number of customers in each city.
## Data types in SQL
[tutorials point](https://www.tutorialspoint.com/sql/sql-data-types.htm])

## SQL COMMNADS 


![](https://www.sqlservertutorial.net/wp-content/uploads/SQL-Server-OFFSET-FETCH.png)

`Example` -- To get the top 10 most expensive products you use both OFFSET and FETCH clauses:
```sql
SELECT
    product_name,
    list_price
FROM
    production.products
ORDER BY
    list_price DESC,
    product_name 
OFFSET 0 ROWS 
FETCH FIRST 10 ROWS ONLY;

```
## Having 
The HAVING clause is often used with the GROUP BY clause to filter groups based on a specified list of conditions.

```sql
SELECT
    select_list
FROM
    table_name
GROUP BY
    group_list
HAVING
    conditions;

```
