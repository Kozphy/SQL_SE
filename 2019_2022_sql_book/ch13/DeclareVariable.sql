-- go command define batch
CREATE VIEW dbo.�ҵ{_���Ǥ�
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
	SELECT * 
	FROM dbo.�ҵ{
	--WITH CHECK OPTION
	WHERE �Ǥ� >= 4
GO

SELECT * FROM �ҵ{_���Ǥ�;

/* ���� */
CREATE VIEW dbo.�ҵ{_���Ǥ�
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
	SELECT * 
	FROM dbo.�ҵ{
	--WITH CHECK OPTION
	WHERE �Ǥ� >= 4
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
PRINT '�`�B:' + CAST(@balance AS CHAR)

-- using select assign to variable
DECLARE @total INT
SET @total = (SELECT SUM(�Ǥ�) FROM �ҵ{)
PRINT '�Ǥ���:' + CAST(@total AS CHAR)

DECLARE @myName VARCHAR(12)
SELECT @myName = '���|�w'
SELECT @myName AS �m�W

-- using local variable select from table
DECLARE @myName VARCHAR(12)
DECLARE @myCity VARCHAR(10)
SELECT @myName = �m�W, @myCity= ���� 
FROM ���u WHERE �~�� >= 60000

SELECT @myName AS �m�W, @myCity AS ����

SELECT �m�W, ���� FROM ���u
WHERE �~�� > 60000

DECLARE @c_no VARCHAR(5)
SELECT @c_no = 'CS101'
SELECT �ҵ{�s��, �W��, �Ǥ� FROM �ҵ{
WHERE �ҵ{�s�� = @c_no;

-- declare students
DECLARE @students TABLE
(std_no CHAR(4), name VARCHAR(12))

INSERT @students
SELECT �Ǹ�, �m�W FROM �ǥ�
WHERE �ʧO = '�k';

SELECT * FROM @students

-- scopes of variable
DECLARE @myName VARCHAR(12)
GO
SELECT @myName = '�i�L��'
GO












































 


























































































 

