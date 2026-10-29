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
When done, insert tree image: tree -a -I '.git' repositoryname

# 4. Data import
The original dataset was provided as an .xls file from myh.se containing results from the 2025 application round.

The data was prepared and imported into Oracle Database.

The CSV import method was tested initially, but the successful import was completed using the Excel-based workflow due to load format issues.

# 5. Running the SQL scripts
The SQL scripts were developed and tested using Oracle Database running in a Podman container on Oracle Linux.

The dataset was imported into a table named ANSOKNINGAR.

The SQL scripts are located in the sql/ directory and can be executed using an Oracle-compatible SQL client.

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
Screenshot in here.

# 9. AI Usage
LLM has been used in some parts as a tutor and learning aid for SQL explanations, debugging and support.
