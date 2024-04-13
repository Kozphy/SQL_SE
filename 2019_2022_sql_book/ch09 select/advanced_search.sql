select 身份證字號, 姓名, 薪水
from 員工;

-- offset
select 身份證字號, 姓名, 薪水
from 員工
order by 身份證字號
offset 3 rows;

-- fetch next
select 身份證字號,姓名,薪水
from 員工

select 身份證字號,姓名,薪水
from 員工
order by 身份證字號
offset 3 rows
fetch next 5 rows only;

-- null
select * from 學生 where 生日 is null;

select * from 學生;

-- isnull()
select 身份證字號, 姓名, 電話 from 員工;

select 身份證字號, 姓名,
	ISNULL(電話, '無電話') as 電話
from 員工;

-- cte
with 教授_員工
as (
	select 教授.*, 員工.姓名
	from 教授 join 員工
	on 教授.身份證字號 = 員工.身份證字號
)
select 學生.學號, 學生.姓名, 課程.*, 教授_員工.*
from 教授_員工 join
(課程 join
(學生 join 班級 on 學生.學號 = 班級.學號)
on 班級.課程編號 = 課程.課程編號)
on 班級.教授編號 = 教授_員工.教授編號;

-- cte recursive
with 主管_遞迴
as (
	select 員工字號, 姓名, 1 as 階層
	from 主管 where 主管字號 is null
	union all
	select 主管.員工字號, 主管.姓名, 階層 + 1
	from 主管 join 主管_遞迴
	on 主管.主管字號 = 主管_遞迴.員工字號
)
select * from 主管_遞迴
order by 階層, 員工字號;