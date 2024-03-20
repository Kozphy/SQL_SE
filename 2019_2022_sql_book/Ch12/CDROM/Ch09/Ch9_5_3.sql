USE 教務系統 
GO
WITH 教授_員工
AS (
SELECT 教授.*, 員工.姓名
FROM 教授 INNER JOIN 員工
ON 教授.身份證字號 = 員工.身份證字號
)
SELECT 學生.學號, 學生.姓名, 課程.*, 教授_員工.*
FROM 教授_員工 INNER JOIN
(課程 INNER JOIN 
(學生 INNER JOIN 班級 ON 學生.學號 = 班級.學號) 
ON 班級.課程編號 = 課程.課程編號) 
ON 班級.教授編號 = 教授_員工.教授編號



















 































































