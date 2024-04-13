-- get sql system variable
DECLARE @MyRowCount INT, @MyIdentity INT
INSERT 課程備份2
SELECT 課程編號, 名稱, 學分 FROM 課程
WHERE 學分 >= 4
SET @MyRowCount = @@rowcount
SET @MyIdentity = @@identity
SELECT @MyRowCount AS 影響的紀錄數,
		@@servername AS 伺服器名稱,
		@MyIdentity AS 自動編號,
		@@error AS 錯誤編號

-- T-SQL 運算子
PRINT cast('2023-06-30' AS DATETIME) - 1
PRINT cast('2023-06-30' AS DATETIME) + 1

-- 簡潔的 T-SQL
DECLARE @x INT = 4, @y INT = 20
SET @x *= @y
SELECT @x AS afterProduct, @y AS '@y'

-- cast operator
PRINT '學分總數:' + CAST(@total AS char)
PRINT CAST('2023-06-30' AS DATETIME) - 1

-- convert() function
PRINT '學分總數:' + CONVERT(CHAR, @total)
PRINT CONVERT(DATETIME, '2023-06-30') - 1

