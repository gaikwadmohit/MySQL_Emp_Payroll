#UC1 
create database payroll_service;
show databases;
use payroll_service;
select database();

#UC2 
create table employee_payroll
( id int not null auto_increment,
name varchar(50) not null,
salary Double not null,
startDate date not null,
primary key(id)
);
desc employee_payroll;

#UC3 
select * from employee_payroll;
insert into employee_payroll (name,salary,startDate) values('Rajendra',40000,'2021-10-11');
insert into employee_payroll (name,salary,startDate) values(5,'Megha',70000,'2021-9-11');
insert into employee_payroll (name,salary,startDate) values('Shushant',40000,'2021-1-17');
insert into employee_payroll(name,salary,startdate)values('Nirmal',70000,'2022-05-10');
insert into employee_payroll(name,salary,startdate)values('Ragul',60000,'2021-11-15');

#UC4 
select * from employee_payroll;

#UC5_AbilityToRetrieveParticularData
select * from employee_payroll where name="Rajendra";
select * from employee_payroll where salary=70000;
select * from employee_payroll where startDate between '2021-1-17' And date(now());

#UC6 
alter table employee_payroll add gender char(1);
UPDATE employee_payroll set gender='F' where id='2';
UPDATE employee_payroll set gender = 'M' WHERE id =1;
UPDATE employee_payroll set gender = 'M' WHERE id =4;

#UC7 
select gender,sum(salary) from employee_payroll group by gender; 
select gender,min(salary) from employee_payroll;
select gender,max(salary) from employee_payroll;
select gender,avg(salary) from employee_payroll;
select count(salary) from employee_payroll;
set sql_safe_updates=0;
