-- ch17 tran
-- insert data to multiple table with transaction
begin tran
	insert into ���u
	values ('Y123456789', '���w��', '�x�_', '���K��',
			'02-11122111', 60000, 4000, 1000)
	if @@error = 0
		begin
			insert into �б�
			values ('I014', '���v', 'EE', 'Y123456789')
			if @@error = 0
				commit TRAN
			ELSE
				ROLLBACK TRAN
		END
	ELSE
	ROLLBACK TRAN

