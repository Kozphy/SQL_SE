USE 教務系統 
GO
SET ANSI_NULLS, ANSI_PADDING,
    ANSI_WARNINGS, ARITHABORT,
    CONCAT_NULL_YIELDS_NULL,
    QUOTED_IDENTIFIER ON
SET NUMERIC_ROUNDABORT OFF
GO
CREATE NONCLUSTERED INDEX 平均單價_索引 
ON 估價單(平均單價 ASC)
INCLUDE (產品編號)



















 































































