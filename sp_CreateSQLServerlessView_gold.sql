USE gold_db
GO

CREATE OR ALTER PROC CreateSQLServerlessView_gold @viewName NVARCHAR(100)
AS
BEGIN

DECLARE @statement VARCHAR(MAX)

    SET @statement = N'CREATE OR ALTER VIEW ' + @viewName + ' AS
        SELECT *
        FROM
            OPENROWSET(
                BULK ''https://mrkprojectdatalakegen2.blob.core.windows.net/gold/adventureworks/' + @viewName + '/'',
                FORMAT = ''CSV''
            ) as [result]
        '
EXEC (@statement)
END
GO
