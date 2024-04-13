-- revise procedure
ALTER proc 課程資料報表 AS
begin
	select 課程編號, 名稱, 學分 
	from 課程
	WHERE 學分 > 3
END
GO

EXEC 課程資料報表;

-- delete procedure
drop PROC 課程資料報表;

