-- group by with count
SELECT
	班級.課程編號, COUNT(*)　AS 班級編號總數
FROM 班級
JOIN 課程
	ON 班級.課程編號 = 課程.課程編號
GROUP BY 班級.課程編號;