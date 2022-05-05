alter table Employee_payroll add phone_number varchar(13) after name;
alter table Employee_payroll add address varchar(200) after phone_number;
alter table Employee_payroll add department varchar(100) not null after address;
alter table Employee_payroll alter address set default 'TBD';
insert into Employee_payroll (id,name,phone_number,address,department,salary,StartDate,gender)
values (3,'Mohit','8899665599','57,dighori,nagpur','civil','49000','13-08-20014','M');

