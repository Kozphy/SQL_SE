-- create index noclusterd index
CREATE INDEX 員工姓名_索引
ON 員工(姓名)
INCLUDE (電話, 薪水)

-- 複合索引 noclusterd index
CREATE UNIQUE INDEX 名稱學分_索引
ON 課程(名稱, 學分)

-- modified、rebuild、delete index
