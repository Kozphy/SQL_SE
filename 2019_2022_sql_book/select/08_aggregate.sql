-- 聚合函數
-- count
select 姓名, count(distinct 生日) as 生日數量 from 學生
group by 姓名;

select count(*) as 學生數 from 學生;

select count(生日) as 學生數 from 學生;

select count(*) as 員工數 from 員工
where 薪水 > 40000;

-- avg
select avg(薪水) as 平均薪水 from 員工

select count(*) as 課程總數,
		avg(學分) as 學分平均數
from 課程 where 課程編號 like '%1%';

-- max
select max(保險) as 保險金額 from 員工;

select max(學分) as 最大學分數 from 課程
where 課程編號 like '%1%';

-- min
select min(保險) as 保險金額 from 員工;

select min(學分) as 最少學分數 from 課程
where 課程編號 like '%1%';

-- sum
select sum(薪水) as 薪水總額,
		sum(薪水)/count(*) as 薪水平均
from 員工;

select sum(學分) as 學分總和 from 課程
where 課程編號 like '%1%';


