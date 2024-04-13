-- outer join
select * from 教授;
select * from 員工;

select 教授.教授編號, 員工.姓名, 教授.職稱, 員工.薪水
from 教授 full join 員工
on 教授.身份證字號 = 員工.身份證字號;

-- full outer join
select 教授.教授編號, 員工.姓名, 教授.職稱, 員工.薪水
from 教授 full outer join 員工
on 教授.身份證字號 = 員工.身份證字號;

