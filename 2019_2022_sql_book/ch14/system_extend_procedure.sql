-- system stored procedures, sp_ , �t�ιw�s�{��
EXEC sp_helptext �ҵ{�d��;

EXEC sp_columns �ǥ�;

EXEC sp_configure 
				'show advanced options'
				 ,1;
RECONFIGURE;

EXEC sp_configure 
				'xp_cmdshell'
				 ,1;
RECONFIGURE;

-- extended stored procedures, xp_ , �X�R�w�s�{��
/*
	xp_cmdshell, execute windows operating system cmd
	xp_msver, return sql server info
	xp_logininfo, �Ǧ^ info of windows user and group 
*/
EXEC sys.xp_cmdshell

EXEC sys.xp_msver

EXEC sys.xp_logininfo


