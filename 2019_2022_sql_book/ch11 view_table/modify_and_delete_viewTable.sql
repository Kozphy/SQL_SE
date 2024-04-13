-- modified and delete view table
ALTER VIEW �ǥ��p��_�˵�
AS
SELECT
	�Ǹ�
   ,�m�W
   ,�ʧO
FROM �ǥ�
GO

SELECT
	*
FROM �ǥ��p��_�˵�;

-- delete view table
DROP VIEW �ǥ��p��_�˵�;

-- create view with check option
CREATE VIEW dbo.�ͤ�_�˵�_��WCO
-- WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
SELECT
	�Ǹ�
   ,�m�W
   ,�ͤ�
FROM dbo.�ǥ�
WHERE �ͤ� > '2003-03-01'
WITH CHECK OPTION;

SELECT
	*
FROM �ͤ�_�˵�_��WCO;

CREATE VIEW dbo.�ͤ�_�˵�_�S��WCO
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
SELECT
	�Ǹ�
   ,�m�W
   ,�ͤ�
FROM dbo.�ǥ�
WHERE �ͤ� > '2003-03-01';
--WITH CHECK OPTION

SELECT
	*
FROM �ͤ�_�˵�_��WCO;

-- create new data in view table
/* Error */
INSERT INTO �ͤ�_�˵�_��WCO
VALUES ('S016', '���p', '2003-01-01')
GO

INSERT INTO �ͤ�_�˵�_�S��WCO
	VALUES ('S016', '���p', '2003-01-01')
GO

SELECT * FROM �ǥ�;

-- update data in view
INSERT INTO �ͤ�_�˵�_��WCO
VALUES ('S017', '���p', '2003-04-01')
GO

UPDATE �ͤ�_�˵�_��WCO
SET �ͤ� = '2003-01-01' WHERE �Ǹ� = 'S017'
GO

SELECT * FROM �ǥ�
WHERE �ʧO IS NULL AND �q�� IS NULL;

UPDATE �ǥ�
SET �ͤ� = '2003-10-01' WHERE �m�W = '���p'
GO

UPDATE �ͤ�_�˵�_�S��WCO
SET �ͤ� = '2002-10-01' WHERE �m�W = '���p'
GO
SELECT * FROM �ǥ� WHERE	�m�W = '���p';

-- delete view table record
DELETE FROM �ͤ�_�˵�_��WCO
WHERE �Ǹ� = 'S016'
GO

DELETE FROM �ͤ�_�˵�_��WCO
WHERE �Ǹ� = 'S017'
GO

DELETE FROM dbo.�ͤ�_�˵�_�S��WCO
WHERE �Ǹ�='S016'
GO

DELETE FROM dbo.�ͤ�_�˵�_�S��WCO
WHERE �Ǹ�='S017'
GO

