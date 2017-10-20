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

SELECT Table1.key1, Table1.key2, Table2.value1, Table2.value1 
FROM Table1, Table2 
WHERE Table1.key1 = Table2.key1

GO

-- Insert more data and Explore all combinations......