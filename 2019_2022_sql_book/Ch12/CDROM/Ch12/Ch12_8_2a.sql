USE 教務系統 
GO
CREATE COLUMNSTORE INDEX 學生資料行_索引
ON 學生備份 (姓名, 生日, 電話)


