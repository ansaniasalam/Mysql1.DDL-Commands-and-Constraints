# mysql-ddl-commands-and-constraints

# MySQL Employee Database: DDL Commands and Constraints

## DDL Commands

### 1. Table Creation (`CREATE`)

Write the SQL statements to create a database named `employee` and the following tables based on the provided schema:

- Departments
- Location
- Employees

### 2. Table Alteration (`ALTER`)

Write SQL statements to alter the table structure as follows:

- Add a new column named `email` to the `Employees` table to store employee email addresses.
- Modify the data type of the `designation` column in the `Employees` table to support a wider range of values.
- Drop the `age` column from the `Employees` table.
- Rename the `hire_date` column to `date_of_joining`.

### 3. Table Renaming (`RENAME`)

Rewrite the SQL statements to rename the following tables:

- Rename `Departments` to `Departments_Info`.
- Rename `Location` to `Locations`.

### 4. Table Truncation (`TRUNCATE`)

Write an SQL statement to truncate the `Employees` table.

### 5. Database and Table Dropping (`DROP`)

Write SQL statements to drop the `Employees` table and then the `employee` database.

## Constraints

### 1. Database Recreation

Drop the `employee` database if it exists, then recreate it using the provided schema. Ensure all tables are created with the appropriate constraints described below.

### 2. Departments Table

- Ensure `department_id` uniquely identifies each department.
- Add constraints to prevent `department_name` from being null or duplicated.

### 3. Location Table

- Automatically generate unique, sequential identifiers for each location.
- Prevent null or duplicate locations.

### 4. Employees Table

- Ensure each employee has a unique identifier.
- Require an employee name.
- Limit `gender` values to `M` or `F`.
- Require the employee's age to be at least 18.
- Set the current date as the default for `hire_date` when no date is specified.
- Link `department_id` and `location_id` in the `Employees` table to their respective tables.
