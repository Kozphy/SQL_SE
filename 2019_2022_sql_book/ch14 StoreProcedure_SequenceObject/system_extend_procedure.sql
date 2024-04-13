-- system stored procedures, sp_ , 系統預存程序
EXEC sp_helptext 課程查詢;

EXEC sp_columns 學生;

EXEC sp_configure 
				'show advanced options'
				 ,1;
RECONFIGURE;

EXEC sp_configure 
				'xp_cmdshell'
				 ,1;
RECONFIGURE;

-- extended stored procedures, xp_ , 擴充預存程序
/*
	xp_cmdshell, execute windows operating system cmd
	xp_msver, return sql server info
	xp_logininfo, 傳回 info of windows user and group 
*/
EXEC sys.xp_cmdshell

EXEC sys.xp_msver

EXEC sys.xp_logininfo


