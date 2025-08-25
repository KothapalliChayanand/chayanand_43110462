create database name;
use name;
create table details (
sid int primary key,
sname varchar(25) not null,
age int,
check(age >=18 and age <=20),
phno long
);
desc table pricheck;
insert into pricheck (sno,sname,age,phno) values
(1,"Chayanand",19,8555890783),
(2,"Kiran kumar",18,9234058933),
(3,"Kishore",19,9372841709);
select * from details;