# Project 1: Foundational Database Environment Audit & Hardening
# Phase 1: Full Environment Audit

**Goal:** Discover and document every database instance, its configuration, and its current state.

The Mission - Find Every Database

Get a "Hint List":
We walk over to Mudeer in the IT department. We ask, "Mudeer, can you give us a list of every server that might be running a database?"

He exports a list of server names from his system.

Prepare Our "Question" Script:
Action: In VS Code, navigate to the 01-Audit/scripts/ folder and create a new file named get_inventory.sql.

Why: This SQL script is a list of questions we will ask each database server. 
Questions like, 

--- "What is your name?", 

--- "How old are you?", 

--- "How big are you?",

--- and most importantly,

--- "When was the last time you were backed up?"


Action: You'll paste the SQL code from our previous discussion into this file and save it.
The First Interview (Connecting to a Server):
Action: Open SSMS. You'll be prompted for a server name. You type in the first name from Mudeer's list: Your server name.

Action: Once connected, you open the get_inventory.sql file in SSMS and click "Execute."
The Result: A table of data appears. It shows number databases on this one server. You see names, sizes, and dates. You see that LastFullBackup for the CustomerOrders database was just last night. That's good!
Action: You export this table of results to a CSV file (which is just a simple spreadsheet) and save it on your computer for now.
The Grind (Repeat for All Servers):
Action: Now you do the exact same thing for the next server on Mudeer's list. And the next. And the next. This is the detective work.

Step 4: Creating the Summary Report (Telling the Story)
A giant spreadsheet of data is useless to our boss, Sarah. We need to tell her a story.
Consolidate Your Data: Copy and paste the results from all your individual CSV files into one master spreadsheet named database_inventory_2023-10-27.csv.
Write the Story:
Action: In VS Code, go to the 01-Audit/reports/ folder and create a file named audit_summary_2023-10-27.md.
Why: A Markdown (.md) file is a simple text file that can be formatted to look nice on GitHub. It's perfect for reports.
Action: You look at your master spreadsheet and find the scariest, most important things. You write them down in plain English.
