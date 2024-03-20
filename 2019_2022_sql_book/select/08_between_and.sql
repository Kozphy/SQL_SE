-- between, and
select * from 學生
where 生日 between '2003-1-1' and '2003-12-31';

select * from 學生
where 生日 between '2003-1-1' and '2003-12-31' order by 生日;

select * from 課程 where 學分 between 2 and 3;