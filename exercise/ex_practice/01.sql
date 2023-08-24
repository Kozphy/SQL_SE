--  declare local variable, get value from table and assign value to local_variable
declare @CategoryName varchar(30);
select @CategoryName = CategoryName from [dbo].[Categories] where CategoryID = 1;
select @CategoryName AS categoryName;

-- select and insert value to table
insert into Categories (CategoryName, Description, Picture)
select  CompanyName, ContactName, Phone
from Customers where CustomerID = 'ALFKI';
select * from Categories;

