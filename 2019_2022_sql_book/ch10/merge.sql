-- merge instruction
MERGE 客戶 AS c USING 新客戶 AS nc
ON c.客戶編號 = nc.客戶編號
WHEN MATCHED
	THEN UPDATE
		SET 姓名 = nc.姓名
		   ,電話 = nc.電話
WHEN NOT MATCHED BY TARGET
	THEN INSERT (客戶編號, 姓名, 電話)
			VALUES (nc.客戶編號, nc.姓名, nc.電話);


MERGE 客戶業績 AS cs USING 客戶 AS c
ON cs.客戶編號 = c.客戶編號
-- delete
WHEN MATCHED
	AND cs.業績目標 > 250
	THEN DELETE
-- update
WHEN MATCHED
	THEN UPDATE
		SET 業績目標 = 業績目標 + 25
-- insert
WHEN NOT MATCHED BY TARGET
	THEN INSERT (客戶編號, 業績目標)
			VALUES (c.客戶編號, 100);

-- DML output clause
UPDATE 客戶 SET
	電話 = '0938000123'
-- inserted 更新後
-- deleted 更新前
OUTPUT
	INSERTED.客戶編號, INSERTED.姓名,
	INSERTED.電話 AS 更新後電話,
	DELETED.電話 AS 更新前電話
WHERE 客戶編號 = 'C001';

INSERT INTO [dbo].[記錄業績目標] (客戶編號, 原始目標, 最新目標)
SELECT * FROM 
(
	UPDATE 客戶業績
	SET 業績目標 = 業績目標 + (業績目標 * 0.2)
	OUTPUT
		INSERTED.客戶編號 AS 客戶編號,
		DELETED.業績目標 AS 原始目標,
		INSERTED.業績目標 AS 最新目標
) AS c
WHERE c.最新目標 > 200;


