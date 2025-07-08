
Step 1: Your First Day - Getting Set Up

Welcome, Taiwo! Here’s your new laptop. Today is all about getting you ready for the real work.
Meet the CTO: Our first meeting is with Sarah, the Chief Technology Officer. She tells us, "I'm glad you're here. Our systems are slow, and I'm worried we're not protected. I need you to get your arms around the entire database environment and show me a plan to make it stable. I need to sleep at night knowing our customer data is safe." This is our mission.
Get Your Tools: We install the software you'll need every day.

Git: 
Think of this as a time machine for our code and documents. It lets us save versions of our work and see who changed what, when.

Visual Studio Code (VS Code):
A simple, powerful text editor. This is where we will write our scripts and documentation.

SQL Server Management Studio (SSMS): 
This is our special window to look inside our SQL Server databases, run commands, and see what's happening.

Create Our Project Headquarters (The GitHub Repo):

Action: I'll have you go to GitHub.com and create a new, private repository named anything your want.

Why: This repository isn't just a folder for files. It's our shared brain. Everything we discover, every script we write, and every plan we make will live here. It’s the single source of truth.

Action: Now, open your computer's terminal (that black window with a blinking cursor), and type git clone <your-repo-url>. This command makes a copy of our empty online headquarters onto your laptop, linking them together.
Step 2: Creating the Filing Cabinets (Directory Structure)
Before we start finding things, we need a place to put them. A messy project is a failed project.



Create Database management project folder

Action: In your terminal, inside the folder you created, you will type the following commands, one by one.

    mkdir -p 01-Audit/scripts 01-Audit/reports
    mkdir -p 02-Standardization/install-scripts 02-Standardization/config-templates
    mkdir -p 03-Backup-Recovery/backup-scripts 03-Backup-Recovery/restore-procedures
    touch 01-Audit/scripts/.gitkeep

git add .
git commit -m "feat: Initial directory structure for Project 1"
git push
