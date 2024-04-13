-- create view
CREATE VIEW 學生聯絡_檢視 (
	學號
   ,學生姓名
   ,學生電話
)
AS
SELECT
	學號
   ,姓名
   ,電話
FROM 學生
GO

SELECT
	*
FROM 學生聯絡_檢視;

-- create view with encryption
/*
	Creating a
	SQL Server view with the WITH
	ENCRYPTION option is a useful technique 
	to protect your view code from being published 
	or copied without permission.
*/
CREATE VIEW 高薪員工_檢視
WITH ENCRYPTION
AS
SELECT
	*
FROM 員工
WHERE 薪水 > 50000
GO

SELECT
	*
FROM 高薪員工_檢視;


-- create view with schemabinding
CREATE VIEW 高薪員工聯絡_檢視
WITH SCHEMABINDING
AS
SELECT
	身份證字號
   ,姓名
   ,電話
FROM 員工
WHERE 薪水 > 50000;
GO

SELECT
	*
FROM 高薪員工聯絡_檢視;

-- create student classRoom view table
CREATE VIEW 學生_班級_檢視
AS
SELECT
	學生.學號
   ,學生.姓名
   ,課程.*
   ,教授.*
FROM 教授
INNER JOIN (課程
INNER JOIN (學生
INNER JOIN 班級
	ON 學生.學號 = 班級.學號)
	ON 班級.課程編號 = 課程.課程編號)
	ON 班級.教授編號 = 教授.教授編號
GO

SELECT
	*
FROM 學生_班級_檢視;

CREATE VIEW 學分_檢視
AS
SELECT
	學生.學號
   ,COUNT(*) AS 修課數
   ,SUM(課程.學分) AS 學分數
FROM 學生
	,課程
	,班級
WHERE 學生.學號 = 班級.學號
AND 課程.課程編號 = 班級.課程編號
GROUP BY 學生.學號
GO

SELECT
	*
FROM 學分_檢視;

CREATE VIEW 高學分_檢視
AS
SELECT
	學生.學號
   ,COUNT(*) AS 修課數
   ,SUM(課程.學分) AS 學分數
FROM 學生
	,課程
	,班級
WHERE 學生.學號 = 班級.學號
AND 課程.課程編號 = 班級.課程編號
GROUP BY 學生.學號
HAVING SUM(課程.學分) >= 7
GO

SELECT
	*
FROM 高學分_檢視;

CREATE VIEW 學生_學分_檢視
AS
SELECT
	學分_檢視.*
   ,學生.姓名
   ,學生.電話
FROM 學生
	,學分_檢視
WHERE 學生.學號 = 學分_檢視.學號
GO

SELECT
	*
FROM 學分_檢視;

SELECT
	*
FROM 學生_學分_檢視;

