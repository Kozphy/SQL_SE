-- subquery
select 高薪員工.姓名, 高薪員工.電話, 高薪員工.薪水
from (select 身份證字號, 姓名, 電話, 薪水
	from 員工
	where 薪水 > 50000) as 高薪員工;

select 身份證字號, 姓名, 電話, 薪水
	from 員工
	where 薪水 > 50000;

select 'comparison operator with subquery';

-- comparison operator with subquery
select * from 班級;
select * from 學生;

select 學號 ,count(*) as 上課數 from 班級
where 學號 = 
(select 學號 from 學生 where 姓名 = '陳會安')
group by 學號;


select * from 員工;

select 身份證字號, 姓名, 電話, 薪水 from 員工
where 薪水 >=
(select avg(薪水) from 員工 as 平均薪水);

-- logic comparsion subquery
-- exists
select * from 學生
where exists
(select * from 班級
where 課程編號 = 'CS222' and 學生.學號 = 班級.學號);

select * from 學生;
select * from 班級;

select * from 課程
where exists
(select * from 班級
where (教室 = '221-S' or 教室 = '100-M')
	AND 課程.課程編號 = 班級.課程編號)

select * from 課程;
select * from 班級;

-- in
select * from 課程
select * from 班級

select * from 課程
where 課程編號 not in
(select 課程編號 from 班級 where 學號 = 'S004');

select * from 教授;
select * from 班級;
select * from 學生;

select * from 教授
where 教授編號 in
(select 教授編號 from 班級
where 學號=(select 學號 from 學生
			where 姓名 = '江小魚'));


-- all 所有查詢都要符合子查詢 
select 姓名, 薪水 from 員工
where 薪水 >= all
(select 薪水 from 員工 where 城市 = '台北');

select 薪水 from 員工 where 城市 = '台北';

-- any and some 只要符合子查詢中的一個條件
-- any
select 姓名, 薪水 from 員工
where 薪水 >= any
(select 薪水 from 員工 where 城市='台北');

-- some
select 姓名, 薪水 from 員工
where 薪水 >= some
(select 薪水 from 員工 where 城市='台北');

