create DATABASE ORG123;
SHOW DATABASES;
USE ORG123;
create table worker (
	WORKER_ID INT PRIMARY KEY ,
	FIRST_NAME varchar(25) not null ,
	LAST_NAME varchar(25),
	SALARY INT not null ,
	
	DEPARTMENT CHAR(25)
);

INSERT INTO Worker 
	(WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, DEPARTMENT) VALUES
		(001, 'Monika', 'Arora', 100000,  'HR'),
		(002, 'Niharika', 'Verma', 80000, 'Admin'),
		(003, 'Vishal', 'Singhal', 300000,  'Admin'),
		(005, 'Vivek', 'Bhati', 500000, 'Admin'),
		(006, 'Vipul', 'Diwan', 200000, 'Account'),
		(007, 'Satish', 'Kumar', 75000, 'Account');
select * from worker;
select * from worker where department = 'admin' and salary>=300000;
select * from worker where department != 'admin' and salary<=1000000;
select * from worker where worker_id<=3 or department = 'Account';
select * from worker where FIRST_NAME like '_i_%' or department ='admin';
select  FIRST_NAME from worker where worker_id in (1,4,6,7);
select LAST_NAME   from worker where worker_id not in (1,4,6,7);