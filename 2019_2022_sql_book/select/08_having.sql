select �Ǹ�, �ҵ{�s�� from �Z��
group by �ҵ{�s��, �Ǹ�
having �Ǹ� = 'S002'

select �ҵ{�s��, count(*) as �ǥͼ�
from �Z��
where �б½s�� = 'I003'
group by �ҵ{�s��
having count(*) >= 2