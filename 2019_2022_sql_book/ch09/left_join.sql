-- left join
select 教授.教授編號, 員工.姓名, 教授.職稱, 員工.薪水
from 教授 left join 員工
on 教授.身份證字號 = 員工.身份證字號;