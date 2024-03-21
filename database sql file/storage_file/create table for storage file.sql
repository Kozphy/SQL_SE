USE test;

-- table example
/*
FileID is an integer column serving as the primary key.
FileName is a string column to store the name of the file.
FileContent is a binary column (using VARBINARY(MAX)) to store the actual file content.
*/
CREATE TABLE Files (
	FileID INT PRIMARY KEY,
	FileName NVARCHAR(255),
	FileContent VARBINARY(MAX)
)