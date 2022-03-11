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
