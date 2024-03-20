USE 教務系統;

INSERT INTO 學生
	VALUES ('S108', '令狐沖', '男', '02-23111122', '2002/05/03');

INSERT INTO 課程 (課程編號, 名稱, 學分)
	VALUES ('CS410', '平行程式設計', 2);

INSERT INTO 班級 (教授編號, 學號, 課程編號, 上課時間, 教室)
	VALUES ('I003', 'S002', 'CS222', GETDATE(), '300-k');

-- row constructors
INSERT INTO 員工 (身份證字號, 姓名, 城市, 街道, 電話, 薪水, 保險, 扣稅)
	VALUES 
	('K221234566', '白開心', '嘉義', '中正路', '06-55555555', 26000, 500, 560),
	('K123456789', '王火山', '基隆', '中山路', '02-34567890', 26000, 500, 560);

-- insert into and select instruction
INSERT INTO 學生
	SELECT
		學號
	   ,姓名
	   ,性別
	   ,電話
	   ,生日
	FROM 通訊錄;

-- select into
SELECT
	* INTO 課程備份
FROM 課程;

SELECT
	* INTO 課程備份2
FROM 課程
WHERE 學分 = 3;

SELECT
	*
FROM 課程備份2;

