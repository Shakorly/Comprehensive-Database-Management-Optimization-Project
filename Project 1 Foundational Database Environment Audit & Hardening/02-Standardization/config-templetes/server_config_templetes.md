# SQL Server 2019 Configuration Standard

## Instance-Level Settings
- **Max Server Memory:** 80% of total OS RAM (e.g., 51200 MB on a 64GB server)
- **Cost Threshold for Parallelism:** 50
- **Max Degree of Parallelism (MAXDOP):** 4 (for an 8-core server)
- **Default Backup Compression:** On

## tempdb Configuration
- **Number of files:** 8 (matching number of cores)
- **Initial Size:** 10GB per file
- **Autogrowth:** 1GB