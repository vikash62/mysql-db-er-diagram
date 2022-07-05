create database payrollService1;
show databases;
use payrollService1;

create table employeePayroll (id int primary key auto_increment, name varchar(20), salary varchar(20),
startDate varchar(20));
desc employeePayroll;

insert into employeePayroll (name,salary,startDate) values ('Rohit','30000','1-1-2022'), ('Vikash','40000','10-2-2022'), 
('Sarang', '50000', '25-2-2022'), ('Deepika', '40000', '10-2-2022'); 
select *from employeePayroll;
select salary from employeePayroll where name = 'Rohit';
select salary from employeePayroll where name = 'Sarang';
select *from employeePayroll where startDate between cast('10-2-2022' as date) and date(now());

alter table employeePayroll add gender varchar(1);
update employeePayroll set gender = 'M' where name = 'Rohit' or name = 'sarang';
update employeePayroll set gender ='m' where name = 'Vikash' or name = 'Deepika';

select min(salary) from employeePayroll;
select max(salary) from employeePayroll;
select avg(salary) from employeePayroll;
select count(*) from employeePayroll;
select sum(salary) from employeePayroll where gender ='m' group by gender;
select sum(salary) from employeePayroll where gender = 'M' group by gender;

alter table employeepayroll add phoneNum varchar(20);
alter table employeepayroll add address varchar(20);
alter table employeepayroll add dept varchar(20);
update employeepayroll set phoneNum = '9172322399' where name ='Rohit';
update employeepayroll set phoneNum = '8626001571' where name ='Vikash';
update employeepayroll set phoneNum = '9422101501' where name ='Sarang';
update employeepayroll set address = 'Pune' where name ='Rohit';
update employeepayroll set address = 'Banglore' where name ='Vikash';
update employeepayroll set address = 'Nagpur' where name ='Sarang';
update employeepayroll set dept = 'Admin' where name ='Rohit';
update employeepayroll set dept = 'Tech' where name ='Vikash';
update employeepayroll set dept = 'Store' where name ='Sarang';
alter table employeepayroll drop phoneNum;

alter table employeepayroll add column basicPay varchar(40), add column deductions varchar(40), 
add column taxablePay varchar(40), add column incomeTax varchar(40), add column netPay varchar(40);
update employeepayroll set basicPay = '6k', deductions = '2k', taxablePay = '3k' , incomeTax = '4k', netPay = '50k';
update employeepayroll set gender='m' where name = 'Terisa';

create table employeeDept (emp_id int primary key auto_increment,
 dept_id int, designation varchar(40),
 foreign key (dept_id) references employeePayroll(id));
 desc employeeDept;  
 
insert into employeeDept(dept_id,designation) values(1, 'Manager'),(2, 'Developer'),(3, 'DevOps'),(4, 'Manager'),(5, 'Director');
select * from  employeeDept;

select name,dept,salary,designation,gender from employeeDept
inner join employeePayroll ON employeePayroll.id=employeeDept.dept_id;