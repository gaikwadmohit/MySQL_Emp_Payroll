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
