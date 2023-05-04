show databases;
 ---- UC1 -----
create database payroll_service;
show databases;
use payroll_service;

-- UC2 --
create table employee_payroll (id int not null auto_increment, name varchar(200) not null, 
salary double not null, start_date date not null, primary key(id));

