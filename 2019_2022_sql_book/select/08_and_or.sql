-- and, or operator
select * from �ҵ{
where �ҵ{�s�� like '%1%' and �W�� like '%�{��%';


select * from �ҵ{
where �ҵ{�s�� like '%3%' or �W�� like '%�{��%';

-- and
select * from �ҵ{
where �ҵ{�s�� like '%1%' and �W�� like '%�{��%';

-- or
select * from �ҵ{
where �ҵ{�s�� like '%3%' or �W�� like '%�{��%';

-- and with or
select * from �ҵ{
where �ҵ{�s�� like '%3%' and �W�� like '%�{��%';

-- �s���h�ӱ���P�A��
select * from �ҵ{
where �ҵ{�s�� like '%2%'
and �W�� like '%�{��%'
or �Ǥ� >= 4

select * from �ҵ{
where �ҵ{�s�� like '%2%'
and (�W�� like '%�{��%'
or �Ǥ� >= 4)

select �����Ҧr��, �m�W, �q��, (�~�� - ���| - �O�I) as �~���b�B  
from ���u
where (�~�� - ���| - �O�I) < 40000