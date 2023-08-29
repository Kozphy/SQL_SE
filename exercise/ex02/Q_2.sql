-- LINK : https://en.wikibooks.org/wiki/SQL_Exercises/Employee_management
-- 2.1 Select the last name of all employees.
select LastName from Employees;

-- 2.2 Select the last name of all employees, without duplicates.
select distinct LastName from Employees;

-- 2.3 Select all the data of employees whose last name is "Smith".
select *  from Employees where LastName = 'Smith';

-- 2.4 Select all the data of employees whose last name is "Smith" or "Doe".
select * from Employees where LastName = 'Smith' or LastName = 'Doe';
select * from Employees where LastName in ('Smith', 'Doe');

-- 2.5 Select all the data of employees that work in department 14.
select * from Employees where Department = 14;

-- 2.6 Select all the data of employees that work in department 37 or department 77.
select * from Employees where Department = 37 or Department = 77;
select * from Employees where Department in (37, 77);

-- 2.7 Select all the data of employees whose last name begins with an "S".
select * from Employees where LastName LIKE 'S%'

-- 2.8 Select the sum of all the departments' budgets.
select sum(Budget) AS Budgets from Departments; 

-- 2.9 Select the number of employees in each department (you only need to show the department code and the number of employees).
select Department ,count(Name) AS EmployeeNumber from Employees
group by Department;


-- 2.10 Select all the data of employees, including each employee's department's data.
select * from Employees join Departments 
on Employees.Department = Departments.Code;

-- 2.11 Select the name and last name of each employee, along with the name and budget of the employee's department.
select e.Name, LastName, d.Name, Budget from Employees AS e
join Departments AS d on e.Department = d.Code;

-- 2.12 Select the name and last name of employees working for departments with a budget greater than $60,000.
select e.Name, LastName from Employees as e
join Departments as d on e.Department = d.Code
where Budget > 60000;

-- 2.13 Select the departments with a budget larger than the average budget of all the departments.
select * from Departments as d
where Budget > (select avg(budget) from Departments)


-- 2.14 Select the names of departments with more than two employees.
select d.Name from Departments AS d 
join Employees AS e
on d.Code = e.Department
group by d.Name
having count(d.Name) > 2

-- 2.15 Very Important - Select the name and last name of employees working for departments with second lowest budget.
select e.name, e.lastname
from Employees e
where e.Department = (
	select top 1 temp.code
	from (
		select top 2 *
		from Departments as d
		order by Budget
	) as temp
	order by temp.Budget desc
);


-- 2.16  Add a new department called "Quality Assurance", with a budget of $40,000 and departmental code 11. 
-- And Add an employee called "Mary Moore" in that department, with SSN 847-21-9811.
insert into Departments (Code, Name, Budget) values(11, 'Quality Assurance', 40000);
insert into Employees (SSN, Name, LastName, Department) values (847-21-9811, 'Mary', 'Moore', 11);

-- 2.17 Reduce the budget of all departments by 10%.
update Departments
set Budget = Budget * 0.9

-- 2.18 Reassign all employees from the Research department (code 77) to the IT department (code 14).
update Employees
set Department = 14
where Department = 77;


-- 2.19 Delete from the table all employees in the IT department (code 14).
delete from Employees where Department = 14;

-- 2.20 Delete from the table all employees who work in departments with a budget greater than or equal to $60,000.
delete from Employees
where department in (
select code 
from Departments
where Budget >= 60000);

-- 2.21 Delete from the table all employees.
delete from Employees;