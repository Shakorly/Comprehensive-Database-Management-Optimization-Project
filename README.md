Create Database management project folder

Action: In your terminal, inside the folder you created, you will type the following commands, one by one.

    mkdir -p 01-Audit/scripts 01-Audit/reports
    mkdir -p 02-Standardization/install-scripts 02-Standardization/config-templates
    mkdir -p 03-Backup-Recovery/backup-scripts 03-Backup-Recovery/restore-procedures
    touch 01-Audit/scripts/.gitkeep

git add .
git commit -m "feat: Initial directory structure for Project 1"
git push
