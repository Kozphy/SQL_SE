USE �аȨt��;

INSERT INTO �ǥ�
	VALUES ('S108', '�O���R', '�k', '02-23111122', '2002/05/03');

INSERT INTO �ҵ{ (�ҵ{�s��, �W��, �Ǥ�)
	VALUES ('CS410', '����{���]�p', 2);

INSERT INTO �Z�� (�б½s��, �Ǹ�, �ҵ{�s��, �W�Үɶ�, �Ы�)
	VALUES ('I003', 'S002', 'CS222', GETDATE(), '300-k');

-- row constructors
INSERT INTO ���u (�����Ҧr��, �m�W, ����, ��D, �q��, �~��, �O�I, ���|)
	VALUES 
	('K221234566', '�ն}��', '�Ÿq', '������', '06-55555555', 26000, 500, 560),
	('K123456789', '�����s', '��', '���s��', '02-34567890', 26000, 500, 560);

-- insert into and select instruction
INSERT INTO �ǥ�
	SELECT
		�Ǹ�
	   ,�m�W
	   ,�ʧO
	   ,�q��
	   ,�ͤ�
	FROM �q�T��;

-- select into
SELECT
	* INTO �ҵ{�ƥ�
FROM �ҵ{;

SELECT
	* INTO �ҵ{�ƥ�2
FROM �ҵ{
WHERE �Ǥ� = 3;

SELECT
	*
FROM �ҵ{�ƥ�2;

