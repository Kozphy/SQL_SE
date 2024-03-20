select 學號, 課程編號 from 班級
group by 課程編號, 學號
having 學號 = 'S002'

select 課程編號, count(*) as 學生數
from 班級
where 教授編號 = 'I003'
group by 課程編號
having count(*) >= 2