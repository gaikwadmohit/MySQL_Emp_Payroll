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
insert into employee_payroll (name,salary,startDate) values('Shushant',50000,'2021-1-17');
insert into employee_payroll(name,salary,startdate)values('Nirmal',70000,'2022-05-10');
insert into employee_payroll(name,salary,startdate)values('Ragul',60000,'2021-11-15');

#UC4 
select * from employee_payroll;

#UC5

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

#UC8
alter table employee_payroll add phone_number varchar(13) after name;
alter table employee_payroll add address varchar(200) after phone_number;
alter table employee_payroll add department varchar(100) not null after address;
alter table employee_payroll alter address set default 'TBD';
insert into employee_payroll (id,name,phone_number,address,department,salary,startDate,gender) 
values(8,'sonu','55555656233','nagpur','CSE', 75000, '2014-08-12','M');

#UC9

alter table employee_payroll rename column salary to basic_pay;
alter table employee_payroll add deductions double not null after basic_pay;
alter table employee_payroll add taxable_pay double not null after deductions;
alter table employee_payroll add tax double not null after taxable_pay;
alter table employee_payroll add net_pay double not null after tax;

#UC10

insert into Employee_payroll 
       (id,name,phone_number,address,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,startDate)
values(9,'Terissa','9888888888','hyd','Sales','F',4800000,100000,40000,5400,4000000,'2021-08-08');
insert into Employee_payroll 
       (id,name,phone_number,address,department,gender,basic_pay,deductions,taxable_pay,tax,net_pay,startDate)
values(10,'Terissa','9888888888','pune','Marketing','F',4800000,100000,40000,5400,4000000,'2021-03-08');


#UC11

create table payroll(
id int not null auto_increment primary key,
basic_pay double,
deductions double,
income_tax double,
taxable_pay double,
tax double,
net_pay double,
emp_ID int,
foreign key(emp_ID) references employee_payroll(id)
);
desc payroll;

create table department(
  id int not null auto_increment primary key,
  dept_name varchar(20) not null
  );
  desc department;

create table employee_department(
  employee_id int not null,
  department_id int not null,
  foreign key(employee_id) references employee_payroll(id),
  foreign key(department_id) references department(id),
  primary key(employee_id,department_id)
);
desc employee_department;

#UC12
desc employee_department;
select * from employee;
select * from payroll;
select * from department;
select * from employee_department;
show tables;

create table employee;
create table payroll;
create table employee_department;


insert into employee(name, gender, phone_number, address,startDate)
values ('moni', 'F','9843256578','TS','2021-01-10');
insert into employee(name, gender, phone_number, address,startDate)
values ('tony', 'F','7656565645','Mumbai','2021-10-01');
insert into employee(name, gender, phone_number, address,startDate)
values ('loni', 'M','8675675656','AP','2021-01-04');
insert into employee(name, gender, phone_number, address,startDate)
values ('goni', 'M','9745643534','TN','2021-04-10');

insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (1200000,1000,500,5000,600,350000,6);
insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (650000,2000,500,5000,600,450000,3);
insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (550000,3000,500,5000,600,550000,4);
insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (110000,4000,500,5000,600,650000,2);

insert into department(dept_name)
values('Sales'),('Marketing');
insert into department(dept_name)
values('HR');
select sum(basic_pay) from payroll;
select gender, sum(basic_pay) from payroll join employee group by gender;
select gender, avg(basic_pay) from payroll join employee group by gender ;
select gender, max(basic_pay) from payroll join employee group by gender ;
select gender, min(basic_pay) from payroll join employee group by gender ;
select gender, count(*) from employee group by gender;

insert into employee(name, gender, phone_number, address,startDate)
values ('Terissa', 'f','9895689865','LD','2022-02-40');

insert into payroll(basic_pay, deductions, income_tax, taxable_pay, tax, net_pay,emp_ID)
values (440000,2000,300,4000,800,460000,5);

insert into employee_department(employee_id,department_id)values(1,1);
