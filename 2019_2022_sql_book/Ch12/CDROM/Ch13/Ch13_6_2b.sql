USE master 
IF DB_ID('教務系統') IS NOT NULL
   PRINT '找到教務系統資料庫!'
ELSE
   PRINT '教務系統資料庫找不到!'
USE 教務系統
IF OBJECT_ID('課程') IS NOT NULL
   PRINT '找到課程資料表!'
ELSE
   PRINT '找不到課程資料表!'






 































































