-- filter index
CREATE TABLE dbo.�t�ӦW�� (
	�t�ӽs�� INT NOT NULL IDENTITY PRIMARY KEY
   ,�t�ӦW�� VARCHAR(100)
   ,�t������ TINYINT NOT NULL
   ,�����q�� INT SPARSE
)
GO

CREATE NONCLUSTERED INDEX �����q��_����
ON �t�ӦW�� (�����q��)
WHERE �t������ = 3;

-- row data store at zone index
SELECT
	�m�W
   ,�q��
FROM �ǥ�
WHERE �ͤ� = '2003-09-03';

-- create columnstone nocluster index index
CREATE COLUMNSTORE INDEX �ǥ͸�Ʀ�_����
ON �ǥͳƥ� (�m�W, �ͤ�, �q��);

-- create 

