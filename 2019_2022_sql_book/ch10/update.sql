-- update
SELECT
	*
FROM �ҵ{;

UPDATE �ҵ{
SET �W�� = '��Ʈw�t��(�G)'
   ,�Ǥ� = 4
WHERE �ҵ{�s�� = 'CS410';

UPDATE �ҵ{
SET �Ǥ� = �Ǥ� + 1
WHERE �ҵ{�s�� = 'CS410';

-- update with subquery
UPDATE �ǥ�
SET �m�W = (SELECT
		�m�W
	FROM ���u
	WHERE �����Ҧr�� = 'H098765432')
WHERE �Ǹ� = 'S108';

UPDATE �ҵ{�ƥ�
SET �Ǥ� = 4
FROM (SELECT
		�ҵ{�s��
	   ,COUNT(*) AS �ǥͼ�
	FROM �Z��
	GROUP BY �ҵ{�s��) AS �W��
WHERE �ҵ{�ƥ�.�ҵ{�s�� = �W��.�ҵ{�s��
AND �W��.�ǥͼ� > 3;

SELECT
	*
FROM �ҵ{�ƥ�;

UPDATE �ҵ{�ƥ�
SET �Ǥ� = 5
WHERE �ҵ{�s�� IN (SELECT
		*
	FROM �ҵ{�ƥ�2)

-- merge update
UPDATE �Z��
SET �Z��.�W�Үɶ� = '9:00am'
FROM �Z��
INNER JOIN �б�
	ON �Z��.�б½s�� = �б�.�б½s��
WHERE �б�.��t = 'CIS'
AND �Z��.�Ы� = '300-K';

SELECT
	*
FROM �Z��;
SELECT
	*
FROM �б�;

SELECT
	*
FROM �Z��
JOIN �б�
	ON �б�.�б½s�� = �Z��.�б½s��

SELECT �б½s��
	  ,�Ǹ�
	  ,�ҵ{�s��
	  ,�W�Үɶ�
	  ,�Ы�
	  ,DATEPART(HOUR, �W�Үɶ�) AS �W�Үɶ�
	  FROM �Z��;