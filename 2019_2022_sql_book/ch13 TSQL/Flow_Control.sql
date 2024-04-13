-- sql flow control
/*begin end*/
DECLARE @dbName VARCHAR(10) = '�аȨt��'
IF @dbName = '�аȨt��' 
BEGIN  
	PRINT	'��Ʈw: �аȨt��'
	PRINT	'��ƪ�: �б�, �ҵ{'
END

/* if / else */
DECLARE @height INT
SET @height = 125
IF @height <= 120
	PRINT '�b��'
IF @height > 120
BEGIN
	PRINT '����'
	PRINT 'height > 120'
END

IF (SELECT count(*) FROM �б�) >= 1
	PRINT '�б¸�ƪ��s�b����!'
ELSE
	PRINT '�б¸�ƪ�S������!'

IF DB_ID('�аȨt��') IS NOT NULL
	PRINT '���аȨt�θ�ƪ�'

-- return�@�i�H���_�妸�B�ιw�s�{�Ǫ�����
DECLARE @total INT
SET @total = (SELECT count(*) FROM �ҵ{)
IF(SELECT count(*) FROM �ǥ�) >= 1
BEGIN
	PRINT '�ǥ͸�ƪ��������!'
	RETURN
END
ELSE
	PRINT '�ǥ͸�ƪ�S���������!'
PRINT '�ҵ{��:' + CAST(@total AS CHAR)

--�@simple case
SELECT �Ǹ�, �m�W,
	CASE �ʧO
		WHEN '�k' THEN 'Male'
		WHEN '�k' THEN 'Female'
		ELSE 'N/A'
	END AS �ǥͩʧO
FROM �ǥ�

-- search case
DECLARE @type VARCHAR(12), @age INT
SET @age = 25
SET @type =
	CASE 
    	WHEN @age < 15 THEN '�p��'
    	WHEN @age < 60 THEN '���H'
		WHEN @age < 100 THEN '�ѤH'
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
	PRINT '�p��: ' + CAST(@counter AS CHAR)
	SET @counter = @counter + 1
END
PRINT '1 �[�� 5 = ' + CAST(@total AS CHAR)

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
	PRINT '�p��: ' + CAST(@counter AS CHAR)
	SET @counter += 1
	IF @counter > 5 BREAK
END
PRINT '1 �a�� 5 = ' + CAST(@total AS CHAR)

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
PRINT '�`�M: ' + CAST(@total AS CHAR)

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
SELECT * FROM �ǥ�;

WAITFOR TIME '23:00'
SELECT * FROM ���u

-- iif and choose function
DECLARE @math INT = 65
DECLARE @english INT = 70
DECLARE @result VARCHAR(10)
SET @result = IIF(@math > @english, '�ƾǰ�', '�^�尪')
PRINT @result

DECLARE @a INT = 55
DECLARE @b INT = 40
SELECT iif(@a > @b AND @b > 35, 'TRUE', 'FALSE') AS ���G

-- choose(index, 1, 2 , 3, 4) function
DECLARE @type INT
SET @type = 2
DECLARE @result VARCHAR(10)
SET @result = CHOOSE(@type, '����', '�b��', '�q�Ѳ�', '�K��')
PRINT @result

-- error handling
/*
	ERROR_NUMBER() �Ǧ^���~���X
	ERROR_MESSAGE() �Ǧ^������~�T��
	ERROR_SEVERITY() �Ǧ^���~�Y���ʥN�X
	ERROR_STATE() �Ǧ^���~�����A�X
	ERROR_LINE() �Ǧ^�y�����~����C��
	ERROR_PROCEDURE() �Ǧ^�o�Ϳ��~���w�s��Ĳ�o�{�ǦW��
*/
BEGIN TRY
	SELECT 1 / 0 -- ���H�s�����~
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
CREATE error info, SQL server ���~�Y���ʵ��Ť��� 1 ~ 25, 
19 ~ 25 �u���t�κ޲z�̤~���v���]�w�C
*/
EXEC sys.sp_addmessage 55555, 5, 'Error! grade <0!',
	@lang = 'us_english'
GO

EXEC sys.sp_addmessage 55555, 5, '���Z���t�ƪ����~!',
	@lang = '�c�餤��'

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


