USE 教務系統 
GO
DECLARE @students table
( std_no  char(4), name  varchar(12) )
INSERT @students
SELECT 學號, 姓名 FROM 學生 
WHERE 性別 = '男'
SELECT * FROM @students






 































































