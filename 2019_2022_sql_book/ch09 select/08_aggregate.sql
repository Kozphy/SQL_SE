-- �E�X���
-- count
select �m�W, count(distinct �ͤ�) as �ͤ�ƶq from �ǥ�
group by �m�W;

select count(*) as �ǥͼ� from �ǥ�;

select count(�ͤ�) as �ǥͼ� from �ǥ�;

select count(*) as ���u�� from ���u
where �~�� > 40000;

-- avg
select avg(�~��) as �����~�� from ���u

select count(*) as �ҵ{�`��,
		avg(�Ǥ�) as �Ǥ�������
from �ҵ{ where �ҵ{�s�� like '%1%';

-- max
select max(�O�I) as �O�I���B from ���u;

select max(�Ǥ�) as �̤j�Ǥ��� from �ҵ{
where �ҵ{�s�� like '%1%';

-- min
select min(�O�I) as �O�I���B from ���u;

select min(�Ǥ�) as �̤־Ǥ��� from �ҵ{
where �ҵ{�s�� like '%1%';

-- sum
select sum(�~��) as �~���`�B,
		sum(�~��)/count(*) as �~������
from ���u;

select sum(�Ǥ�) as �Ǥ��`�M from �ҵ{
where �ҵ{�s�� like '%1%';


