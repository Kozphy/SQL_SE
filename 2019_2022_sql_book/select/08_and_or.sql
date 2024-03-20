-- and, or operator
select * from 課程
where 課程編號 like '%1%' and 名稱 like '%程式%';


select * from 課程
where 課程編號 like '%3%' or 名稱 like '%程式%';

-- and
select * from 課程
where 課程編號 like '%1%' and 名稱 like '%程式%';

-- or
select * from 課程
where 課程編號 like '%3%' or 名稱 like '%程式%';

-- and with or
select * from 課程
where 課程編號 like '%3%' and 名稱 like '%程式%';

-- 連接多個條件與括號
select * from 課程
where 課程編號 like '%2%'
and 名稱 like '%程式%'
or 學分 >= 4

select * from 課程
where 課程編號 like '%2%'
and (名稱 like '%程式%'
or 學分 >= 4)

select 身份證字號, 姓名, 電話, (薪水 - 扣稅 - 保險) as 薪水淨額  
from 員工
where (薪水 - 扣稅 - 保險) < 40000