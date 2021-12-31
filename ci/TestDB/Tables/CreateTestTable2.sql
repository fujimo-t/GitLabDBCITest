-- Create a new table called '[TestTable2]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[TestTable2]', 'U') IS NOT NULL
DROP TABLE [dbo].[TestTable2]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[TestTable2]
(
    [Id] INT NOT NULL PRIMARY KEY, -- Primary Key column
    [Value] NVARCHAR(50) NOT NULL
    -- Specify more columns here
);
GO
