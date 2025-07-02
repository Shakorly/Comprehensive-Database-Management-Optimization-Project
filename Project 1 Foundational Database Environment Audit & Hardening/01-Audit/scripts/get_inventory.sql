-- This script provides a basic inventory. Run it on each server.
SELECT
    @@SERVERNAME AS ServerName,
    d.name AS DatabaseName,
    d.create_date AS CreationDate,
    (SUM(mf.size) * 8.0 / 1024) AS SizeMB,
    d.recovery_model_desc AS RecoveryModel,
    SUSER_SNAME(d.owner_sid) AS DbOwner,
    (SELECT MAX(backup_finish_date) 
     FROM msdb.dbo.backupset 
     WHERE database_name = d.name AND type = 'D') AS LastFullBackup,
    (SELECT MAX(backup_finish_date) 
     FROM msdb.dbo.backupset 
     WHERE database_name = d.name AND type = 'I') AS LastDiffBackup,
    (SELECT MAX(backup_finish_date) 
     FROM msdb.dbo.backupset 
     WHERE database_name = d.name AND type = 'L') AS LastLogBackup
FROM sys.databases d
JOIN sys.master_files mf ON d.database_id = mf.database_id
GROUP BY d.name, d.create_date, d.recovery_model_desc, d.owner_sid
ORDER BY d.name;
