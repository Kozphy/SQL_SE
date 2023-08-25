use 教務系統

-- 9-19
select 高薪員工.姓名, 高薪員工.電話, 高薪員工.薪水 
from (select 身份證字號, 姓名, 電話, 薪水
from 員工
where 薪水 > 50000) AS 高薪員工

-- 9-21_ch9_4_2
select count(*) AS 上課數 from 班級
where 學號 =
(select 學號 from 學生 where 姓名 = '陳會安')

-- 9-21_2a
select 身份證字號, 姓名, 電話, 薪水 from 員工
where 薪水 >=
(select avg(薪水) from 員工)



