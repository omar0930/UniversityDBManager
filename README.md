# University Database Manager

## Overview
The **University Database Manager** is a database management system designed to handle university-related data efficiently. It enables users to store, retrieve, update, and manage student, faculty, and course records through a structured database interface.

## Features
- CRUD operations for students, faculty, and courses
- User-friendly interface for managing university data
- Secure authentication and role-based access control
- SQL-based querying for efficient data retrieval
- Backup and restore functionality

## Installation
Clone the repository using:
```bash
git clone https://github.com/omar0930/UniversityDBManager.git
cd UniversityDBManager
```

## Dataset
The database includes structured tables for:
- **Students** (ID, name, age, major, GPA, etc.)
- **Faculty** (ID, name, department, designation, etc.)
- **Courses** (Course ID, name, credits, instructor, etc.)
- **Enrollments** (Student ID, Course ID, semester, grade, etc.)

## Workflow
1. Set up the database schema and initialize data.
2. Implement CRUD operations for student, faculty, and course records.
3. Use authentication for secure access to the system.
4. Query and manipulate data efficiently through SQL commands.
5. Perform backup and restore operations as needed.

## Results
The system successfully manages university records with high efficiency, providing:
- Fast data retrieval with optimized SQL queries
- Secure access and role-based permissions
- User-friendly interaction for data management

## Technologies Used
- MySQL/PostgreSQL (for database management)
- SQLAlchemy (for ORM)

