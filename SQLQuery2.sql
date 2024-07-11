select * from 
employee
order by EmployeeName;

Select * from
employee
where deptid=4
order by Salary desc

select * from employee
where  employeename ='ram' and  not deptid=5; 

INSERT INTO employee (EmployeeName,salary,gender,commision,deptid,MaritalStatus)
values ('anil',19000,'male',844,4,'single');

select * from employee;

select * from employee 
where deptid=4
order by gender ,Salary desc

select distinct EmployeeName,salary,EmployeeID
from employee

select count(Distinct deptid)
from employee;



