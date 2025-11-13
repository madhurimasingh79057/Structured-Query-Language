create database company1;

use company1;

create table sale(sale_id int not null primary key,
product varchar(80),
category varchar (50),
quantity int ,
price int,
region varchar (50),
sales_person varchar (50),
sales_date date);

select*from sale;


insert into sale (sale_id,product,category,quantity,price,region,sales_person,sales_date)
values
(1,"Laptop","Electronics",5,50000,"East","John","2024-05-01"),
(2,"Mobile","Electronics",10,20000,"West","Mary","2024-01-10"),
(3,"Chair","Furniture",20,1500,"East","John","2024-02-15"),
(4,"Table","Furniture",8,5000,"North","Steve","2024-02-18"),
(5,"Laptop","Electronics",7,55000,"South","Mary","2024-03-01"),
(6,"Mobile","Electronics",15,18000,"East","John","2024-03-05"),
(7,"Sofa","Furniture",3,25000,"West","Steve","2024-03-20"),
(8,"Laptop","Electronics",2,52000,"North","Mary","2024-04-02"),
(9,"Chair","Furniture",30,1200,"South","John","2024-04-12"),
(10,"Mobile","Electronics",12,22000,"West","Steve","2024-04-15");


set sql_safe_updates=0;

update sale
set sales_date="2024-01-05"
where sale_id=1;


select * from sale;

#1.Find total sales amount for each region.

select region ,sum(quantity*price) as "sales_amount"
from sale
group by region;

#2.Find total quantity sold by each sales_person.

select  sales_person, sum(quantity)  as "total_ quantity"
from sale 
group by sales_person;

#3.Show categories where total quantity sold is more than 30.

select category ,sum(quantity) as "total_quantity"
from sale 
group by category
having sum(quantity)>30;

#4.Find total revenue by each categories.

select category,sum(quantity*price) as "total revenue"
from sale
group by category;

#5. find sales_person who sold total quantity more than 20.

select sales_person,sum(quantity) as "total quantity"
from sale 
group by sales_person 
having sum(quantity)>20;

#Q6 find the region-wise average sale price.

select region, avg(price) as "region_wise"
from sale
group by region;

#Q7 find total  revenue for each salesperson and show only those having revenue above 60000.

select sales_person,sum(price) as "above"
from sale
group by sales_person
having sum(price)>60000;

#Q8 find how many many product each category has.
 
 select category,count(*) as "total_category"
 from sale 
 group by category;
 
 select * from sale;
 
#Q9. find total sales per month
select monthname(sales_date) as "Month", sum(price * quantity) as Total_sale
from sale
group by monthname(sales_date)
order by monthname(sales_date);

select month(sales_date) as "Month", sum(price * quantity) as Total_sale
from sale
group by month(sales_date);


alter table sale modify sales_date date; 

select * from sale;

 #Q10. find each region's maximum sale price.
 
select region ,max(price) as "maximum_sale"
from sale
group by region;

select * from sale;
 #11. find each category's average quantity sold,but show only where avg >10.
 
select category ,avg(quantity) as "average_quantity"
from sale
group by category
having avg(quantity)>10;

 #Q12. find total revenue by region and category.
select region,sum(price) as "total_revenue"
from sale
group by region;

#Q13. find the how many sales each salesperson made in each region.
select region,sales_person ,sum(price) as "sales_person"
from sale
group by region,sales_person;
 
 #Q14.  find the region where total quantity sold exceeds 20.
select region,sales_person,sum(quantity) as "total_quantity"
from sale 
group by region,sales_person 
having sum(quantity)>20 limit 1;

select * from sale;

#Q15.  find the salesperson who sold in more than one region.
select sales_person ,count(region) as "one_region"
from sale
group by sales_person
 having count(region)>1;

#Q16.  find categroy having total revenue between 200000 and 1000000.
select category ,sum(price)
from sale
group by category 
having  sum(price) between 200000 and 300000;

 #Q17. find the top 1 category with the highest total sale.
select category ,sum(price* quantity) as highest_sale
from sale 
group by category
order by sum(price * quantity) desc limit 1;

 #Q18. find  salesperson's average sale value per transaction. 

select sales_person ,avg(price) as average_sale
from sale 
group by sales_person 
having avg(price)>1;

 #Q19. find category with minimum aveage price greater than 200000. 
 
select  category ,min(price) as minimum_price
from sale
group by category 
having min(price)>200000;

 #Q20.  find region and salesperson combination where revenue >200000.
 
 select region,sales_person,sum(quantity* price)
 as revenue
 from sale
 group by region ,sales_person
 having price>20000;
 