-- ch17 tran
-- insert data to multiple table with transaction
begin tran
	insert into 員工
	values ('Y123456789', '王安石', '台北', '長春路',
			'02-11122111', 60000, 4000, 1000)
	if @@error = 0
		begin
			insert into 教授
			values ('I014', '講師', 'EE', 'Y123456789')
			if @@error = 0
				commit TRAN
			ELSE
				ROLLBACK TRAN
		END
	ELSE
	ROLLBACK TRAN

