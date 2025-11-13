#Q1.Create a database named company and a table named employees with the following fields:

Create  database company3;

use company3;

 create table employee3(id INT Primary Key,
name VARCHAR(100),
position VARCHAR(100),
salary DECIMAL(10,2),
date_of_joining DATE);

select* from employee3;

#Q2.Insert the following data into the employees table:

Insert into employee3( id,name,position,salary,date_of_joining)
values
(1,"John Doe","Manager",55000.00,"2020-01-15"),
(2,"Jane Smith","Developer",48000.00,"2019-07-10"),
(3,"Alice Johnson","Designer",45000.00,"2021-03-22"),
(4,"Bob Brown","Developer",50000.00,"2018-11-01");

#Q3. Write a query to retrieve all employees who are Developers.

select* from employee3
where position="developer";

#Q4. Write a query to update the salary of Alice Johnson to 46000.00.

update employee3
set salary="46000.00"
where name="Alice johnson";

select * from employee3;

#Q5. Write a query to delete the employee record for Bob Brown.

delete from employee3
where name="Bob brown";

select* from employee3;

#Q6. Write a query to find the employees who have a salary greater than 48000.

select * from employee3
where salary>48000;

select*from employee3;

#Q7. Write a query to add a new column email to the employees table.

alter table employee3 add column email varchar(150);

select*from employee3;

#Q8. Write a query to update the email for John Doe to john.doe@company.com.

update employee3
set email ="john.doe@gmail.com"
where name="john doe";

select*from employee3;

#Q9. Write a query to retrieve only the name and salary of all employees.

select name ,salary
from employee3;

select*from employee3;

#Q10. Write a query to count the number of employees who joined after January 1, 2020.

select count(name) as count_employee
from employee3
where date_of_joining>"2020-01-01";

select * from employee3;

#Q11. Write a query to order the employees by salary in descending order.

select * from employee3
order by salary desc;

select * from employee3;

#Q12.Write a query to drop the email column from the employees table.

alter table employee3 drop column email;

select* from employee3;

#Q13.Write a query to find the employee with the highest salary.

select *from employee3
order by salary desc limit 1;
