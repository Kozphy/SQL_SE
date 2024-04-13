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


select * into 班級備份 from 班級
GO

select * into 班級備份 from 學號
go

begin tran
delete 班級備份
where 學號 = 'S001'
if @@ROWCount > 5
	BEGIN
		ROLLBACK TRAN
		print '回復刪除操作!'
	end
else
	begin
		delete 學生備份
		where 學號 = 'S001'
		commit TRAN
		print '認可刪除操作!'
	END
