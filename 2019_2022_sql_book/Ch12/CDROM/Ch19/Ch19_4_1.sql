USE �аȨt��
GO
EXEC sp_execute_external_script 
@language = N'Python',
@script = N'
print(type(InputDataSet))
print(InputDataSet)
', 
@input_data_1 = N'SELECT �ҵ{�s��, dbo.UnicodeString(�W��) AS �W��, �Ǥ� FROM �ҵ{'
GO  

