select �����Ҧr��, �m�W, �~��
from ���u;

-- offset
select �����Ҧr��, �m�W, �~��
from ���u
order by �����Ҧr��
offset 3 rows;

-- fetch next
select �����Ҧr��,�m�W,�~��
from ���u

select �����Ҧr��,�m�W,�~��
from ���u
order by �����Ҧr��
offset 3 rows
fetch next 5 rows only;

-- null
select * from �ǥ� where �ͤ� is null;

select * from �ǥ�;

-- isnull()
select �����Ҧr��, �m�W, �q�� from ���u;

select �����Ҧr��, �m�W,
	ISNULL(�q��, '�L�q��') as �q��
from ���u;

-- cte
with �б�_���u
as (
	select �б�.*, ���u.�m�W
	from �б� join ���u
	on �б�.�����Ҧr�� = ���u.�����Ҧr��
)
select �ǥ�.�Ǹ�, �ǥ�.�m�W, �ҵ{.*, �б�_���u.*
from �б�_���u join
(�ҵ{ join
(�ǥ� join �Z�� on �ǥ�.�Ǹ� = �Z��.�Ǹ�)
on �Z��.�ҵ{�s�� = �ҵ{.�ҵ{�s��)
on �Z��.�б½s�� = �б�_���u.�б½s��;

-- cte recursive
with �D��_���j
as (
	select ���u�r��, �m�W, 1 as ���h
	from �D�� where �D�ަr�� is null
	union all
	select �D��.���u�r��, �D��.�m�W, ���h + 1
	from �D�� join �D��_���j
	on �D��.�D�ަr�� = �D��_���j.���u�r��
)
select * from �D��_���j
order by ���h, ���u�r��;