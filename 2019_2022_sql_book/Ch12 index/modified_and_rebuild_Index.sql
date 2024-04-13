-- modified index
CREATE UNIQUE INDEX 員工姓名_索引
ON 員工(姓名)
INCLUDE(電話,薪水,城市)
WITH IGNORE_DUP_KEY, DROP_EXISTING;

-- bebuild index and set fillFactor
ALTER INDEX ALL ON 員工
REBUILD WITH {FILLFACTOR=80};


-- alter to disable index
ALTER INDEX 員工姓名_索引
ON 員工
DISABLE;


-- delete table index
DROP INDEX 員工.員工姓名_索引;

