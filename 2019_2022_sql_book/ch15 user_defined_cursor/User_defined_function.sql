-- default column attribute
CREATE function fnPrice
	(@today datetime)
	returns money
begin
	declare @price money,
			@month int
	set @month = MONTH(@today)
	if @month > 6
		set @price = 500
	else
		set @price = 200
	return @price
end
GO

-- 
select * from dbo.fnPrice(200);

create table �P�P���~(
	���~�s�� char(5) primary key not null,
	�W��		varchar(20),
	�w��		money
	default (dbo.fnPrice(GETDATE()))
)