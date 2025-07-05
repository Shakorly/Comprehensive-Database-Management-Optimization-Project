-- Creating a Store Procedure for backup
-- This creates a stored procedure in the 'master' database so we can call it from anywhere.
USE master;
GO

CREATE OR ALTER PROCEDURE dbo.sp_StandardBackup
    @DatabaseName sysname,
    @BackupType CHAR(1), -- 'F' for Full, 'D' for Differential, 'L' for Log
    @BackupPath NVARCHAR(260)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @BackupFile NVARCHAR(500);
    DECLARE @DateTimeStr NVARCHAR(20);

    -- Create a clean date-time string like 20231027_221500
    SET @DateTimeStr = REPLACE(REPLACE(REPLACE(CONVERT(VARCHAR, GETDATE(), 120), '-', ''), ':', ''), ' ', '_');

    -- Build the full file path and name
    -- Example: \\backupserver\sql\InnovateCorp_Billing_Archive_FULL_20231027_221500.bak
    SET @BackupFile = @BackupPath + N'\' + @DatabaseName + N'_' + CASE @BackupType
        WHEN 'F' THEN 'FULL'
        WHEN 'D' THEN 'DIFF'
        WHEN 'L' THEN 'LOG'
    END + N'_' + @DateTimeStr + '.bak';

    -- The actual backup command
    BACKUP DATABASE @DatabaseName
    TO DISK = @BackupFile
    WITH
        COMPRESSION,  -- Make the backup file smaller
        STATS = 10,     -- Show progress
        CHECKSUM;       -- Verify the data as it's being backed up

    -- Verify the backup is readable and not corrupt. THIS IS THE MOST IMPORTANT STEP.
    -- If this fails, the backup command above will be rolled back (it's in a transaction).
    RESTORE VERIFYONLY FROM DISK = @BackupFile;

    PRINT 'Backup successful and verified: ' + @BackupFile;
END
GO


