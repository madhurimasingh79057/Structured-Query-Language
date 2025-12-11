create database college;

use college;

create table dept(id int primary key,
name varchar (50));

insert into dept (id,name)
values(101,"Sales"),
(102,"Marketing"),
(103,"Finance"),
(104,"HR");

set sql_safe_updates=0;

update dept
set id=105
where id=102;

update dept
set id =111
where id =101;


select * from dept;

create table teacher(id int primary key,
name varchar (50),
dept_id int,
foreign key(dept_id) references dept(id)
on update cascade 
on delete cascade);

insert into teacher (id,name,dept_id)
values(101,"Adam",101),
(102,"eve",102);

select * from teacher;