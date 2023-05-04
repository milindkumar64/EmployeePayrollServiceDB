show databases;
 -- UC1 --
create database payroll_service;
show databases;
use payroll_service;

-- UC2 --
create table employee_payroll (id int not null auto_increment, name varchar(200) not null, 
salary double not null, start_date date not null, primary key(id));

-- UC3 --
insert into employee_payroll(name,salary,start_date) values('Anish',10000.00,'2010-05-02');
insert into employee_payroll(name,salary,start_date) values('Kalpana',10000.00,'2010-05-02');
insert into employee_payroll(name,salary,start_date) values('Milind',2000.00,'2022-01-22');
insert into employee_payroll(name,salary,start_date) values('Om',3000.00,'2020-11-09');

-- UC4 --
select * from employee_payroll;

-- UC5 --
select salary from employee_payroll where name='Anish';
select * from employee_payroll where id=1;
select * from employee_payroll where start_date between cast('2020-01-22' as date) and date(now());

