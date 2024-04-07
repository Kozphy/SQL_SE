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

create table 促銷產品(
	產品編號 char(5) primary key not null,
	名稱		varchar(20),
	定價		money
	default (dbo.fnPrice(GETDATE()))
)