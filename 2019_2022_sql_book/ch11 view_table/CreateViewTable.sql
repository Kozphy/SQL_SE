-- create view
CREATE VIEW �ǥ��p��_�˵� (
	�Ǹ�
   ,�ǥͩm�W
   ,�ǥ͹q��
)
AS
SELECT
	�Ǹ�
   ,�m�W
   ,�q��
FROM �ǥ�
GO

SELECT
	*
FROM �ǥ��p��_�˵�;

-- create view with encryption
/*
	Creating a
	SQL Server view with the WITH
	ENCRYPTION option is a useful technique 
	to protect your view code from being published 
	or copied without permission.
*/
CREATE VIEW ���~���u_�˵�
WITH ENCRYPTION
AS
SELECT
	*
FROM ���u
WHERE �~�� > 50000
GO

SELECT
	*
FROM ���~���u_�˵�;


-- create view with schemabinding
CREATE VIEW ���~���u�p��_�˵�
WITH SCHEMABINDING
AS
SELECT
	�����Ҧr��
   ,�m�W
   ,�q��
FROM ���u
WHERE �~�� > 50000;
GO

SELECT
	*
FROM ���~���u�p��_�˵�;

-- create student classRoom view table
CREATE VIEW �ǥ�_�Z��_�˵�
AS
SELECT
	�ǥ�.�Ǹ�
   ,�ǥ�.�m�W
   ,�ҵ{.*
   ,�б�.*
FROM �б�
INNER JOIN (�ҵ{
INNER JOIN (�ǥ�
INNER JOIN �Z��
	ON �ǥ�.�Ǹ� = �Z��.�Ǹ�)
	ON �Z��.�ҵ{�s�� = �ҵ{.�ҵ{�s��)
	ON �Z��.�б½s�� = �б�.�б½s��
GO

SELECT
	*
FROM �ǥ�_�Z��_�˵�;

CREATE VIEW �Ǥ�_�˵�
AS
SELECT
	�ǥ�.�Ǹ�
   ,COUNT(*) AS �׽Ҽ�
   ,SUM(�ҵ{.�Ǥ�) AS �Ǥ���
FROM �ǥ�
	,�ҵ{
	,�Z��
WHERE �ǥ�.�Ǹ� = �Z��.�Ǹ�
AND �ҵ{.�ҵ{�s�� = �Z��.�ҵ{�s��
GROUP BY �ǥ�.�Ǹ�
GO

SELECT
	*
FROM �Ǥ�_�˵�;

CREATE VIEW ���Ǥ�_�˵�
AS
SELECT
	�ǥ�.�Ǹ�
   ,COUNT(*) AS �׽Ҽ�
   ,SUM(�ҵ{.�Ǥ�) AS �Ǥ���
FROM �ǥ�
	,�ҵ{
	,�Z��
WHERE �ǥ�.�Ǹ� = �Z��.�Ǹ�
AND �ҵ{.�ҵ{�s�� = �Z��.�ҵ{�s��
GROUP BY �ǥ�.�Ǹ�
HAVING SUM(�ҵ{.�Ǥ�) >= 7
GO

SELECT
	*
FROM ���Ǥ�_�˵�;

CREATE VIEW �ǥ�_�Ǥ�_�˵�
AS
SELECT
	�Ǥ�_�˵�.*
   ,�ǥ�.�m�W
   ,�ǥ�.�q��
FROM �ǥ�
	,�Ǥ�_�˵�
WHERE �ǥ�.�Ǹ� = �Ǥ�_�˵�.�Ǹ�
GO

SELECT
	*
FROM �Ǥ�_�˵�;

SELECT
	*
FROM �ǥ�_�Ǥ�_�˵�;

