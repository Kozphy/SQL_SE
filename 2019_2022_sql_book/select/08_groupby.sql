-- group by
select 課程編號, count(*) as 學生數
from 班級 group by 課程編號;

select 性別, count(*) as 學生數
from 學生 group by 性別;

select 學號, 課程編號 from 班級
group by 課程編號, 學號
having 學號 = 'S002';

