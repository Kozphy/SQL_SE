-- union
select 姓名 from 學生
union
select 姓名 from 員工;

-- union total
select count(*) as total from (
	select 姓名 from 學生
	union
	select 姓名 from 員工
) as 合併結果;



