use �аȨt��

-- 9-19
select ���~���u.�m�W, ���~���u.�q��, ���~���u.�~�� 
from (select �����Ҧr��, �m�W, �q��, �~��
from ���u
where �~�� > 50000) AS ���~���u

-- 9-21_ch9_4_2
select count(*) AS �W�Ҽ� from �Z��
where �Ǹ� =
(select �Ǹ� from �ǥ� where �m�W = '���|�w')

-- 9-21_2a
select �����Ҧr��, �m�W, �q��, �~�� from ���u
where �~�� >=
(select avg(�~��) from ���u)



