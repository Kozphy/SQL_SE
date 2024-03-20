-- merge instruction
MERGE �Ȥ� AS c USING �s�Ȥ� AS nc
ON c.�Ȥ�s�� = nc.�Ȥ�s��
WHEN MATCHED
	THEN UPDATE
		SET �m�W = nc.�m�W
		   ,�q�� = nc.�q��
WHEN NOT MATCHED BY TARGET
	THEN INSERT (�Ȥ�s��, �m�W, �q��)
			VALUES (nc.�Ȥ�s��, nc.�m�W, nc.�q��);


MERGE �Ȥ�~�Z AS cs USING �Ȥ� AS c
ON cs.�Ȥ�s�� = c.�Ȥ�s��
-- delete
WHEN MATCHED
	AND cs.�~�Z�ؼ� > 250
	THEN DELETE
-- update
WHEN MATCHED
	THEN UPDATE
		SET �~�Z�ؼ� = �~�Z�ؼ� + 25
-- insert
WHEN NOT MATCHED BY TARGET
	THEN INSERT (�Ȥ�s��, �~�Z�ؼ�)
			VALUES (c.�Ȥ�s��, 100);

-- DML output clause
UPDATE �Ȥ� SET
	�q�� = '0938000123'
-- inserted ��s��
-- deleted ��s�e
OUTPUT
	INSERTED.�Ȥ�s��, INSERTED.�m�W,
	INSERTED.�q�� AS ��s��q��,
	DELETED.�q�� AS ��s�e�q��
WHERE �Ȥ�s�� = 'C001';

INSERT INTO [dbo].[�O���~�Z�ؼ�] (�Ȥ�s��, ��l�ؼ�, �̷s�ؼ�)
SELECT * FROM 
(
	UPDATE �Ȥ�~�Z
	SET �~�Z�ؼ� = �~�Z�ؼ� + (�~�Z�ؼ� * 0.2)
	OUTPUT
		INSERTED.�Ȥ�s�� AS �Ȥ�s��,
		DELETED.�~�Z�ؼ� AS ��l�ؼ�,
		INSERTED.�~�Z�ؼ� AS �̷s�ؼ�
) AS c
WHERE c.�̷s�ؼ� > 200;


