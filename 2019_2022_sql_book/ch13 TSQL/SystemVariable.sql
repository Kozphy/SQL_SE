-- get sql system variable
DECLARE @MyRowCount INT, @MyIdentity INT
INSERT �ҵ{�ƥ�2
SELECT �ҵ{�s��, �W��, �Ǥ� FROM �ҵ{
WHERE �Ǥ� >= 4
SET @MyRowCount = @@rowcount
SET @MyIdentity = @@identity
SELECT @MyRowCount AS �v�T��������,
		@@servername AS ���A���W��,
		@MyIdentity AS �۰ʽs��,
		@@error AS ���~�s��

-- T-SQL �B��l
PRINT cast('2023-06-30' AS DATETIME) - 1
PRINT cast('2023-06-30' AS DATETIME) + 1

-- ²�䪺 T-SQL
DECLARE @x INT = 4, @y INT = 20
SET @x *= @y
SELECT @x AS afterProduct, @y AS '@y'

-- cast operator
PRINT '�Ǥ��`��:' + CAST(@total AS char)
PRINT CAST('2023-06-30' AS DATETIME) - 1

-- convert() function
PRINT '�Ǥ��`��:' + CONVERT(CHAR, @total)
PRINT CONVERT(DATETIME, '2023-06-30') - 1

