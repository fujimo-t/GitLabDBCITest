USE TestDB

-- Create a new table called '[TestTable]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[TestTable]', 'U') IS NOT NULL
DROP TABLE [dbo].[TestTable]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[TestTable]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Value] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO
