use 教務系統

select 教授編號, 課程編號, count(學號) as 總數
from 班級
where 教授編號 in ('I001','I001')
group by grouping sets
(
	(教授編號,課程編號),
	(教授編號),
	()
)