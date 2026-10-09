show databases;
create database Class;
Show databases;
Drop database class; -- DDL
Use std;
Create table Student (Student_id int , Student_Name varchar(50) , City  varchar(50) );
desc Student; -- DQL
select * from Student;  --  DQL
insert into Student (Student_id , Student_Name , City) values (1 , "Jivan", "badnagar"), (2, "Nandini", "Indore"), (3, "Alok", "Ujjain"); -- DML
Select	Student_Name From Student;
Select Student_Name, City From Student Where Student_id  = 2;


Show databases;
create  database if not exists Class;
Drop database if exists Class;
use Class;
create table products ( prod_id int, prod_code char(4), name varchar (50) , quantity int , price decimal (10,2));
desc products;

Drop table products;
create table products ( prod_id int not null auto_increment,
 prod_code char(4) not null, name varchar (50) not null, quantity int default 0, price decimal (10,2) default 0 , primary key (prod_id));

insert into products (prod_id , prod_code, name, quantity , Price) 
value (101, "Pen", "Blue Marker" , 150,10.5 );

select * from products;

insert into products (prod_code , name, quantity ) values ("Penc", "Red Marker" , 1500);

insert into products (prod_id , prod_code, name, quantity , Price) value (102, 3 , "Red Marker" , 1500,15.5 );

insert into products (prod_id , prod_code, name, quantity , Price) 
value
 (107, "Mark" , "Blue Marker" , 500,10.5),
 (108, "Mark" , "Red Marker" , 1500,8.5 ),
 (109, "Penc" , "Pencil  2B" , 1458,5.5 ),
 (110, "Mark" , "Black Marker" , 300,15.5 );
 
Select	 * from products;
 Select	 * from products where prod_id =102;
  Select * from products where name ="Red marker";
 Select	 * from products where prod_id >102;  
 
Select	 * from products where prod_id !=102;
 
 Select * From products where name like "_e_%";
 Select * From products where name like "%marker";
 
 Select * From products where name not like "%marker";
 
 Select * From products where name like "%marker" and prod_code like "Mark";

Select * From products where name like "%marker" or prod_code like "Mark";
 Select * From products limit 3;
 
 Select prod_id as Product_id, name as Product_Name , price as product_Price From products;
 
Select * from products;
use class;
select * from Products;


Select * From products where name like "%marker" or prod_code like "Mark" or price >10; 

Select * From products where name  prod_id  in("%mark" ,'%mark');

select * From products where name not in('Red Marker' , 'Black marker','Blue Marker');

select * From products where prod_id is null;

select * From products where prod_id is not null;

Select * From products where name like '_e%' order by prod_id;

Select * From products where name like '_e%' order by product_code desc , product_id desc;

select * From products where name like '_e%' order by product_code asc , product_id desc;



Select * From products where name like '_e%' order by prod_code asc , prod_id desc;

 Select * From products limit 3;

Select * From products limit 4,1;
 
 Select concat(product_code, "-", name) from products;

Select distinct price from products; -- Remove dublicated

Select * From products;

delete from products where product_id = 105;

select  product_code , sum(price)  from  products group by product_code; 

SELECT prod_id, prod_code, name, quantity, price FROM products GROUP BY prod_id, prod_code, name, quantity, price;

Select * From products where name not in("marker" ,'mark', 'blue');

--------------------------------------------------------------------------------------------
-- Day -4

Show databases;

use class;
Select * From products ;


select distinct (price) , name   from products;

select avg(price)  from products;

select prod_code , count(price) from products group by prod_code;

select prod_code   from products group by prod_code;

select prod_code, sum(price) as total_price , avg(price)  as avg_price, Count(price) as count_item 
from products group by prod_code;

select * from products;


select prod_code, sum(price) as total_price , avg(price)  as avg_price 
from products group by prod_code having avg_price > 10.5;

Show tables;
select * From student;
select * from products;

truncate products;
Select *  From Student;
SELECT * FROM Student WHERE Student_id= 2;  -- Sub query

CREATE TABLE  if not exists Items(
	ID INT PRIMARY KEY,
    ItemName VARCHAR(10) NOT NULL,
    ItemPrice INT,
    ItemQuantity INT,
    E_ID INT
    );

INSERT INTO Items(ID,ItemName,ItemPrice,ItemQuantity,E_ID)
VALUES
	(1,'DryFruits',250,5,110),
	(2,'Fruits',120,4,108),
    (3,'Maggi',100,3,107),
	(4,'Pasta',120,8,105),
    (5,'Coffee',560,3,110),
	(6,'Sugar',120,8,108),
    (7,'Tea',50,5,104),
	(8,'Vegetables',50,7,102),
    (9,'Pulses',100,7,101),
	(10,'Chocolates',560,4,102),
    (11,'Cake',560,4,112);

CREATE TABLE Employ(
	E_ID INT PRIMARY KEY,
    E_First_Name VARCHAR(10) NOT NULL,
    E_Last_Name VARCHAR(10),
    City VARCHAR(10),
    Rating INT
);

SELECT * FROM Employ;


INSERT INTO Employ (E_ID,E_First_Name,E_Last_Name,City,Rating)
VALUES
	(101,"Abhishek","Malviya","Indore",5),
    (102,"Alok","Shivhare","Jaipur",4),
    (103,"Shivani","Yadav","Indore",7),
    (104,"Shiv","Jaiswal","Hyderabad",9),
    (105,"Abhi","Sharma","Pune",5),
    (106,"Muskan","Gour","Jaipur",4),
    (107,"Sahil","Yadav","Indore",10),
    (108,"Utkarsh","Tiwari","Pune",3);

Select * From Items;
SELECT * FROM Items WHERE ItemPrice=(SELECT MIN(ItemPrice) FROM Items);

 -- Sub query

SELECT ItemName,ItemPrice FROM Items WHERE ItemPrice=(SELECT MIN(ItemPrice) FROM Items);  -- Sub query

SELECT ItemName,ItemPrice FROM Items WHERE ItemPrice=(SELECT max(ItemPrice) FROM Items);  -- Sub query

select * From  products;

alter table products add column Product_schem varchar(20);

alter table products add column   Product_age int , add Product_discount int ; 

update products set price = 35.5 where product_name = 'Red Marker';

update products set price = price+20; 

Select * From products;

alter table products add supplier_name varchar (50) ;

desc products;

alter table products modify supplier_name varchar(100);

alter table products change column Supplier_name Supplier_fullname varchar(100);

alter table products Rename to  products_master;

---------------------
-- DAy -3 

use std;
Select * From products;
use Dac41;
show tables;
Select concat (prod_code, '-', name ) as 'Product_Desc.' ,prod_id , quantity, price from products;

Select Distinct price  from products;
Select Distinct price , name  from products;

select * From products  Group By prod_id; 

delete from products where prod_code =1;
select * From products  Group By prod_code;

SELECT prod_id, prod_code, name, quantity, price
FROM products
GROUP BY prod_id, prod_code, name, quantity, price;

SELECT prod_code, MAX(name) AS name, SUM(quantity) AS total_quantity, AVG(price) AS avg_price
FROM products
GROUP BY prod_code;

SELECT prod_code AS Product code , COUNT(*) AS Count, CAST(AVG(price) AS INT) AS Average FROM products;

SELECT 
    prod_code AS Product_Code, 
    COUNT(*) AS Count, 
    FLOOR(AVG(price)) AS Average 
FROM 
    products 
GROUP BY 
    prod_code;

SELECT 
    prod_code AS Product_Code, 
    COUNT(*) AS Count, 
    FLOOR(AVG(price)) AS Average 
FROM 
    products 
GROUP BY 
    prod_code
HAVING 
    Average > 10; -- Replace 10 with your desired filter condition

Update products set prod_code = "Pen" where prod_id =106;

update products set quantity = quantity+10;

Select * from products_master;

alter table products Add Supplier_id int not null default 0;
alter table products Add Supplier_name varchar(50) ,add  Supplier_contact char(10);


alter table products Add Supplier_id int not null default 0; -- Add single Column 
alter table products modify Supplier_name varchar(100); -- add multiple Column 

alter table products change column Supplier_name Supplier_fullname varchar(100); -- add multiple Column 

alter table products Drop column  supplier_fullname;

alter table products_master Rename to  products;


select * from employ;
select * from products;
select * from items;

select e.E_id , e.E_last_Name , e.City From employ e
  join  items i 
on e.E_id =  i.E_id ;

select i.E_ID , i.ItemPrice , i.ItemName, i.ItemQuantity , i.ID,e.E_First_Name
From Items i 
left join employ e
on i.E_ID = e.E_ID;

select p.prod_id , i.ItemName, i.ItemPrice
From Items i 
right join products p 
on p.prod_id = i.e_id;

-- Union
Show Databases;
Use std;
create table Student_union (Student_name varchar(20) , fee int);

insert into student_union values ("Alok", 25000), ("Abhishek" , 22000) , ("Muskan", 23000);

Select * From student_union; 

create table Student_union_A (Student_name varchar(20) , fee int);

insert into student_union_A values ("Alok", 25000), ("Sahil" , 22000) , ("Utkarsh", 23000);


Select * From student_union_A; 

Select Student_name, Fee from Student_union
 union
 select  Student_name, Fee From Student_union_A;

Select Student_name, Fee from Student_union union all  select  Student_name, Fee From Student_union_A;

-------------------------- 

-- Full Join 

SELECT e.E_ID,e.E_First_Name,e.Rating,
i.ItemName,i.ItemPrice,i.E_ID 
FROM Employee e LEFT JOIN Items i ON e.E_ID=i.E_ID
UNION
SELECT e.E_ID,e.E_First_Name,e.Rating,i.ItemName,
i.ItemPrice,i.E_ID FROM Employee e RIGHT JOIN Items i ON e.E_ID=i.E_ID; -- Full Join

----- 
-- Cross Join 
use std;
select * From items;
Select * From Employ;
Select * From Employ cross join items ; 

-- Full Join 

SELECT e.E_ID,e.E_First_Name,e.Rating,i.ItemName,i.ItemPrice,i.E_ID FROM Employee e LEFT JOIN Items i ON e.E_ID=i.E_ID
UNION
SELECT e.E_ID,e.E_First_Name,e.Rating,i.ItemName,i.ItemPrice,i.E_ID FROM Employee e RIGHT JOIN Items i ON e.E_ID=i.E_ID; -- Full Join

----- 
-- Self Join 

use std;

Use Std;
create table Employees_Self (
EmployeeID int ,
EmployeeName varchar(50),
ManagerID int  
);

Insert into Employees_Self (EmployeeID ,
EmployeeName ,
ManagerID) 
values (1, "Alok", Null), 
(2,"Ankit", 1),
(3,"Ayush", 2),
(4,"Kartik", 1),
(5,"Aniket", 3); 

Select * From Employees_Self;

truncate table Employees_self;
-- Drop table Employees_self;


Select e.EmployeeName as Employee, m.EmployeeName as Manager
from Employees_Self e Join Employees_Self m 
On e.ManagerID = m.EmployeeID;
---------------------------------------------------------------------------------
-------------------------------------
-- View
Use std;
select * From Items;
Create or replace view items_view as select ItemName from Items ;  -- Single Column View

Create or replace view items_view as select ItemName, ItemPrice, ItemQuantity from Items ;  -- Single Column View


Select * from Items_view;

Select * from Items_view where ItemPrice < 250;

Select ItemName, Sum(ItemPrice), Sum(ItemQuantity)   From Items_view group by ItemName; -- Group by in View 
 
 Create or replace view Items_View_Left
 
 as select Items.ItemName, Items.ItemPrice , Items.ItemQuantity , 
 employee.E_ID,Employee.E_First_Name, Employee.E_last_Name, Employee.City 
 From Items left Join Employee on Items.E_ID = Employee.E_ID;  
 
Select * from Items_View_Left;

Create or replace view Items_View_Left as select I.ItemName, I.ItemPrice , I.ItemQuantity , 
 E.E_ID,E.E_First_Name, E.E_last_Name, E.City 
 From Items I left Join Employee  E on I.E_ID = E.E_ID;  
 
 select * from Items_View_Left;
 
 
 select * from Items_View_Left where E_First_Name = "Alok";
 

---------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

-- Date Time Function 
-- DAte Time

-- NOW() - Current date and time
SELECT NOW(); -- Returns the current date and time

-- CURDATE() - Current date
SELECT CURDATE(); -- Returns the current date

-- CURTIME() - Current time
SELECT CURTIME(); -- Returns the current time

-- DATE() - Extract date from datetime
SELECT DATE(NOW()); -- Returns the current date

-- TIME() - Extract time from datetime
SELECT TIME(NOW()); -- Returns the current time

-- YEAR() - Extract year from date
SELECT YEAR('2025-01-16'); -- Returns 2025

SELECT YEAR(NOW());

-- MONTH() - Extract month from date
SELECT MONTH('2025-01-16'); -- Returns 01

-- DAY() - Extract day from date
SELECT DAY('2025-01-16'); -- Returns 16

SELECT DAY(NOW());
-- HOUR() - Extract hour from time
SELECT HOUR('14:30:45'); -- Returns 14
SELECT HOUR(NOW());

-- MINUTE() - Extract minute from time
SELECT MINUTE('14:30:45'); -- Returns 30

SELECT MINUTE(NOW());
-- SECOND() - Extract second from time
SELECT SECOND('14:30:45'); -- Returns 45

-- DAYNAME() - Name of the day
SELECT DAYNAME('2025-01-17'); -- Returns 'Thursday'
SELECT DAYNAME(NOW());

-- DAYOFWEEK() - Day of the week index (1 for Sunday)
SELECT DAYOFWEEK('2025-01-16'); -- Returns 5 (Thursday)
SELECT DAYOFWEEK(NOW());

-- WEEKDAY() - Day of the week index (0 for Monday)
SELECT WEEKDAY('2025-01-16'); -- Returns 3 (Thursday)

SELECT WEEKDAY(NOW());

-- WEEK() - Week number of the year
SELECT WEEK('2025-01-16'); -- Returns 2

SELECT WEEK(NOW());

-- MONTHNAME() - Name of the month
SELECT MONTHNAME('2025-01-16'); -- Returns 'January'

-- LAST_DAY() - Last day of the month
SELECT LAST_DAY('2025-01-16'); -- Returns '2025-01-16'

-- DATE_ADD() - Add days to a date
SELECT DATE_ADD('2025-01-16', INTERVAL 7 DAY); -- Returns '2025-01-16'

SELECT DATE_ADD(NOW(), INTERVAL 10 DAY);

-- DATE_SUB() - Subtract days from a date
SELECT DATE_SUB('2025-01-16', INTERVAL 3 DAY); -- Returns '2025-01-16'

-- DATEDIFF() - Difference in days between two dates
SELECT DATEDIFF('2025-01-26', '2025-01-16'); -- Returns 10

-- TIMESTAMPDIFF() - Difference between timestamps in seconds
SELECT TIMESTAMPDIFF(SECOND, '2025-01-16 12:00:00', '2025-01-16 13:30:45'); -- Returns 54345 seconds

-- TIMESTAMPADD() - Add hours to a timestamp
SELECT TIMESTAMPADD(HOUR, 2, '2025-01-16 12:00:00'); -- Returns '2025-01-16 14:00:00'

-- STR_TO_DATE() - Convert string to datetime
SELECT STR_TO_DATE('2025-01-16', '%Y-%m-%d'); -- Returns '2023-10-13'

-- TIME_FORMAT() - Format time
SELECT TIME_FORMAT('14:30:45', '%H:%i:%s'); -- Returns '14:30:45'

-- DATE_FORMAT() - Format date
SELECT DATE_FORMAT('2025-01-16', '%Y-%m-%d %H:%i:%s'); -- Returns '2025-01-16 00:00:00'

-- SEC_TO_TIME() - Convert seconds to time
SELECT SEC_TO_TIME(54345); -- Returns '15:05:45'

-- TIME_TO_SEC() - Convert time to seconds
SELECT TIME_TO_SEC('14:30:45'); -- Returns 52245

SELECT TIME_TO_SEC(TIME(NOW()));

SELECT TIME_TO_SEC(NOW());

SELECT current_date();

-- In MySQL, the TIMESTAMP() function is used to convert a date or datetime expression to a TIMESTAMP value. 
-- If the expression is a DATE value, it is converted to a TIMESTAMP value by adding midnight as the time portion. 
-- If the expression is a DATETIME value, it is converted to a TIMESTAMP value without any changes.
SELECT TIMESTAMP('2025-01-16 12:00:00'); 

SELECT TIMESTAMP('2024-03-04'); -- Converts '2024-03-04' to a TIMESTAMP value with midnight time portion

SELECT current_date();

SELECT current_time();

SELECT DATE(NOW());

SELECT TIME(NOW());

SELECT NOW();

SELECT DATE("2025-01-16 08:56:07");




TODAY : UPDATE



