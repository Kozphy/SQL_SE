USE 教務系統 
GO
SELECT 教授編號, 課程編號, COUNT(學號) AS 總數
FROM 班級 
WHERE 教授編號 IN ('I001', 'I003')
GROUP BY GROUPING SETS
(
  (教授編號, 課程編號), 
  (教授編號),
  ()
)









































