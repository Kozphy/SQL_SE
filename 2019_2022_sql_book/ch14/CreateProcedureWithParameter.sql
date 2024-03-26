-- create procedure with parameter procedures
CREATE PROCEDURE �ҵ{�d�� @c_no CHAR(5)
AS
BEGIN
SELECT
	�ҵ{�s��
   ,�W��
   ,�Ǥ�
FROM �ҵ{
WHERE �ҵ{�s�� = @c_no
END

EXEC �ҵ{�d�� CS349;

SELECT
	*
FROM �ҵ{;

-- create procedure
CREATE PROC ���u�d�� @salary MONEY,
@tax MONEY
AS
BEGIN
IF @salary <= 0
SET @salary = 30000
	IF @tax <= 0
SET @tax = 300
SELECT
	�����Ҧr��
   ,�m�W
   ,(�~�� - ���|) AS �ұo�B
FROM ���u
WHERE �~�� >= @salary
AND ���| >= @tax
END

EXEC ���u�d�� @salary = 20000
		 ,@tax = 1000;

EXEC ���u�d�� 50000
		 ,500;

-- create procedure with default parameter
CREATE PROC �a�}�d�� @city CHAR(5) = '�x�_',
@street VARCHAR(30) = '������'
AS
BEGIN
SELECT
	�����Ҧr��
   ,�m�W
   ,(�~�� - ���|) AS �ұo�B
   ,(���� + ��D) AS �a�}
FROM ���u
WHERE ���� LIKE @city
AND ��D LIKE @street
END

EXEC �a�}�d��;

-- execute proc with default parameter
EXEC �a�}�d�� '���'
		 ,DEFAULT

-- execute nesting proc
CREATE PROC �I�s�{�� @proc_name VARCHAR(10)
AS
PRINT '�}�l�h��: ' + CAST(@@NESTLEVEL AS CHAR)

PRINT '�����h��: ' + CAST(@@NESTLEVEL AS CHAR)
GO

CREATE PROC ���յ{��
AS
PRINT '�h��: ' + CAST(@@NESTLEVEL AS CHAR)

EXEC �I�s�{�� '���յ{��';

-- return value for stored procedure
/*
	Using RETURN or OUTPUT keyword
*/
CREATE PROC �s�W�ҵ{ 
	@c_no CHAR(5),
	@title VARCHAR(30),
	@credits INT
AS
BEGIN
	DECLARE @errorNo INT
	INSERT INTO �ҵ{
		VALUES (@c_no, @title, @credits)
	SET @errorNo = @@ERROR
	IF @errorNo <> 0
	BEGIN
    	IF @errorNo = 2627
			PRINT '���~! ���Ư�����!'
		ELSE
			PRINT '���~! �������~�o��!'
		RETURN @errorNo
	END
END

-- exec procedure 
DECLARE @retVar int
EXEC @retVar = �s�W�ҵ{
				@c_no = 'CS222'
				,@title = '��Ʈw�{���]�p'
				,@credits = 3;

PRINT '�Ǧ^�N�X:' + CONVERT(VARCHAR, @retVar);

/* 
	Using output keyword which 
	allow store procedure getting returning value
*/
create PROC �~���d��
	@name varchar(12),
	@salary money OUTPUT
AS
BEGIN
	SELECT @salary = �~��
	from ���u
	WHERE �m�W = @name
END

EXEC �~���d�� @name= N'���߹s',  @salary=50000;

DECLARE @mySalary MONEY
EXEC �~���d�� '�i�L��', @salary = @mySalary OUTPUT
PRINT N'Joe''s �~��: ' + convert(varchar, @mySalary)

