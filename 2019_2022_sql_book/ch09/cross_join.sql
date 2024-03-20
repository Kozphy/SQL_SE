-- cross join
select 學生.學號, 學生.姓名, 班級.課程編號, 班級.教授編號
from 學生 cross join 班級;

select * from 學生;
select * from 班級;

select 學生.學號, 學生.姓名, 班級.課程編號, 班級.教授編號
from 學生 cross join 班級
where 學生.學號 = 班級.學號;