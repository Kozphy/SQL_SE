-- revise procedure
ALTER proc �ҵ{��Ƴ��� AS
begin
	select �ҵ{�s��, �W��, �Ǥ� 
	from �ҵ{
	WHERE �Ǥ� > 3
END
GO

EXEC �ҵ{��Ƴ���;

-- delete procedure
drop PROC �ҵ{��Ƴ���;

