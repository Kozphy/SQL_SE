-- subquery
select ���~���u.�m�W, ���~���u.�q��, ���~���u.�~��
from (select �����Ҧr��, �m�W, �q��, �~��
	from ���u
	where �~�� > 50000) as ���~���u;

select �����Ҧr��, �m�W, �q��, �~��
	from ���u
	where �~�� > 50000;

select 'comparison operator with subquery';

-- comparison operator with subquery
select * from �Z��;
select * from �ǥ�;

select �Ǹ� ,count(*) as �W�Ҽ� from �Z��
where �Ǹ� = 
(select �Ǹ� from �ǥ� where �m�W = '���|�w')
group by �Ǹ�;


select * from ���u;

select �����Ҧr��, �m�W, �q��, �~�� from ���u
where �~�� >=
(select avg(�~��) from ���u as �����~��);

-- logic comparsion subquery
-- exists
select * from �ǥ�
where exists
(select * from �Z��
where �ҵ{�s�� = 'CS222' and �ǥ�.�Ǹ� = �Z��.�Ǹ�);

select * from �ǥ�;
select * from �Z��;

select * from �ҵ{
where exists
(select * from �Z��
where (�Ы� = '221-S' or �Ы� = '100-M')
	AND �ҵ{.�ҵ{�s�� = �Z��.�ҵ{�s��)

select * from �ҵ{;
select * from �Z��;

-- in
select * from �ҵ{
select * from �Z��

select * from �ҵ{
where �ҵ{�s�� not in
(select �ҵ{�s�� from �Z�� where �Ǹ� = 'S004');

select * from �б�;
select * from �Z��;
select * from �ǥ�;

select * from �б�
where �б½s�� in
(select �б½s�� from �Z��
where �Ǹ�=(select �Ǹ� from �ǥ�
			where �m�W = '���p��'));


-- all �Ҧ��d�߳��n�ŦX�l�d�� 
select �m�W, �~�� from ���u
where �~�� >= all
(select �~�� from ���u where ���� = '�x�_');

select �~�� from ���u where ���� = '�x�_';

-- any and some �u�n�ŦX�l�d�ߤ����@�ӱ���
-- any
select �m�W, �~�� from ���u
where �~�� >= any
(select �~�� from ���u where ����='�x�_');

-- some
select �m�W, �~�� from ���u
where �~�� >= some
(select �~�� from ���u where ����='�x�_');

