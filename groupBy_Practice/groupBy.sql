-- group by with count
SELECT
	�Z��.�ҵ{�s��, COUNT(*)�@AS �Z�Žs���`��
FROM �Z��
JOIN �ҵ{
	ON �Z��.�ҵ{�s�� = �ҵ{.�ҵ{�s��
GROUP BY �Z��.�ҵ{�s��;