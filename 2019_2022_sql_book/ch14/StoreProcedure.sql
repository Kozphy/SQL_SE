-- create procedure
CREATE PROCEDURE 學生資料查詢
AS
BEGIN
	SELECT
		學號
	   ,姓名
	   ,電話
	FROM 學生
END
GO

EXEC dbo.學生資料查詢;

-- create procedure
CREATE PROC dbo.課程資料報表 AS
BEGIN
	SELECT 課程編號
		  ,名稱
		  ,學分 
	FROM 課程
END
GO

EXEC dbo.課程資料報表

-- exec stored procedure
-- join 課程、教授、學生
CREATE PROC 學生上課報表 AS
BEGIN
	SELECT * FROM 教授 JOIN
	(課程 INNER JOIN
	(學生 INNER JOIN 班級 ON 學生.學號 = 班級.學號)
	ON 班級.課程編號 = 課程.課程編號)
	ON 班級.教授編號 = 教授.教授編號
END

EXEC 學生上課報表


DECLARE @proc_name CHAR(20)
SET @proc_name = '學生上課報表'
EXEC @proc_name
