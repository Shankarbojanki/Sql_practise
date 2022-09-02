create database 11_09;
use 11_09;
create table customers (customer_id int auto_increment primary key,
cust_name varchar(50),income int );

insert into customers (cust_name ,income ) values ('john Miller',20000),
												  ('Mark robert',40000),
                                                  ('Reyan Watson',60000),
                                                  ('Shane trump',10000),
                                                  ('Adam Obama',80000);
create table orders(order_id int auto_increment primary key,item varchar(80),cost int,order_date date,cust_id int);



insert into orders(item,cost,order_date,cust_id) values ('Laptop',30000, '2022-07-22',4),
                                                        ('Mobile',10000,'2022-06-11',3),
                                                        ('TV',50000,'2022-03-12',3),
                                                        ('Vaccum cleaner',100000,'2022-01-22',1),
                                                        ('Home theater',2000,'2022-06-22',2),
                                                        ('Ear phones',1500,'2022-02-22',2),
                                                        ('Tab',15000,'2022-01-14',6);
                                                        

                                                        
                                                        
                                                        

select customer_id,cust_name,item,cost,order_date 
from customers
left join orders on customers.customer_id=orders.cust_id;

select customer_id,cust_name,item,cost,order_date 
from customers
inner join orders on customers.customer_id=orders.cust_id;


select * from customers natural join orders;

Select * fROm orders;

select customer_id,cust_name,item,cost,order_date 
from customers
inner  join orders on customers.customer_id=orders.cust_id;
 set sql_safe_updates=0; 
 
delete from orders where item='TV';






















