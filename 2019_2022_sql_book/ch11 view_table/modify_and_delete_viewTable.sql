-- modified and delete view table
ALTER VIEW 學生聯絡_檢視
AS
SELECT
	學號
   ,姓名
   ,性別
FROM 學生
GO

SELECT
	*
FROM 學生聯絡_檢視;

-- delete view table
DROP VIEW 學生聯絡_檢視;

-- create view with check option
CREATE VIEW dbo.生日_檢視_有WCO
-- WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
SELECT
	學號
   ,姓名
   ,生日
FROM dbo.學生
WHERE 生日 > '2003-03-01'
WITH CHECK OPTION;

SELECT
	*
FROM 生日_檢視_有WCO;

CREATE VIEW dbo.生日_檢視_沒有WCO
--WITH ENCRYPTION, SCHEMABINDING, VIEW_METADATA
AS
SELECT
	學號
   ,姓名
   ,生日
FROM dbo.學生
WHERE 生日 > '2003-03-01';
--WITH CHECK OPTION

SELECT
	*
FROM 生日_檢視_有WCO;

-- create new data in view table
/* Error */
INSERT INTO 生日_檢視_有WCO
VALUES ('S016', '江峰', '2003-01-01')
GO

INSERT INTO 生日_檢視_沒有WCO
	VALUES ('S016', '江峰', '2003-01-01')
GO

SELECT * FROM 學生;

-- update data in view
INSERT INTO 生日_檢視_有WCO
VALUES ('S017', '李峰', '2003-04-01')
GO

UPDATE 生日_檢視_有WCO
SET 生日 = '2003-01-01' WHERE 學號 = 'S017'
GO

SELECT * FROM 學生
WHERE 性別 IS NULL AND 電話 IS NULL;

UPDATE 學生
SET 生日 = '2003-10-01' WHERE 姓名 = '江峰'
GO

UPDATE 生日_檢視_沒有WCO
SET 生日 = '2002-10-01' WHERE 姓名 = '江峰'
GO
SELECT * FROM 學生 WHERE	姓名 = '江峰';

-- delete view table record
DELETE FROM 生日_檢視_有WCO
WHERE 學號 = 'S016'
GO

DELETE FROM 生日_檢視_有WCO
WHERE 學號 = 'S017'
GO

DELETE FROM dbo.生日_檢視_沒有WCO
WHERE 學號='S016'
GO

DELETE FROM dbo.生日_檢視_沒有WCO
WHERE 學號='S017'
GO

