-- Create Database
CREATE DATABASE IF NOT EXISTS University;

-- Use Database
USE University;

-- Create Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gpa DECIMAL(3, 1) NOT NULL CHECK (gpa BETWEEN 0.0 AND 4.0),
    department_id INT
);

-- Insert Data
INSERT INTO Students (student_id, name, gpa, department_id) VALUES
(94058, 'Omar', 3.0, 1),
(94281, 'Reem', 3.2, 2),
(98087, 'Roaa', 3.4, 2),
(94216, 'Rodina', 3.6, 3),
(94269, 'Aly', 3.8, 1);

-- Create Department Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50) NOT NULL
);

-- Insert Department Data
INSERT INTO Departments (department_id, department_name) VALUES
(1, 'CS'),
(2, 'Information System'),
(3, 'AI');

-- Select with Where Condition and Operators
SELECT * FROM Students WHERE gpa > 3.2 AND department_id = 1;

-- Update Data
UPDATE Students SET gpa = 3.5 WHERE student_id = 94058;

-- Delete Data
DELETE FROM Students WHERE student_id = 98087;

-- Constraints
ALTER TABLE Students
    ADD CONSTRAINT pk_students PRIMARY KEY (student_id),
    MODIFY COLUMN name VARCHAR(50) NOT NULL,
    MODIFY COLUMN gpa DECIMAL(3,1) NOT NULL,
    ADD CONSTRAINT chk_gpa CHECK (gpa >= 0 AND gpa <= 4.0),
    ADD CONSTRAINT unique_name UNIQUE (name);

-- Functions
DELIMITER //
CREATE FUNCTION CountCharacters(input_string VARCHAR(255)) RETURNS INT
BEGIN
    RETURN LENGTH(input_string);
END //
DELIMITER ;

DELIMITER //
CREATE FUNCTION AddTwoNumbers(a INT, b INT) RETURNS INT
BEGIN
    RETURN a + b;
END //
DELIMITER ;

-- Joins (Inner)
SELECT Students.student_id, Students.name, Students.gpa, Departments.department_name
FROM Students
INNER JOIN Departments ON Students.department_id = Departments.department_id;

-- Procedures
DELIMITER //
CREATE PROCEDURE InsertStudent(IN id INT, IN name VARCHAR(50), IN gpa DECIMAL(3,1), IN department_id INT)
BEGIN
    INSERT INTO Students (student_id, name, gpa, department_id) VALUES (id, name, gpa, department_id);
END //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE UpdateGPA(IN id INT, IN new_gpa DECIMAL(3,1))
BEGIN
    UPDATE Students SET gpa = new_gpa WHERE student_id = id;
END //
DELIMITER ;

-- Triggers
CREATE TRIGGER BeforeInsertTrigger
BEFORE INSERT ON Students
FOR EACH ROW
SET NEW.name = UPPER(NEW.name);

CREATE TRIGGER AfterUpdateTrigger
AFTER UPDATE ON Students
FOR EACH ROW
INSERT INTO LogTable (student_id, updated_at) VALUES (OLD.student_id, NOW());

-- Normalization
-- Assuming that each student can belong to only one department.
-- 1NF: Already achieved as all columns are atomic.
-- 2NF: Split the table into Students and Departments tables.
-- Final Structure:
-- Students (student_id, name, gpa, department_id)
-- Departments (department_id, department_name)student_idnamegpa