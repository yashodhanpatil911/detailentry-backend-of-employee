use EMS
select * from employee;
/*

select count(distinct EmployeeName)
from employee
where EmployeeID > 40;

select * from employee   
where EmployeeID != 41;

select employeename,salary,deptid  
from employee 
where deptid is not null
order by deptid,salary

select * 
from employee 
where deptid!=7 AND 
employeename like 'ra%';

select * 
from employee 
where deptid!=4 AND 
(employeename like 'da%' or employeename like 'r%');

select * from employee
where employeeid NOT BETWEEN 10 AND 50;

SELECT * FROM EMPLOYEE
WHERE GENDER NOT IN ('GIRL','BOY');

SELECT * FROM EMPLOYEE 
WHERE NOT EMPLOYEEID < 30;

INSERT INTO EMPLOYEE VALUES ('LAKHAN',15000,'MALE',100,10,'MARRIED'),
('rashi bhen',15000,'female',150,10,'married'),
('raju',10000,'male',50,10,'single'),
('nadiya',15000,'women',150,10,'married');

select employeeid,employeename,salary ,commision
from employee
where commision is not null;

select employeeid,employeename,salary ,commision
from employee
where commision is null;

update employee
set deptid=8 ,maritalstatus='single'
where deptid is null; 


--delete from employee 
--where employeeid in (1045,1046,1047,1048,1049);

--delete from tablename; --used to delete all table row leaving table structure intact

select top 5 * from employee;

---select * from employee  where employeeid > 1 top 5; -- used in mysql 

--select * from tablename order by columnname(s) FETCH first number ROWS ONLY; -- used in oracle 
--select * from (select * from employee order by employeename WHERE ROWNUM <= 8; -- used in oracle 

select top 20 percent * from employee;

SELECT SUM(salary) AS total_revenue
FROM employee;

SELECT commision,  AVG(salary) AS average_revenue
FROM employee
GROUP BY commision;

select max(salary) as minsalry ,deptid,EmployeeName
from employee
group by deptid,employeename;

SELECT * FROM EMPLOYEE
where deptid=4;

select count(employeename) 
from employee


select count(EmployeeName) as [number of employee],deptid
from employee
group by deptid


select sum(salary + commision) as [total earning per month],employeename
from employee
group by EmployeeName

select sum(salary - Employeeloan) as [employee loan deduction] ,EmployeeName
from employee
left join Employee2 on
employee.EmployeeID=employee2.EmployeeID
group by EmployeeName;

select avg(salary) as average_salary
from employee



select *
from employee
where salary < (select AVG(salary) from employee);

select avg(salary) as average_salary,deptid
from employee 
GROUP BY deptid

select * from employee
where EmployeeName LIKE 'd__u';

select * from employee
where EmployeeName LIKE '[dra]%';


SELECT * from employee
WHERE EmployeeName LIKE '[b-h]%'; -- write value from 'b' to 'h'  that is = "b,c,d,e,f,g,h" 

select * from employee
where EmployeeName Like 'r__%';

select * from employee 
where EmployeeID not IN (select EmployeeID from employee2)

select * from employee 
where salary between 1 and 10000
and deptid in (1,2,3,4,7)

SELECT * FROM EMPLOYEE
WHERE EmployeeName BETWEEN 
'DAMU' AND 'yashodhan'
ORDER BY EmployeeID

select * from employee 
where employeename not between
'anil' and 'lakhan'
order by EmployeeName;

select e.employeeid,e.employeename,e2.employeeloan
from employee as e,employee2 as e2
where e.employeename not like 'a%'
and
e.EmployeeID=e2.employeeid;


select * from employee
inner join employee2 on
employee.EmployeeID=employee2.EmployeeID;


select A.employeename as 
employeename1 ,b.employeename as 
employeename2,a.Salary
from employee a,employee 
where a.EmployeeID <> b.EmployeeID
and a.Salary =b.Salary 
order by a.employeename

 select count(EmployeeID) as [employee per dept],deptid 
 from employee
 GROUP BY deptid;
 
    select EmployeeID, employeename 
    from employee
    where EmployeeID= ANY
    (select EmployeeID 
    from employee2
    where EmployeeName like '[dra]%')

    select employeename
    from employee
    where EmployeeID = all 
    (select EmployeeID 
    from employee  
    where EmployeeID = 20);

    select * from employee2

    select empaddress
    from employee2
    order by(case 
    when EmpAddress is null then EmployeeDesig
    else EmpAddress 
    end); 
     

  select 10 - 4 -= 10*5;

    insert into employee2 values(null,'datanalyist',258);
    

    alter table employee
    add dateofbirth date;
    
    select * from employee;
    
    insert into employee (dateofbirth) values ('1999-02-08')
    where employeename= 'ram';
   
   update employee
   set dateofbirth='1998-12-23'
   where employeename ='anil';
   
   alter table employee
   modify column dateofbirth year; 
   
   alter table employee
   drop column dateofbirth;
   

   */
   alter table employee
   add constraint uc_employee unique
   (employeeid,employeename);
   select * from employee;
   insert into employee values ('raju','10000','male',0,'1997-07-15');

   create table persons(
   id int not null,
   Lastname varchar(200) not null,
   firstname varchar(250),
   age int,
   constraint pk_person primary key (id,lastname));

  insert into persons values (2,'asdf','patil',14);
  select * from persons 