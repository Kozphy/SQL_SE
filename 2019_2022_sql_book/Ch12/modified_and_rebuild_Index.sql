-- modified index
CREATE UNIQUE INDEX ���u�m�W_����
ON ���u(�m�W)
INCLUDE(�q��,�~��,����)
WITH IGNORE_DUP_KEY, DROP_EXISTING;

-- bebuild index and set fillFactor
ALTER INDEX ALL ON ���u
REBUILD WITH {FILLFACTOR=80};


-- alter to disable index
ALTER INDEX ���u�m�W_����
ON ���u
DISABLE;


-- delete table index
DROP INDEX ���u.���u�m�W_����;

