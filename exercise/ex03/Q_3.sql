-- The Warehouse
-- lINK: https://en.wikibooks.org/wiki/SQL_Exercises/The_warehouse
--3.1 Select all warehouses.
select * from warehouses;

--3.2 Select all boxes with a value larger than $150.
select * from Boxes where Value > 150;

--3.3 Select all distinct contents in all the boxes.
select distinct Contents from Boxes;

--3.4 Select the average value of all the boxes.
select avg(value) avgBoxValue from Boxes;

--3.5 Select the warehouse code and the average value of the boxes in each warehouse.
select warehouse, avg(Value) as avgValue from boxes group by warehouse;

--3.6 Same as previous exercise, but select only those warehouses where the average value of the boxes is greater than 150.
select Warehouse, avg(value) as avgValue from Boxes 
group by warehouse
having avg(Value) >= 150;

--3.7 Select the code of each box, along with the name of the city the box is located in.
select b.Code, w.Location 
from Boxes as b join Warehouses as w 
on b.Warehouse = w.Code


--3.8 Select the warehouse codes, along with the number of boxes in each warehouse. 
    -- Optionally, take into account that some warehouses are empty (i.e., the box count should show up as zero, instead of omitting the warehouse from the result).
select Warehouse, count(*)
from boxes
group by warehouse;

--3.9 Select the codes of all warehouses that are saturated (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity).
select Code
from Warehouses join (select Warehouse AS temp_w, count(*) AS temp_c 
from boxes group by Warehouse) AS temp
on (warehouses.code = temp.temp_w)
where warehouses.Capacity < temp.temp_c

--3.10 Select the codes of all the boxes located in Chicago.
select Boxes.Code from Boxes join Warehouses 
on Boxes.Warehouse = Warehouses.Code
where Warehouses.Location = 'Chicago';

--3.11 Create a new warehouse in New York with a capacity for 3 boxes.
insert into Warehouses (Code, Location, Capacity) 
values (7, 'New York', 3);

--3.12 Create a new box, with code "H5RT", containing "Papers" with a value of $200, and located in warehouse 2.
insert into Boxes (Code, Contents, Value, Warehouse) 
values ('H5RT', 'Papers', 200, 2);

--3.13 Reduce the value of all boxes by 15%.
update Boxes
set Value = Value * 0.85;

--3.14 Remove all boxes with a value lower than $100.
delete from Boxes where Value <= 100;

-- 3.15 Remove all boxes from saturated (a warehouse is saturated if the number of boxes in it is larger than the warehouse's capacity) warehouses.
select * from boxes
where Warehouse in (
	select Code
		from Warehouses
		where Capacity <
		(
			select COUNT(*)
			from Boxes
			where Warehouse = Warehouses.Code
		)
);

-- 3.16 Add Index for column "Warehouse" in table "boxes"
    -- !!!NOTE!!!: index should NOT be used on small tables in practice
create index Boxes_Warehouse 
on Boxes (Warehouse);

-- 3.17 Print all the existing indexes
    -- !!!NOTE!!!: index should NOT be used on small tables in practice
exec sys.sp_helpindex @objname= N'Boxes';

-- 3.18 Remove (drop) the index you just added 
    -- !!!NOTE!!!: index should NOT be used on small tables in practice

