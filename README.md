# Elevate-Labs-Day6

# SQL Data Analysis – Day 6 Project

This repository contains a structured SQL-based data analysis project. The project begins with a raw dataset and proceeds through data cleaning, transformation, and querying using SQL. The final dataset and SQL script files are included to demonstrate the full analysis workflow.

---

## Repository Contents

| File Name         | Description |
|-------------------|-------------|
| `dataset-day6.csv` | Original input dataset used as the base for all analysis |
| `day6.csv`         | Final output dataset after applying all SQL transformations and queries |
| `day6.sql`         | SQL script containing all code used to clean, transform, and analyze the data |

---

## Project Overview

The goal of this project was to perform structured analysis on a tabular dataset using SQL. The project involved importing the raw data into a database system, performing necessary transformations, filtering and aggregation queries, and exporting the final results.

The tasks involved in the process were:
1. Understanding the structure of the original dataset (`dataset-day6.csv`)
2. Writing SQL queries to clean and manipulate the data
3. Executing data exploration and transformation steps such as:
   - Filtering records
   - Performing aggregations
   - Creating derived columns
   - Joining tables (if applicable)
4. Saving the final output into `day6.csv` for further use or visualization

---

## SQL Script Description

The `day6.sql` file contains a step-by-step sequence of SQL queries written to process the original dataset. The script includes:

- Table creation and schema definition
- Data loading steps (e.g., `COPY` or `INSERT` statements)
- Data cleaning and filtering logic
- Aggregate functions and grouping operations
- Conditional logic using `CASE` or `IF`
- Export commands to output the final cleaned dataset

This script can be run sequentially in any standard SQL environment (e.g., MySQL, PostgreSQL, SQLite) after importing the raw CSV as a table.

---

## Dataset Descriptions

### dataset-day6.csv
- This file represents the raw data.
- It contains all original entries without any filtering, transformation, or derived columns.

### day6.csv
- This is the final dataset generated after applying all SQL logic and queries.
- It includes cleaned, filtered, or aggregated information suitable for reporting or visualization.

---

## How to Use

1. Import `dataset-day6.csv` into your database as a table.
2. Open and execute the SQL queries provided in `day6.sql`.
3. Review or export the final output table as `day6.csv`.
4. Optionally, perform further visualization or reporting using the final dataset.

---

## Requirements

- SQL-compatible environment (MySQL, PostgreSQL, SQLite, etc.)
- Ability to import CSV files into the SQL engine

---

## Notes

- This project demonstrates the ability to perform full-cycle SQL data handling, from raw ingestion to final export.
- If any modifications are needed for a different SQL dialect, the script may require small syntax adjustments.
