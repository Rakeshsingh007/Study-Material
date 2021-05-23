CREATE TABLE salgrade(
grade int not null primary key,
losal decimal(10,2),
hisal decimal(10,2));

CREATE TABLE dept(
deptno int not null primary key,
dname varchar(50) not null,
location varchar(50) not null);

CREATE TABLE emp(
empno int not null primary key,
ename varchar(50) not null,
job varchar(50) not null,
mgr int,
hiredate date,
sal decimal(10,2),
comm decimal(10,2),
deptno int not null);

insert into dept values (10,'Accounting','New York');

insert into dept values (20,'Research','Dallas');

insert into dept values (30,'Sales','Chicago');

insert into dept values (40,'Operations','Boston');



insert into emp values (7369,'SMITH','CLERK',7902,'13-06-1993',800,0.00,20); 

insert into emp values (7499,'ALLEN','SALESMAN',7698,'15-08-1998',1600,300,30);

insert into emp values (7521,'WARD','SALESMAN',7698,'26-03-1993',1250,500,30); 

insert into emp values (7566,'JONES','MANAGER',7839,'31-10-1993',2975,null,20); 

insert into emp values (7698,'BLAKE','MANAGER',7839,'11-06-1993',2850,null,30); 

insert into emp values (7782,'CLARK','MANAGER',7839,'14-05-1993',2450,null,10); 

insert into emp values (7788,'SCOTT','ANALYST',7566,'05-03-1993',3000,null,20); 

insert into emp values (7839,'KING','PRESIDENT',null,'09-06-1993',5000,0,10);

insert into emp values (7844,'TURNER','SALESMAN',7698,'04-06-1993',1500,0,30);

insert into emp values (7876,'ADAMS','CLERK',7788,'04-06-1993',1100,null,20);

insert into emp values (7900,'JAMES','CLERK',7698,'23-06-1993',950,null,30);

insert into emp values (7934,'MILLER','CLERK',7782,'21-01-1993',1300,null,10);

insert into emp values (7902,'FORD','ANALYST',7566,'05-12-1993',3000,null,20);

insert into emp values (7654,'MARTIN','SALESMAN',7698,'05-12-1993',1250,1400,30);


insert into salgrade values (1,700,1200);

insert into salgrade values (2,1201,1400);

insert into salgrade values (3,1401,2000);

insert into salgrade values (4,2001,3000);

insert into salgrade values (5,3001,99999);