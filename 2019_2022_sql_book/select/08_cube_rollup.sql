use �аȨt��

select �б½s��, �ҵ{�s��, count(�Ǹ�) as �`��
from �Z��
where �б½s�� in ('I001', 'I003')
group by �б½s��, �ҵ{�s�� with cube;

select �б½s��, �ҵ{�s��, count(�Ǹ�) as �`��
from �Z��
where �б½s�� in ('I001', 'I003')
group by �б½s��, �ҵ{�s�� with rollup

