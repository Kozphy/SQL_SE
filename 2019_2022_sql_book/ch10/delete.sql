-- delete record
DELETE FROM dbo.�ǥ�
WHERE �Ǹ� = 'S108';

DELETE �ҵ{�ƥ�2;

-- subquery and merge delete
DELETE FROM dbo.�ҵ{
WHERE �ҵ{�s�� = (SELECT
			�ҵ{�s��
		FROM �ҵ{�ƥ�
		WHERE �W�� = '����{���]�p')

SELECT
	*
FROM �Z��
JOIN �б�
	ON �Z��.�б½s�� = �б�.�б½s��
WHERE �б�.��t = 'CIS'
AND �Z��.�Ы� = '300-K';

DELETE �Z�� FROM �Z�� INNER JOIN �б�
ON �Z��.�б½s�� = �б�.�б½s��
WHERE �б�.��t = 'CIS' AND �Z��.�Ы� = '300-K';

-- truncate table
TRUNCATE TABLE �ҵ{�ƥ�;

-- select into
SELECT * INTO �ҵ{�ƥ� FROM �ҵ{;

