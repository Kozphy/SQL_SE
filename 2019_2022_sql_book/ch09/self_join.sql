-- self join
select distinct ���u.�m�W, ���u.����, ���u.��D
from ���u join ���u as ���u1
on (���u.���� = ���u1.���� and
	���u.�����Ҧr�� <> ���u1.�����Ҧr��)
order by ���u.����;