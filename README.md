# The Skool - SQL Data Analysis
SQL1 school assignment - Data analysis using oracle database
"The Skool" is a fictional higher educational institution where I will use my knowledge in Exploratory Data Analysiss by running SQL queries inside an Oracle Database to provide them with accurate and relevant insights to support data-driven decision-making.

# TL;DR
Set up an Oracle Database in a Podman container running on Oracle Linux. Imported real-world data from an Excel (.xlsx) dataset and used SQL queries to perform exploratory data analysis (EDA), identifying patterns and generating insights to support data-driven decision-making.

## 1. Proejct Overview
This project is part of my SQL1 course. 

The purpose of this project is to analyze applications for Swedish Higher Vocational Education, YH-programs, in 2025 using SQL
and Oracle Database.

The goal is to identify patterns in approved and rejected applications and provide data-driven insights to support "The Skool" in its decision-making process. Preparing and submitting applications for new educational programs requires significant time and resources. By analyzing historical application data, this project aims to identify which educational areas and specializations have historically achieved higher approval rates.

These insights can help The Skool prioritize future applications, allocate resources more effectively, and make informed decisions about which educational programs to pursue.

# 2. Technologies used in this project
* Oracle Linux
* Oracle Database
* Podman
* SQL
* Vim
* Git and Github

# 3. Project Structure
The screenshot below shows the project sturcture.

![Project structure](screenshots/tree.png)

# 4. Data import
The original dataset was provided as an .xls file from myh.se containing results from the 2025 application round.

The data was prepared and imported into Oracle Database.

The CSV import method was tested initially, but the successful import was completed using the Excel-based workflow due to load format issues.

# 5. Running SQL-queries

I'm using a custom Bash script to called orac to execute SQL queries against my Oracle Database.
The script loads database credentials from a seperate .env file that allows me to run SQL files directly from the Linux terminal without 
manually logging into the Database each time.

The. env file is excluded from version control using .gitignore to protect sensitive credentials. 

The screenshot below shows how I start the Oracle container using podman, verifying that it is running and then execute my SQL script.

![Starting Oracle Database with Podman and running SQL scripts](screenshots/Podman_01_eda_sql.png)


* The SQL scripts were developed and tested using Oracle Database running in a Podman container on Oracle Linux. 

* The dataset was imported into a table named ANSOKNINGAR. 

* The SQL scripts are located in the sql/ directory and can be executed using an Oracle-compatible SQL client.

# 6. Exploratory Data Analysis

The first analysis contains nine SQL queries covering:

Uppgift 1 - Grundläggande EDA - These queries are summorized within the 01_eda.sql script found within the sql folder of the repository.

* a. Number of applications by educational area, sorted by most applicants.
* b. Number of approved applications by educational area.
* c. Number of rejected applications by educational area.
* d. Number of approved applications within Data/IT.
* e. Number of rejected applications withing Data/IT.
* f. Number of approved applications by dducational providers and programs within Data/IT.
* g. Top five counties by approved applications
* h. Distance and campus-based educations within each educational area.
* i. Number of education programs containing the word "AI" in their names.


The second assignment - Uppgift 2 - Interview with domain expert - was conducted and additional SQL-queries were developed and stored in 
Uppgift 3 - 03_analysis.sql script to be executed against the Oracle Database.  

## Example Result – Applications by Educational Area, Sorted by most applicants.

The screnshot below shows the result of question 1a, it displays the number of applications sorted by educational area, sorted in descending order. 
Economics, administration and sales received the most applications (239), followed by Technology and Manufacturing (221) and Data/IT (220).

![Resultat från fråga 1a](screenshots/Exempel_fraga1a.png)

# 9. AI Usage
LLM has been used in some parts as a tutor and learning aid for SQL explanations, debugging and support.
