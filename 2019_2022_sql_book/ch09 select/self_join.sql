-- self join
select distinct 員工.姓名, 員工.城市, 員工.街道
from 員工 join 員工 as 員工1
on (員工.城市 = 員工1.城市 and
	員工.身份證字號 <> 員工1.身份證字號)
order by 員工.城市;