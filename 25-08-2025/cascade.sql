show databases;
use sathyabama;
show tables;

select * from ece;
select * from cse;

show tables;
create table categories (
  cid int not null primary key,
  cname varchar(30) not null,
  cdes varchar(50) not null
);
create table products (
  pid int not null primary key,
  pname varchar(30) not null,
  pdes varchar(40) not null,
  cid int not null,
  foreign key (cid) references categories (cid)
  on update cascade
  on delete cascade
);
insert into categories (cid, cname, cdes) values
(1, 'mobile', 'good'),
(2, 'watch', 'nice'),
(3, 'laptop', 'fast');
insert into products (pid, pname, pdes, cid) values
(101, 'iphone', 'apple phone', 1),
(102, 'samsung', 'android phone', 1),
(103, 'rolex', 'luxury watch', 2),
(104, 'dell', 'work laptop', 3);

select * from categories;
select * from products;

update categories set cid=10 where cid=1;
delete from categories where cid = 2;