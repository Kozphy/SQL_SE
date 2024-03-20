BEGIN TRY
	BEGIN TRAN outterTran;
	
	-- innerTran
	DECLARE @TranCounter INT = @@TRANCOUNT;

	BEGIN TRY
		IF (@TranCounter > 0)
			SAVE TRAN innerTran;
		ELSE
			BEGIN TRAN innerTran;
		INSERT INTO dbo.員工 ([姓名])
			VALUES ('Otis');

		INSERT INTO dbo.員工 ([姓名])
			VALUES (NULL);

		-- save tran not do commit
		IF (@TranCounter = 0)
			COMMIT TRAN innerTran;
	END TRY
	BEGIN CATCH
		ROLLBACK TRAN innerTran;
		THROW;
	END CATCH
	-- end innerTran
	COMMIT TRAN outterTran;
END TRY

BEGIN CATCH
	ROLLBACK TRAN outterTran;
	THROW;
END CATCH

