USE 教務系統 
GO
SELECT DISTINCT 員工.姓名, 員工.城市, 員工.街道
FROM 員工 INNER JOIN 員工 AS 員工1 
ON ( 員工.城市 = 員工1.城市 AND
     員工.身份證字號 <> 員工1.身份證字號 )
ORDER BY 員工.城市























































