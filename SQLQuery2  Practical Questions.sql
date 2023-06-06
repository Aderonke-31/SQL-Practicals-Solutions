Create table STAFF(
sn int,
Employee_ID varchar(100),
First_name varchar(100),
last_name varchar(100),
Gender varchar(20),
Position varchar(100),
Department_ID varchar(20),
Salary varchar(20)
);


Create table Department(
Department_ID varchar(20),
Department_name varchar(20)
);

Insert into Department
values (1, 'IT');
Insert into Department
values (2, 'Sales');



-----Show the table created
Select * from STAFF;
Select * from Department;

----Inserting records into the Table.
Insert into STAFF
values (1, 2002, 'lola', 'Ade' , 'M', 'Tester' ,1 ,6500);
Insert into STAFF
values (2, 2003, 'Gabrella', 'Jon' , 'F', 'Architect', 1,6000);
Insert into STAFF
values (3, 2004, 'Bam', 'Lee' , 'F', 'Project Manager' ,1 ,8000);
Insert into STAFF
values (4, 2005, 'Flaky', 'Jola' , 'M', 'Software Developer' ,1 ,8000);
Insert into STAFF
values (5, 2006, 'Yale', 'Banks' , 'M', 'Tester' ,2 ,5500);
Insert into STAFF
values (6, 2007, 'Rhod', 'Sam' , 'M', 'Sales Assistant' ,2 ,8500);
Insert into STAFF
values (7, 2008, 'Dolapo', 'Bisi' , 'F', 'Sales Engineer' ,2 ,7600);
Insert into STAFF
values (8, 2009, 'Max', 'Power' , 'M', 'Sales Representative' ,2 ,5900);
Insert into STAFF
values (9, 2010, 'Gate', 'Tees' , 'F', 'Sales Manager' ,2 ,7300);
Insert into STAFF
values (10, 2011, 'Anikeet', 'Nishi' , 'M', 'Sales Director' ,2 ,9000);

----Return Staff record with highest salary 
Select * from STAFF 
Where salary = (Select Max(Salary) From Staff)

-------Return the highest Salary in staff table. 
Select Max(Salary) From STAFF

-----Return the 2nd highest salary from STAFF table.  
Select Max(salary) from STAFF 
Where salary NOT IN (Select Max(salary) From STAFF)

-----Select range of staff based on ID
Select * from STAFF
Where Employee_ID between 2003 and 2010

----Return the STAFF with the Highest Salary and the STAFF'S department name
----Return Employee Name, highest salary, Department.
Select e.First_name, e.Last_name, e.Salary, d.Department_name
from STAFF e Inner Join Department d ON (e.Department_ID = d.Department_ID)
Where Salary IN (Select Max (Salary) from STAFF)

----Return Highest Salary, Employee_name, Department_name for each department

Select e.First_name, e.Last_name, e.Salary, d.Department_name
from STAFF e Inner Join Department d ON (e.Department_ID = d.Department_ID)
Where Salary IN (Select Max(Salary) from STAFF group by Department_ID)