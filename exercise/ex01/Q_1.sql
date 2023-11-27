-- link: https://en.wikibooks.org/wiki/SQL_Exercises/The_computer_store
-- 1.1 Select the names of all the products in the store.
select Name from Products;

-- 1.2 Select the names and the prices of all the products in the store.
select name, Price from Products;

-- 1.3 Select the name of the products with a price less than or equal to $200.
select Name from Products where Price < 200 or price = 100;

-- 1.4 Select all the products with a price between $60 and $120.
select * from products where price between 60 and 120;

-- 1.5 Select the name and price in cents (i.e., the price must be multiplied by 100).
select Name, (Price * 100) AS cents from Products;

-- 1.6 Compute the average price of all the products.
select AVG(price) from Products;

-- 1.7 Compute the average price of all products with manufacturer code equal to 2.
select AVG(Price) from Products  where  Manufacturer = 2

select AVG(Price) from Products 
join Manufacturers on Products.Manufacturer = Manufacturers.Code
 where  Manufacturer = 2

-- 1.8 Compute the number of products with a price larger than or equal to $180.
select Name, count(*) as priceBiggerThan_180 from Products where Price > 180 or Price = 180
group by Name;

-- 1.9 Select the name and price of all products with a price larger than or equal to $180, and sort first by price (in descending order), and then by name (in ascending order).
select name, price from Products where price > 180 or price = 180
order by Price desc, name asc;

-- 1.10 Select all the data from the products, including all the data for each product's manufacturer.
select * from Products
join Manufacturers on Products.Manufacturer = Manufacturers.Code;

select * from Products, Manufacturers 
where Products.Manufacturer = Manufacturers.Code;

-- 1.11 Select the product name, price, and manufacturer name of all the products.
select Products.Name, Price, Manufacturers.Name  from Products 
join Manufacturers on Products.Manufacturer = Manufacturers.Code;

-- 1.12 Select the average price of each manufacturer's products, showing only the manufacturer's code.
select AVG(Price) AS 'averagePrice', Manufacturer from Products
group by Manufacturer;

-- 1.13 Select the average price of each manufacturer's products, showing the manufacturer's name.
select AVG(Price) AS 'averagePrice', Manufacturers.Name 
from Products join Manufacturers 
on Products.Manufacturer = Manufacturers.Code
group by Manufacturers.Name;

-- 1.14 Select the names of manufacturer whose products have an average price larger than or equal to $150.
select Manufacturers.Name, AVG(Price) as 'avgPrice' 
from Products  join  Manufacturers
on Products.Manufacturer = Manufacturers.Code
group by Manufacturers.Name
having AVG(Price) >= 150;

-- 1.15 Select the name and price of the cheapest product.
select TOP 1 name, MIN(Price) as 'price' from Products
group by Name
order by price asc;

-- 1.16 Select the name of each manufacturer along with the name and price of its most expensive product. (solve this)
select top 1 with ties
Manufacturers.Name as manufacturers_name,
Products.Price,
Products.Name as products_name
from Manufacturers
join Products on Manufacturers.Code = Products.Manufacturer
group by Products.Price, Products.Name, Manufacturers.Name
order by RANK() OVER(PARTITION BY Manufacturers.Name order by Price desc);

select 
max_price_mapping.name as manu_name, 
max_price_mapping.price, 
products_with_manu_name.name as product_name
from 
    (SELECT Manufacturers.Name, MAX(Price) price
     FROM Products, Manufacturers
     WHERE Manufacturer = Manufacturers.Code
     GROUP BY Manufacturers.Name)
     as max_price_mapping
   left join
     (select products.*, manufacturers.name manu_name
      from products join manufacturers
      on (products.manufacturer = manufacturers.code))
      as products_with_manu_name
 on
   (max_price_mapping.name = products_with_manu_name.manu_name
    and
    max_price_mapping.price = products_with_manu_name.price); 


-- 1.17 Add a new product: Loudspeakers, $70, manufacturer 2.
insert into Products (Code, Name, Price, Manufacturer) values (11, 'Loudspeakers', 70, 2);


-- 1.18 Update the name of product 8 to "Laser Printer".
select * from Products;

update Products 
set name = 'Laser Printer' where Name = 'Printer';

-- 1.19 Apply a 10% discount to all products.
update Products 
set Price = Price * 0.9;

-- 1.20 Apply a 10% discount to all products with a price larger than or equal to $120.
update Products
set Price = Price * 0.9
where Price >= 120;