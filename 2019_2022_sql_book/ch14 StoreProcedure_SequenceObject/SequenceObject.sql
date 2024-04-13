-- sequence object
-- create Sequence object
create sequence �s������ as int
	start with 1
	increment by 1
	minvalue 1
	no maxvalue

create sequence ��ƶ��� as int
	start with 1
	increment by 1
	minvalue 1
	no maxvalue

-- Using sequence object
SELECT
	NEXT VALUE FOR ��ƶ��� AS ��ƶ���


-- Using sequence object
-- identity insert �]�w�� ON �i�H���ʴ��J identity
SET IDENTITY_INSERT �n�Ȥ� ON
GO

INSERT INTO �n�Ȥ� (�Ȥ�s��, �����Ҧr��, �m�W)
	VALUES (NEXT VALUE FOR �s������, 'A333333333', '���j�w');
GO
SET IDENTITY_INSERT �n�Ȥ� OFF
GO
SET IDENTITY_INSERT �n���u ON
GO
INSERT INTO �n���u (���u�s��, �m�W)
	VALUES (NEXT VALUE FOR �s������, '������')
GO
INSERT INTO �n���u (���u�s��, �m�W)
	VALUES (NEXT VALUE FOR �s������, '������')
GO
SET IDENTITY_INSERT �n���u OFF
GO
SELECT
	*
FROM �n�Ȥ�
GO
SELECT
	*
FROM �n���u


-- modified and delete sequence object
ALTER sequence �s������
	restart with 50
	INCREMENT by 2

-- delete sequence object
DROP SEQUENCE �s������;