-- sql flow control
/*begin end*/
DECLARE @dbName VARCHAR(10) = '教務系統'
IF @dbName = '教務系統' 
BEGIN  
	PRINT	'資料庫: 教務系統'
	PRINT	'資料表: 教授, 課程'
END

/* if / else */
DECLARE @height INT
SET @height = 125
IF @height <= 120
	PRINT '半票'
IF @height > 120
BEGIN
	PRINT '全票'
	PRINT 'height > 120'
END

IF (SELECT count(*) FROM 教授) >= 1
	PRINT '教授資料表有存在紀錄!'
ELSE
	PRINT '教授資料表沒有紀錄!'

IF DB_ID('教務系統') IS NOT NULL
	PRINT '找到教務系統資料表'

-- return　可以中斷批次、或預存程序的執行
DECLARE @total INT
SET @total = (SELECT count(*) FROM 課程)
IF(SELECT count(*) FROM 學生) >= 1
BEGIN
	PRINT '學生資料表有紀錄資料!'
	RETURN
END
ELSE
	PRINT '學生資料表沒有紀錄資料!'
PRINT '課程數:' + CAST(@total AS CHAR)

--　simple case
SELECT 學號, 姓名,
	CASE 性別
		WHEN '男' THEN 'Male'
		WHEN '女' THEN 'Female'
		ELSE 'N/A'
	END AS 學生性別
FROM 學生

-- search case
DECLARE @type VARCHAR(12), @age INT
SET @age = 25
SET @type =
	CASE 
    	WHEN @age < 15 THEN '小孩'
    	WHEN @age < 60 THEN '成人'
		WHEN @age < 100 THEN '老人'
		ELSE 'Free'
    	-- ELSE
    END
PRINT @type

-- while
DECLARE @counter INT, @total INT
SET @counter = 1
SET @total = 0
WHILE @counter <= 5
BEGIN
	SET @total = @total + @counter
	PRINT '計數: ' + CAST(@counter AS CHAR)
	SET @counter = @counter + 1
END
PRINT '1 加到 5 = ' + CAST(@total AS CHAR)

-- recursive while
DECLARE @book_Id INT, @category_Id INT
CREATE TABLE TextsBooks (book_Id INT, category_Id INT)
SET @book_Id = 0
SET @category_Id = 0
WHILE @book_Id < 2
BEGIN
	SET @book_Id = @book_Id + 1
	WHILE @category_Id < 3
	BEGIN
		SET @category_Id = @category_Id + 1
		INSERT INTO TextsBooks
		VALUES(@book_Id, @category_Id)
	END
	SET @category_Id = 0
END

SELECT * FROM TextsBooks tb;

DROP TABLE TextsBooks;

-- break
DECLARE @counter INT, @total INT
SET @total = 0
SET @counter = 1
WHILE @counter <= 15
BEGIN
	SET @total  = @total + @counter
	PRINT '計數: ' + CAST(@counter AS CHAR)
	SET @counter += 1
	IF @counter > 5 BREAK
END
PRINT '1 家到 5 = ' + CAST(@total AS CHAR)

-- continue
DECLARE @counter INT, @total INT
SET @total = 0
SET @counter = 0
WHILE @counter <= 99
	BEGIN
		SET @counter +=1
		IF @counter % 2 = 0 CONTINUE
		SET @total += @counter
	END
PRINT '總和: ' + CAST(@total AS CHAR)

-- GOTO
DECLARE @book_Id INT, @category_Id INT
CREATE TABLE dbo.TextBooks (book_Id INT, category_Id INT)
SET @book_Id = 0
SET @category_Id = 0
WHILE @book_Id < 2
BEGIN
	SET @book_Id += 1
	WHILE @category_Id < 3
		BEGIN
			SET @category_Id += 1
			IF @book_id = 1 AND @category_id = 3
				GOTO BREAK_POINT
			INSERT INTO TextBooks
			VALUES(@book_Id, @category_Id)
		END
END

BREAK_POINT:
SELECT * FROM TextBooks tb;

DROP TABLE TextBooks;

-- waitfor
WAITFOR DELAY '00:00:03'
SELECT * FROM 學生;

WAITFOR TIME '23:00'
SELECT * FROM 員工

-- iif and choose function
DECLARE @math INT = 65
DECLARE @english INT = 70
DECLARE @result VARCHAR(10)
SET @result = IIF(@math > @english, '數學高', '英文高')
PRINT @result

DECLARE @a INT = 55
DECLARE @b INT = 40
SELECT iif(@a > @b AND @b > 35, 'TRUE', 'FALSE') AS 結果

-- choose(index, 1, 2 , 3, 4) function
DECLARE @type INT
SET @type = 2
DECLARE @result VARCHAR(10)
SET @result = CHOOSE(@type, '全票', '半票', '敬老票', '免票')
PRINT @result

-- error handling
/*
	ERROR_NUMBER() 傳回錯誤號碼
	ERROR_MESSAGE() 傳回完整錯誤訊息
	ERROR_SEVERITY() 傳回錯誤嚴重性代碼
	ERROR_STATE() 傳回錯誤的狀態碼
	ERROR_LINE() 傳回造成錯誤的行列號
	ERROR_PROCEDURE() 傳回發生錯誤的預存或觸發程序名稱
*/
BEGIN TRY
	SELECT 1 / 0 -- 除以零的錯誤
END TRY
BEGIN CATCH
	-- display error info
	SELECT ERROR_NUMBER() AS ErrorNumber,
			ERROR_SEVERITY() AS ErrorSeverity,
			ERROR_STATE() AS ErrorState,
			ERROR_PROCEDURE() AS ErrorProcedure,
			ERROR_LINE() AS ErrorLine,
			ERROR_MESSAGE() AS ErrorMessage
END CATCH

-- Using RAISERROR() function creating error info
/*
CREATE error info, SQL server 錯誤嚴重性等級分為 1 ~ 25, 
19 ~ 25 只有系統管理者才有權限設定。
*/
EXEC sys.sp_addmessage 55555, 5, 'Error! grade <0!',
	@lang = 'us_english'
GO

EXEC sys.sp_addmessage 55555, 5, '成績為負數的錯誤!',
	@lang = '繁體中文'

-- create error info
/*
	RAISERROR()
*/
BEGIN TRY
	RAISERROR (55555, 17, 10)
END TRY
BEGIN CATCH
	SELECT ERROR_NUMBER() AS ErrorNumber,
			ERROR_SEVERITY() AS ErrorSeverity,
			ERROR_STATE() AS ErrorState,
			ERROR_PROCEDURE() AS ErrorProcedure,
			ERROR_LINE() AS ErrorLine,
			ERROR_MESSAGE() AS ErrorMessage
END CATCH

-- try/catch THROW command statement
CREATE TABLE MyTEMPDB (
	ID INT PRIMARY KEY
)
BEGIN TRY
	INSERT MyTEMPDB (ID)
		VALUES (1)
	INSERT MyTEMPDB (ID)
		VALUES (1) -- repeat insert record
END TRY

BEGIN CATCH
	THROW
END CATCH

BEGIN TRY
	SELECT 1/0
END TRY
BEGIN CATCH
	THROW 51000, 'divided by 1 error....'
END CATCH


