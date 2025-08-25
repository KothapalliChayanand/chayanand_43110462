create database name;
use name;
create table category(
cid int primary key,
cname varchar(25) not null
);
insert into category (cid,cname) values
(1001,'electronics'),
(1002,'furniture'),
(1003,'fashion');
select * from category;
create table products(
pid int primary key,
pname varchar(25) not null,
cid int not null ,
foreign key (cid) REFERENCES category (cid)
);
insert into products(pid,pname,cid) values 
( 101,'ear pods',1001),
(102,'dinning table',1002),
(103,'mobiles',1001),
(104,'shoes',1003);
select * from products;