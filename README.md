# Classroom-Database-Project-using-MySQL
A MySQL project that demonstrates database creation, table design, CRUD operations, ALTER commands, filtering, sorting, grouping, and string functions using real student data.
# Classroom Database Project (MySQL)

##  Project Overview
This project is a **Classroom Database System** developed using **MySQL**.
It is designed to manage student records and demonstrate core SQL concepts
used in real-world database applications.

The project covers database creation, table management, data insertion,
updates, deletion, and retrieval using SQL queries.

This project is suitable for **college submission** and **fresher-level interviews**.

##  Technologies Used
- Database: MySQL
- Tool: MySQL Workbench
- Language: SQL

##  Database Structure

### Table: Students / Students_details
The table stores student-related information such as:
- Name
- Roll number (Primary Key)
- Class
- Address
- Phone number
- Father name
- Mother name

##  Features Implemented
- Create and use a database
- Create tables with constraints
- Insert single and multiple records
- Retrieve all or specific columns
- Update records using WHERE clause
- Delete records using conditions
- Drop columns from a table
- Rename tables and columns
- Filter data using LIKE and IS NULL
- Sort data using ORDER BY
- Group data using GROUP BY
- Use SQL string functions

## SQL Concepts Covered
- DDL commands (CREATE, ALTER, DROP)
- DML commands (INSERT, UPDATE, DELETE)
- SELECT queries
- WHERE clause
- LIKE operator
- GROUP BY
- ORDER BY
- Aggregate function (COUNT)
- String functions (UPPER, LOWER, CONCAT)

##  How to Run the Project
1. Open MySQL Workbench
2. Create a new SQL file
3. Copy and paste the SQL code from this repository
4. Execute the queries step by step
5. Use SELECT queries to view the output

##  Sample Query
```sql
SELECT address, COUNT(*) AS total_students
FROM Students_details
GROUP BY address;
