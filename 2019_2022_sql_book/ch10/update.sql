-- update
SELECT
	*
FROM 課程;

UPDATE 課程
SET 名稱 = '資料庫系統(二)'
   ,學分 = 4
WHERE 課程編號 = 'CS410';

UPDATE 課程
SET 學分 = 學分 + 1
WHERE 課程編號 = 'CS410';

-- update with subquery
UPDATE 學生
SET 姓名 = (SELECT
		姓名
	FROM 員工
	WHERE 身份證字號 = 'H098765432')
WHERE 學號 = 'S108';

UPDATE 課程備份
SET 學分 = 4
FROM (SELECT
		課程編號
	   ,COUNT(*) AS 學生數
	FROM 班級
	GROUP BY 課程編號) AS 上課
WHERE 課程備份.課程編號 = 上課.課程編號
AND 上課.學生數 > 3;

SELECT
	*
FROM 課程備份;

UPDATE 課程備份
SET 學分 = 5
WHERE 課程編號 IN (SELECT
		*
	FROM 課程備份2)

-- merge update
UPDATE 班級
SET 班級.上課時間 = '9:00am'
FROM 班級
INNER JOIN 教授
	ON 班級.教授編號 = 教授.教授編號
WHERE 教授.科系 = 'CIS'
AND 班級.教室 = '300-K';

SELECT
	*
FROM 班級;
SELECT
	*
FROM 教授;

SELECT
	*
FROM 班級
JOIN 教授
	ON 教授.教授編號 = 班級.教授編號

SELECT 教授編號
	  ,學號
	  ,課程編號
	  ,上課時間
	  ,教室
	  ,DATEPART(HOUR, 上課時間) AS 上課時間
	  FROM 班級;