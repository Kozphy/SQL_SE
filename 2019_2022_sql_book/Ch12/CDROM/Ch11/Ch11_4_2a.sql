USE 教務系統 
GO
UPDATE 學生 
SET 生日 = '2003-10-01' WHERE 姓名 = '江峰' 
GO
UPDATE 生日_檢視_沒有WCO 
SET 生日 = '2002-10-01' WHERE 姓名 = '江峰' 
GO
SELECT * FROM 學生 WHERE 姓名 = '江峰'











 































































