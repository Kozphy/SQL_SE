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


select * into �Z�ųƥ� from �Z��
GO

select * into �Z�ųƥ� from �Ǹ�
go

begin tran
delete �Z�ųƥ�
where �Ǹ� = 'S001'
if @@ROWCount > 5
	BEGIN
		ROLLBACK TRAN
		print '�^�_�R���ާ@!'
	end
else
	begin
		delete �ǥͳƥ�
		where �Ǹ� = 'S001'
		commit TRAN
		print '�{�i�R���ާ@!'
	END
