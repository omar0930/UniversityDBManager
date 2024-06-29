# UniversityDBManager

## Overview
UniversityDBManager is a SQL-based database management system designed to handle the storage and retrieval of information about students and departments within a university setting. The system provides structured data storage for students' details such as ID, name, and GPA, as well as associated departments.

## Features
- **Database Creation**: Automatically creates a new database for university data management.
- **Table Initialization**: Sets up `Students` and `Departments` tables with appropriate relationships and constraints.
- **Data Manipulation**: Facilitates the insertion, updating, and deletion of records in an efficient manner.
- **Data Integrity**: Enforces GPA constraints and maintains primary key constraints to ensure data accuracy and consistency.
- **Advanced SQL Operations**: Includes functions, stored procedures, triggers, and advanced queries like joins to demonstrate complex SQL capabilities.

## Getting Started

### Prerequisites
- MySQL Server (5.7 or newer)
- Any SQL client (e.g., MySQL Workbench, phpMyAdmin)

### Setting Up
1. Clone this repository or download the SQL script.
2. Run the SQL script in your SQL client to set up the database and tables.
3. The database is ready to be populated with additional data or integrated into university management systems.

## SQL Script Explanation
- **`CREATE DATABASE`**: Initializes a new database named `University`.
- **`CREATE TABLE`**: Creates tables `Students` and `Departments` with specified fields and constraints.
- **`INSERT INTO`**: Populates the tables with initial data.
- **`SELECT`**: Demonstrates how to retrieve records with specific conditions.
- **`UPDATE`**: Shows how to update records in the `Students` table.
- **`DELETE`**: Illustrates the removal of records from the `Students` table.
- **`ALTER TABLE`**: Modifies tables to add new constraints and ensure data integrity.
- **`CREATE FUNCTION` and `CREATE PROCEDURE`**: Includes examples of SQL functions and stored procedures for common tasks.
- **`CREATE TRIGGER`**: Implements triggers to automate uppercase conversion of names before insertion and log updates.

## Usage Examples
- To insert new student data:
  ```sql
  CALL InsertStudent(12345, 'Jane Doe', 3.7, 1);
