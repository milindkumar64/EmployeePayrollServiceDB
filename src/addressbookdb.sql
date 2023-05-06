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


-- UC6 --
alter table employee_payroll add gender char(1) after name;
update employee_payroll set gender='F' where id=2;

-- UC7 --

select sum(salary) from employee_payroll where gender='F';
select count(name) from employee_payroll where gender='M' group by gender;
select min(salary) from employee_payroll;
select max(salary) from employee_payroll;
select avg(salary) from employee_payroll;

---- UC8 ----
alter table employee_payroll add phone varchar(15) not null after start_date;
alter table employee_payroll add address varchar(100) not null default 'Not Available' after phone;
alter table employee_payroll add department varchar(100) not null after address;

---- UC9 ----

alter table employee_payroll add basic_pay double after department;
alter table employee_payroll add deductions double after basic_pay;
alter table employee_payroll add taxable_pay double after deductions;
alter table employee_payroll add income_pay double after taxable_pay;
alter table employee_payroll add net_pay double after income_pay;

update employee_payroll set gender='F' where name = 'Kalpana';
select * from employee_payroll;

---- UC10 ----
insert into employee_payroll  values('6','Terissa','F','30000','2017-09-12','786578','Jaipur','HR','12000','1200','200','120','20000');

---- UC11 ----
create table employee_department(employee_id int, department_id int);  
insert into employee_department value('1',201);
insert into employee_department value('2',203);
insert into employee_department value('3',201);
insert into employee_department value('4',201);
insert into employee_department value('5',203);
insert into employee_department value('6',202);

Select * from employee_department;


