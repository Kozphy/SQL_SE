-- inner join
select �ǥ�.�Ǹ�, �ǥ�.�m�W, �Z��.�ҵ{�s��, �Z��.�б½s��
from �ǥ� inner join �Z��
on �ǥ�.�Ǹ� = �Z��.�Ǹ�;

select �ǥ�.�Ǹ�, �ǥ�.�m�W,�ҵ{.*, �Z��.�б½s��
from �ҵ{ inner join
(�ǥ� inner join �Z�� on �ǥ�.�Ǹ� = �Z��.�Ǹ�)
on �Z��.�ҵ{�s�� = �ҵ{.�ҵ{�s��

select �ǥ�.�Ǹ�, �ǥ�.�m�W, �ҵ{.*,�@�б�.*
from �б¡@inner join
(�ҵ{�@inner join
(�ǥ͡@inner join �Z�� on �ǥ�.�Ǹ� = �Z��.�Ǹ�)
on �Z��.�ҵ{�s�� = �ҵ{.�ҵ{�s��)
on �Z��.�б½s�� = �б�.�б½s��

-- ���t inner join
select �ǥ�.�Ǹ�, �ǥ�.�m�W, �Z��.�ҵ{�s��, �Z��.�б½s��
from �ǥ�, �Z��
where �ǥ�.�Ǹ� = �Z��.�Ǹ�;