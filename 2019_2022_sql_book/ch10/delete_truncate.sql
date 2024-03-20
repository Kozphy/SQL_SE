-- delete record
DELETE FROM dbo.學生
WHERE 學號 = 'S108';

DELETE 課程備份2;

-- subquery and merge delete
DELETE FROM dbo.課程
WHERE 課程編號 = (SELECT
			課程編號
		FROM 課程備份
		WHERE 名稱 = '平行程式設計')

DELETE 班級 FROM 班級 INNER JOIN 教授
ON 班級.教授編號 = 教授.教授編號
WHERE 教授.科系 = 'CIS' AND 班級.教室 = '300-K';

SELECT
	*
FROM 班級
JOIN 教授
	ON 班級.教授編號 = 教授.教授編號
WHERE 教授.科系 = 'CIS'
AND 班級.教室 = '300-K';