--Postgres Data Type:
	Text Types -- Char,varchar,Text
	Numeric Types -- Integers, Floating-point numbers
	Dates and Times
	XML
	JSON
	Boolean
	IPADDRESS -- cider, Inet, macaddr
	Boolean
	UUID
	Array
	JSON
------------------------------------------------------------------
--PSQL
	Window = Search in search bar
	Ubuntu = Switch as postgres user then type psql
------------------------------------------------------------------
--PSQL commands
	\l to list data in psql
	\c <db_name> to connect to db
	
	SELECT version();
------------------------------------------------------------------
--user creation command:

	CREATE USER [user]	Command to Create a User

	ALTER USER role_specification	Altering Existing User Permissions

	ALTER USER [user]	Revoking Permissions

	ALTER USER [user name] WITH SUPERUSER	Assigning Permission

	DROP USER [user]	Command to Delete a User
-------------------------------------------------------------------
--DataBase Query/Commands:
	CREATE DATABASE <db_name>;
	drop database [IF EXISTS] <db_name>;
-------------------------------------------------------------------
DDL commands:

--Table commands:

CREATE TABLE COMPANY(
   ID INT PRIMARY KEY     NOT NULL,
   NAME           TEXT    NOT NULL,
   AGE            INT     NOT NULL,
   ADDRESS        CHAR(50),
   SALARY         REAL
);

drop table COMPANY
drop table COMPANY1, COMPANY2

--Schema command:

CREATE SCHEMA myschema;
DROP SCHEMA myschema;
DROP SCHEMA myschema CASCADE;

-- Insert command:
insert into company(id,name,age,address) VALUES (50,'rakesh',27.5,'this is mine address');
insert into company VALUES (5,'rakesh',27.5,'this is mine address',100,'2012-09-09')
insert into company VALUntES (5,'rakesh',27.5,'this is mine address',100,'2012-09-09') ,(6,'rakesh',27.5,'this is mine address',100,DEFAULT);

-- Update command:
update company set age=500, name='singh' where id =500;

-- delete command:
delete from company where id=6;


--------------------------------------------------------------------
--Like syntax:
	Percent sign ( %) matches any sequence of zero or more characters.
	Underscore sign ( _)  matches any single character.

	value LIKE pattern
	value NOT LIKE pattern

-- limit and offset:
	LIMIT and OFFSET allow you to retrieve just a portion of the rows

---------------------------------------------------------------------

------------------- DDL ----------------------------------------

CREATE
DROP
TRUNCATE
RENAME
ALTER
MODIFY
ADD
Craete database ======>>> Craete database rss;
Drop database   ======>>> Drop database rss;

Create table rss_table (
id varchar(556),
Name varchar(234),
class_rss varchar(453)
);

create table PRODUCTS2(
ProdID number(38) Primary key,
ProdName varchar2(50) not null,
Qty number(10) check (Qty > 0),
Description varchar2(100)
)

create table LIBRARY (
regno number references students(regno), ----forign key syntax
bookno number references books(bookno),
DOI date,
DOR date
)

CREATE TABLE TAB_COPY AS SELECT * FROM EMP WHERE 1=2  --- To copy only structure of table

create table rss_copy as 
select id,Name,class_rss
from rss_table
where id ='35'


Drop table rss_table
truncate table rss_table 

ALTER table rss_table
add exe varchar(255);


ALTER table rss_table
drop column exe;

ALTER table rss_table
MODIFY exe NUMBER;

RENAME rss_table to rss_table2 -------its used to rename table name

--------------------DML-------------------------

INSERT
UPDATE
DELETE

INSERT into rss_table values(val1,val2,......valn) ------it will insert into all column respctivelly
WHERE [condition]

INSERT into rss_table (col1,col2,.....,coln) -----will insert whichever mentioned in col list
values(val1,val2,......valn)
WHERE [condition]

UPDATE rss_table
SET col1=val1,col2=val2,....coln=valn  --------if no where condition then it will Update all record
WHERE [condition]

DELETE from rss_table -------if no where condition then it will delete all record
where [condition]

----------------------DQL-------------------------

SELECT

SELECT * from rss_table;

----------------------DCL--------------------------

GRANT     GRANT UNLIMITED TABLESPACE TO books_admin;
REVOKE    REVOKE SELECT, UPDATE, INSERT on emp from sami;

----------------------TCL--------------------------

COMMIT
ROLLBACK   
SAVEPOINT
RELEASE

SAVEPOINT savepointname ------checkpoint

ROLLBACK TO SAVEPOINT_NAME ---- it will rollback till here
ROLLBACK ----it will rollback completly
RELEASE SAVEPOINT savepointname  ------it will delete savepointname 

------------------------ROWNUM-----------

SELECT * FROM Customers   ------to get first 3 record from result set
WHERE ROWNUM <= 3;

-------------------column function------

MAX
MIN
COUNT
AVG
SUM

-------------------Special Operators ( IN , BETWEEN , LIKE , IS )-----------

select * from emp
where deptno in (10,20)

select * from emp
where deptno between 10 and 40  ------- here between is inclusive


select * from emp
where MGR like '76%' -----used for pattern matching


select * from emp
where MGR like '76__'-------used for pattern matching

select * from emp
where comm is not null ---- fetching non null column


----------------------Logical Operators ( NOT, AND, OR )-------------

select * from emp 
where ename like '_____' and SAL >1000

select * from emp 
where ename like '_____' or SAL >1000

select * from emp 
where deptno not in (30)

-----------------------(HAVING, DISTINCT)------------------------------------------

select * from emp
where deptno in (10,20)
order by ename desc   ---------------------ORDER BY should be used always as the last statement in the SQL query.

select DISTINCT deptno from emp;  ------fetches unique value of deptno

--------------------------------JOINS------------------------
CROSS JOIN
INNER JOIN
LEFT JOIN
RIGHT JOIN
FULL JOIN
SELF JOIN







	


	
	