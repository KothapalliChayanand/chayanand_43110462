show databases;
create database sathyabama;
use sathyabama;
show tables;
create table cse(
sid int,
sname varchar(30),
srno int,
smarks int
);
show tables;
show tables from sathyabama;
desc cse;
select * from cse;
alter table cse
drop column smarks;
desc cse;

create table ece(
sid int,
sname varchar(100),
srno int,
smarks int,
scity varchar(100)
);
desc ece;
select * from ece;
select * from cse;

insert into ece
values(1,"abc",10,90,"Chennai");
insert into ece
values
(2,"def",11,80,"Chennai"),
(3,"ghi",12,85,"Banglore"),
(4,"jkl",13,50,"Hyderabad");
select * from ece;

insert into cse
values
(1,"xyz",20),
(2,"uvw",21),
(3,"rst",22);
select * from cse;

alter table ece
drop column smarks;
select * from ece;

alter table ece
add column age int default 18;
select * from ece;

update ece
set scity = "Banglore"
where sid = 1;
select * from ece;

alter table ece
change age sage int;
select * from ece;

alter table ece
add column smarks int ;
insert into ece (smarks)
values
(80),
(70),
(60),
(90);
DELETE FROM ece 


