-- right join
select 教授.教授編號, 員工.姓名, 教授.職稱, 員工.薪水
from 教授 right join 員工
on 教授.身份證字號 = 員工.身份證字號;

-- right join and inner join
select 學生.學號, 學生.姓名, 課程.*, 班級.教授編號
from 課程 right join
(學生 inner join 班級 on 學生.學號 = 班級.學號)
on 班級.課程編號 = 課程.課程編號;





