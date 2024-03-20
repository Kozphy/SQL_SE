-- inner join
select 學生.學號, 學生.姓名, 班級.課程編號, 班級.教授編號
from 學生 inner join 班級
on 學生.學號 = 班級.學號;

select 學生.學號, 學生.姓名,課程.*, 班級.教授編號
from 課程 inner join
(學生 inner join 班級 on 學生.學號 = 班級.學號)
on 班級.課程編號 = 課程.課程編號

select 學生.學號, 學生.姓名, 課程.*,　教授.*
from 教授　inner join
(課程　inner join
(學生　inner join 班級 on 學生.學號 = 班級.學號)
on 班級.課程編號 = 課程.課程編號)
on 班級.教授編號 = 教授.教授編號

-- 隱含 inner join
select 學生.學號, 學生.姓名, 班級.課程編號, 班級.教授編號
from 學生, 班級
where 學生.學號 = 班級.學號;