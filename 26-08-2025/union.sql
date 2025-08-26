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
		(001, 'Chayanand', 'k', 100000,  'HR'),
		(002, 'kiran', 'kumar', 80000, 'Admin'),
		(003, 'kishore', 'g', 300000,  'Admin'),
		(005, 'Nagi', 'reddy', 500000, 'Admin'),
		(006, 'Nani', 'K', 200000, 'Account'),
		(007, 'Lakhan', 'Sharma', 75000, 'Account');
        select first_name from worker where department not in ('Admin','HR') and salary between 70000 and 300000;
        select first_name from worker where  first_name like 'V_%' and salary >= 200000;
        select first_name from worker where department != 'admin' and salary < 100000;
        select min(salary) as lowestSalaryPerson from worker; 
        select max(salary) as highestSalaryPerson from worker; 
        select count(first_name) as numberOfWorkers from worker;
        select sum(salary) as sumOfSalary from worker; 
        select avg(salary) as averageOfSalary from worker;
        select avg(salary)as averageOfSalaryForAdmin from worker where department = 'Admin';
        select sum(salary) as SalaryForHRandAdminDepts from worker where department in ('HR','Admin');
	    select sum(salary) as SalaryForHRandAdminDepts from worker where department in ('HR','Admin');
        select count(first_name) from worker where first_name like 'v_%';
        select sum(salary) from worker where salary between 50000 and 200000;
        select first_name from worker union select first_name from worker;
        select first_name from worker union all select first_name from worker;
        select first_name, salary,
        case
			when salary >=300000 then "rich"
            when salary >=100000 and salary <= 300000 then "middle class"
			else "poor"
            end
            as status
            from worker;
            
            