-- create procedure
CREATE PROCEDURE �ǥ͸�Ƭd��
AS
BEGIN
	SELECT
		�Ǹ�
	   ,�m�W
	   ,�q��
	FROM �ǥ�
END
GO

EXEC dbo.�ǥ͸�Ƭd��;

-- create procedure
CREATE PROC dbo.�ҵ{��Ƴ��� AS
BEGIN
	SELECT �ҵ{�s��
		  ,�W��
		  ,�Ǥ� 
	FROM �ҵ{
END
GO

EXEC dbo.�ҵ{��Ƴ���

-- exec stored procedure
-- join �ҵ{�B�б¡B�ǥ�
CREATE PROC �ǥͤW�ҳ��� AS
BEGIN
	SELECT * FROM �б� JOIN
	(�ҵ{ INNER JOIN
	(�ǥ� INNER JOIN �Z�� ON �ǥ�.�Ǹ� = �Z��.�Ǹ�)
	ON �Z��.�ҵ{�s�� = �ҵ{.�ҵ{�s��)
	ON �Z��.�б½s�� = �б�.�б½s��
END

EXEC �ǥͤW�ҳ���


DECLARE @proc_name CHAR(20)
SET @proc_name = '�ǥͤW�ҳ���'
EXEC @proc_name
