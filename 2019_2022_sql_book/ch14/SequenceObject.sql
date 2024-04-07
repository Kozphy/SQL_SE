-- sequence object
-- create Sequence object
create sequence 編號順序 as int
	start with 1
	increment by 1
	minvalue 1
	no maxvalue

create sequence 整數順序 as int
	start with 1
	increment by 1
	minvalue 1
	no maxvalue

-- Using sequence object
SELECT
	NEXT VALUE FOR 整數順序 AS 整數順序


-- Using sequence object
-- identity insert 設定為 ON 可以把手動插入 identity
SET IDENTITY_INSERT 好客戶 ON
GO

INSERT INTO 好客戶 (客戶編號, 身份證字號, 姓名)
	VALUES (NEXT VALUE FOR 編號順序, 'A333333333', '王大安');
GO
SET IDENTITY_INSERT 好客戶 OFF
GO
SET IDENTITY_INSERT 好員工 ON
GO
INSERT INTO 好員工 (員工編號, 姓名)
	VALUES (NEXT VALUE FOR 編號順序, '王允傑')
GO
INSERT INTO 好員工 (員工編號, 姓名)
	VALUES (NEXT VALUE FOR 編號順序, '陳允傑')
GO
SET IDENTITY_INSERT 好員工 OFF
GO
SELECT
	*
FROM 好客戶
GO
SELECT
	*
FROM 好員工


-- modified and delete sequence object
ALTER sequence 編號順序
	restart with 50
	INCREMENT by 2

-- delete sequence object
DROP SEQUENCE 編號順序;