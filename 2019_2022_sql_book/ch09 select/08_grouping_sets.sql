use �аȨt��

select �б½s��, �ҵ{�s��, count(�Ǹ�) as �`��
from �Z��
where �б½s�� in ('I001','I001')
group by grouping sets
(
	(�б½s��,�ҵ{�s��),
	(�б½s��),
	()
)