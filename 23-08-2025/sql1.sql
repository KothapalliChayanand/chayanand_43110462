CREATE database constrain;
use constrain;
create table details (
	sid int unique not null,
    firstname varchar(25) not null,
    middlename varchar(25),
    lastname varchar(25) not null,
    username varchar(25) not null unique,
    pass varchar(25) not null unique,
    pmno long not null,
    smno long
    );
    insert into details(sid,firstname,middlename,lastname,username,pass,pmno,smno) values
    (43110444,"Kiran","kumar","muralikumar","kk_mk","abcd",990587325,8735120532);
    insert into details(sid,firstname,lastname,username,pass,pmno) values
    (43110462,"Kothapalli","Chayanand","nani_k",1234,8735120532);
    desc details;
    select * from details;
    alter table details modify pass varchar(25) not null;
    desc details;
    insert into details(sid,firstname,middlename,lastname,username,pass,pmno,smno) values
    (43110444,"Kiran","kumar","muralikumar","kk_mk","abcd",990587325,8735120532);