-- filter index
CREATE TABLE dbo.廠商名單 (
	廠商編號 INT NOT NULL IDENTITY PRIMARY KEY
   ,廠商名稱 VARCHAR(100)
   ,廠商類型 TINYINT NOT NULL
   ,分公司數 INT SPARSE
)
GO

CREATE NONCLUSTERED INDEX 分公司數_索引
ON 廠商名單 (分公司數)
WHERE 廠商類型 = 3;

-- row data store at zone index
SELECT
	姓名
   ,電話
FROM 學生
WHERE 生日 = '2003-09-03';

-- create columnstone nocluster index index
CREATE COLUMNSTORE INDEX 學生資料行_索引
ON 學生備份 (姓名, 生日, 電話);

-- create 

