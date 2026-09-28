# mysql ddl commands and constraints

# MySQL Employee Database: DDL Commands and Constraints

This practice covers creating and managing a MySQL employee database. It includes DDL commands for working with databases and tables, along with constraints that help keep stored data accurate and consistent.

## DDL Commands

### Database and Table Creation

Created the `employee` database and its `Departments`, `Location`, and `Employees` tables using the provided schema.

### Table Alteration

Practiced changing the `Employees` table after its creation by adding a column, modifying a column’s data type, removing a column, and renaming a column.

### Table Renaming

Renamed the department and location tables to practice changing table names.

### Truncating and Dropping

Used `TRUNCATE` to remove table data and `DROP` to remove a table or database.

## Constraints

Recreated the database and applied constraints to protect data integrity:

- **Departments:** Used a primary key for department IDs and required department names to be present and unique.
- **Location:** Used automatically generated IDs and required location names to be present and unique.
- **Employees:** Required unique employee IDs and employee names, restricted gender values to `M` or `F`, and required employees to be at least 18 years old.
- **Defaults and relationships:** Set the hire date to default to the current date and linked employees to valid departments and locations with foreign keys.

## Tables

- `Departments` stores department IDs and names.
- `Location` stores location IDs and names.
- `Employees` stores employee details, including their department and location references.
