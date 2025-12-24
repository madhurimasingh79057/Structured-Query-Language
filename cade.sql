create database company;

use company;

create table employee(id int not null primary key,
name varchar (50),
age int not null,
gender varchar (1),
phone int ,
department varchar(20),
salary int,
experiance int);

select * from employe;

insert into employee(id,name,age,gender,phone,department,salary,experiance)
values(1,"Madhurima",18,"F",790571902,"HR",25000,5),
(2,"Shiva",19,"M",933620524,"Finance",35000,6),
(3,"Deepu",21,"M",639300256,"IT",40000,4),
(4,"Deepa",25,"F",983874695,"HR",20000,2),
(5,"Vikas",20,"M",972153467,"Finance",28000,3);

select * from employe;

#change column name
alter table employee change experiance experience int;

#add column
alter table employee add gmail_id varchar (50);

#change table name
alter table employee rename employe;

#update code
set sql_safe_updates=0;

#update syntax
update employe
set gmail_id="Madhu@gmail.com"
where id=1;

update employe
set gmail_id="shiva@gmail.com"
where id=2;

update employe
set gmail_id="deepu@gmail.com"
where id=3;

update employe
set gmail_id="deepa@gmail.com"
where id=4;

update employe
set gmail_id="vikas@gmail.com"
where id =5;

#select syntax
select id,name,age from employe where age>19;

select id ,name,age,phone from employe where phone!=790571902;
 
select * from employe where name= "shiva";

alter table employe add column city varchar(30);
alter table employe modify column city varchar(30);

select * from employe;

 #drop(column)
alter table employe drop city;

#Logical operators
#use and

select * from employe
where id<=2 and id<=5;

select * from employe
where id>=2 and id <=5;

select * from employe
where age>=19 and age >=25;

#Select with (AND & OR) operators syntax.
select id,name,age,phone,salary from employe
where age>=18 and phone>=790571902 and gmail_id="vikas@gmail.com";

#select with In operator
select id,name,age,gender,salary from employe
where id in (1,2,3);

select * from employe
where name in ("shiva","vikas","madhurima");

select * from employe 
where experience in (6,4,5);
 
#Select with like & not like operator(a%,%a,%a%,a%m,_a%,__a%,_oy)

select id ,name,age,gender from employe
where name like "%s";   #end with s

select* from employe 
where name like"m%";  # start with m

select * from employe
where name like "%i%";  # have i in any position

select * from employe
where name like "_h%";    # h in the second position 

select * from employe
where name like "__e%";   #e in the third position

select* from employe 
where name like "%p_";    #p in the second last position

select * from employe
where name like "m%a";   #start with m & end with a 

select* from employe
where name like "s%a";  #start with s & end with a

select * from employe;