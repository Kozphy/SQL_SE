USE 教務系統 
GO
BEGIN TRY
   RAISERROR (55555, 17, 10)
END TRY
BEGIN CATCH
   SELECT ERROR_NUMBER() AS ErrorNumber, 
           ERROR_SEVERITY() AS ErrorSeverity, 
           ERROR_STATE() AS ErrorState,
           ERROR_PROCEDURE() AS ErrorProcedure,
           ERROR_LINE() AS ErrorLine, 
           ERROR_MESSAGE() AS ErrorMessage
END CATCH 






























































