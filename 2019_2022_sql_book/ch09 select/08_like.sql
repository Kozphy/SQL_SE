-- like
select * from 教授 where 科系 like '%S%';

select distinct 課程編號, 上課時間, 教室
from 班級
where 教室 like '%2_-%';

select * from 員工
where 身份證字號 like '[A-D]%';



