-- https://github.com/georgezhang/SQLTraining
-- create table

CREATE TABLE [dbo].[Table1](
	[key1] [int] NULL,
	[value1] [nvarchar](max) NULL,
	[key2] [int] NULL,
	[value2] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[Table2](
	[key1] [int] NULL,
	[value1] [nvarchar](max) NULL,
	[key2] [int] NULL,
	[value2] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

INSERT INTO [dbo].[Table1] ([key1] ,[value1]) VALUES(1,'A')
INSERT INTO [dbo].[Table1] ([key1] ,[value1]) VALUES(2,'B')
INSERT INTO [dbo].[Table1] ([key1] ,[value1]) VALUES(3,'C')

INSERT INTO [dbo].[Table2] ([key1] ,[value1]) VALUES(1,'X')
INSERT INTO [dbo].[Table2] ([key1] ,[value1]) VALUES(2,'Y')
INSERT INTO [dbo].[Table2] ([key1] ,[value1]) VALUES(3,'Z')
GO

SELECT Table1.key1, Table1.value1, Table2.key1, Table2.value1 
FROM Table1, Table2 
WHERE Table1.key1 = Table2.key1
go

SELECT Table1.key1, Table1.value1, Table2.key1, Table2.value1 
FROM Table1 inner join Table2 on Table1.key1 = Table2.key1
GO

SELECT Table1.key1, Table1.value1, Table2.key1, Table2.value1 
FROM Table1 inner join Table2 on Table1.key1 > Table2.key1
GO

SELECT Table1.key1, Table1.value1, Table2.key1, Table2.value1 
FROM Table1 inner join Table2 on Table1.key1 >= Table2.key1
GO
-- Insert more data and Explore all combinations......

INSERT INTO [dbo].[Table1] ([key1] ,[value1], [key2] ,[value2]) VALUES(1,'A', 101, 'aa')
INSERT INTO [dbo].[Table1] ([key1] ,[value1], [key2] ,[value2]) VALUES(2,'B', 102, 'ab')
INSERT INTO [dbo].[Table1] ([key1] ,[value1], [key2] ,[value2]) VALUES(3,'C', 103, 'ac')
INSERT INTO [dbo].[Table1] ([key1] ,[value1], [key2] ,[value2]) VALUES(5,'C', 103, 'ac')

INSERT INTO [dbo].[Table2] ([key1] ,[value1], [key2] ,[value2]) VALUES(1,'X', 101, 'xz')
INSERT INTO [dbo].[Table2] ([key1] ,[value1], [key2] ,[value2]) VALUES(2,'Y', 104, 'yz')
INSERT INTO [dbo].[Table2] ([key1] ,[value1], [key2] ,[value2]) VALUES(3,'Z', 105, 'az')
INSERT INTO [dbo].[Table2] ([key1] ,[value1], [key2] ,[value2]) VALUES(6,'Z', 105, 'az')
GO

-- now use two keys
SELECT Table1.key1, Table1.value1, Table2.key1, Table2.value1 
FROM Table1 inner join Table2 on Table1.key1 = Table2.key1 and Table1.key2 = Table2.key2
GO
