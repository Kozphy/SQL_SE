-- go command define batch
CREATE VIEW dbo.課程_高學分
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
	SELECT * 
	FROM dbo.課程
	--WITH CHECK OPTION
	WHERE 學分 >= 4
GO

SELECT * FROM 課程_高學分;

/* 註解 */
CREATE VIEW dbo.課程_高學分
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
	SELECT * 
	FROM dbo.課程
	--WITH CHECK OPTION
	WHERE 學分 >= 4
GO

-- print
PRINT 'This is a test.'
PRINT N'This is a book.'

-- declare variable
DECLARE @balance INT
DECLARE @total INT = 100
PRINT @balance
PRINT @total

DECLARE @myName VARCHAR(12),
		@amount INT = 123,
		@mycounter INT = 5
go

-- assign variable
DECLARE @balance INT
SET @balance = 1000
SET @balance = @balance *1.02
PRINT '總額:' + CAST(@balance AS CHAR)

-- using select assign to variable
DECLARE @total INT
SET @total = (SELECT SUM(學分) FROM 課程)
PRINT '學分數:' + CAST(@total AS CHAR)

DECLARE @myName VARCHAR(12)
SELECT @myName = '陳會安'
SELECT @myName AS 姓名

-- using local variable select from table
DECLARE @myName VARCHAR(12)
DECLARE @myCity VARCHAR(10)
SELECT @myName = 姓名, @myCity= 城市 
FROM 員工 WHERE 薪水 >= 60000

SELECT @myName AS 姓名, @myCity AS 城市

SELECT 姓名, 城市 FROM 員工
WHERE 薪水 > 60000

DECLARE @c_no VARCHAR(5)
SELECT @c_no = 'CS101'
SELECT 課程編號, 名稱, 學分 FROM 課程
WHERE 課程編號 = @c_no;

-- declare students
DECLARE @students TABLE
(std_no CHAR(4), name VARCHAR(12))

INSERT @students
SELECT 學號, 姓名 FROM 學生
WHERE 性別 = '男';

SELECT * FROM @students

-- scopes of variable
DECLARE @myName VARCHAR(12)
GO
SELECT @myName = '張無忌'
GO












































 


























































































 

