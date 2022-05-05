show databases;
use payroll_service;
select database();
select * from employee_payroll where name="Rajendra";
select * from employee_payroll where salary=40000;
select * from employee_payroll where startDate between '2021-1-17' And date(now());
