USE tempdb
GO
CREATE TABLE MyTEMPDB (ID INT PRIMARY KEY )
BEGIN TRY
   INSERT MyTEMPDB(ID) VALUES(1)
   INSERT MyTEMPDB(ID) VALUES(1)  -- 重複插入記錄
END TRY
BEGIN CATCH
   THROW
END CATCH































































