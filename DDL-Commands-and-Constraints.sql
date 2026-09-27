/************************* DDL COMMANDS **************************/

-- 1. Table Creation (CREATE) --

# Create a database named “employee”
CREATE DATABASE employee;
USE employee;

# Create table Departments
CREATE TABLE departments
 (department_id INT PRIMARY KEY,
 department_name VARCHAR(100));

# Create table Locations
CREATE TABLE location 
 (location_id INT PRIMARY KEY,
  location VARCHAR(30));

# Create table Employees
CREATE TABLE employees 
 (employee_id INT PRIMARY KEY,
  employee_name VARCHAR(50),
  gender ENUM('M', 'F'),
  age INT,
  hire_date DATE,
  designation VARCHAR(100),
  department_id INT,
  location_id INT,
  salary DECIMAL(10,2),
  FOREIGN KEY (department_id) REFERENCES departments(department_id),
  FOREIGN KEY (location_id) REFERENCES location(location_id));
  
#################################################################################################################################################################
-- 2. Table Alteration (ALTER) --

# Add a new column named "email" to the Employees table 
ALTER TABLE employees ADD COLUMN email VARCHAR(100);

# Modify the data type of the "designation" column in the Employees table to support a wider range of values. 
ALTER TABLE employees MODIFY COLUMN designation VARCHAR(300);

# Drop the “age” column from the Employees table. 
ALTER TABLE employees DROP COLUMN age;

# Rename the “hire_date” column to “date_of_joining”. 
ALTER TABLE employees RENAME COLUMN hire_date TO date_of_joining;

#################################################################################################################################################################
-- 3. Table Renaming (RENAME) --

# Rename the "Departments" table to "Departments_Info". 
RENAME TABLE departments TO departments_info;

#  Rename the "Location" table to "Locations".
RENAME TABLE location TO locations;

################################################################################################################################################################
-- 4. Table Truncation (TRUNCATE) --

# Write an SQL statement to truncate the Employees table. 
TRUNCATE TABLE employees;

-- 5. Database & Table Dropping (DROP) --
# Write the SQL statements to drop the Employees table and then the “employee” database. 
DROP TABLE employees;
DROP DATABASE employee;

#################################################################################################################################################################
			/******************************************* CONSTRAINTS *****************************************************/

-- 1.   Database Recreation -- 
/* Drop the 'employee' database if it exists and recreate it using the provided schema, 
ensuring that all tables are created with the appropriate constraints as instructed */

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;
  
###################################################################################################################################################################
-- 2. Departments Table --
CREATE TABLE departments
 (department_id INT PRIMARY KEY,
 department_name VARCHAR(100));

# Ensure that the "department_id" uniquely identifies each department. 
-- department_id is already made as primary key during  table creation. So each department stays uniquely identified.

# Set up constraints on the "department_name" to avoid duplicate and null entries. 
ALTER TABLE departments
MODIFY COLUMN department_name VARCHAR(100) NOT NULL UNIQUE;

#################################################################################################################################################################
-- 3. Location Table -- 
CREATE TABLE location 
 (location_id INT PRIMARY KEY,
  location VARCHAR(30));
  
# Establish a mechanism to automatically generate unique identifiers for each location, ensuring that they are incremented sequentially. 
ALTER TABLE location
MODIFY COLUMN location_id INT AUTO_INCREMENT;

# Implement constraints to prevent the insertion of null and duplicate locations.
ALTER TABLE location
MODIFY COLUMN location VARCHAR(30) NOT NULL UNIQUE;

#################################################################################################################################################################
-- 4. Employees Table -- 
CREATE TABLE employees 
 (employee_id INT PRIMARY KEY,
  employee_name VARCHAR(50),
  gender ENUM('M', 'F'),
  age INT,
  hire_date DATE,
  designation VARCHAR(100),
  department_id INT,
  location_id INT,
  salary DECIMAL(10,2),
  FOREIGN KEY (department_id) REFERENCES departments(department_id),
  FOREIGN KEY (location_id) REFERENCES location(location_id));

# Guarantee that each employee has a distinct identifier. 
-- employee_id is already made as primary key during  table creation which will work as a distinct identifier

# Create a restriction to ensure that the employee's name is always provided.
ALTER TABLE employees 
MODIFY COLUMN employee_name VARCHAR(50) NOT NULL;
 
# Limit the acceptable values for the "gender" field to only 'M' or 'F'. 
ALTER TABLE employees
MODIFY COLUMN gender ENUM('M', 'F'),
ADD CHECK (gender IN ('M', 'F'));

# Enforce a condition to ensure that the employee's age is 18 or above. 
ALTER TABLE employees
ADD CHECK (age >= 18);

# Automatically assign the current date to the "hire_date" field if not specified.
ALTER TABLE employees
MODIFY COLUMN hire_date DATE DEFAULT (CURRENT_DATE);

# Establish links between the "department_id" and "location_id" fields in the "employees" table and their respective tables.
ALTER TABLE employees
ADD FOREIGN KEY (department_id) REFERENCES departments(department_id),
ADD FOREIGN KEY (location_id) REFERENCES location(location_id);

##################################################################################################################################################################
##################################################################################################################################################################





















