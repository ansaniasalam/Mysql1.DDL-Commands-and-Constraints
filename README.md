# SQL 1: DDL Commands and Constraints - Employee Database

This SQL script contains hands-on exercises on defining and managing a database structure. It demonstrates how to create, alter, rename, truncate and drop databases and tables, and how to enforce data integrity using constraints.

## Schema

The database and tables were created based on the given schema.

- Schema diagram: [Employee Database Schema]()
- SQL script: [DDL_Commands_and_Constraints.sql](DDL_Commands_and_Constraints.sql)

## Concepts Used

### DDL (Data Definition Language)
SQL commands that define or change the structure of database objects, such as `CREATE`, `ALTER`, `RENAME`, `TRUNCATE` and `DROP`. They work on the schema, not the data.

### CREATE DATABASE and USE
`CREATE DATABASE` makes a new database, and `USE` selects it so later statements run inside it.

### CREATE TABLE
Defines a table with its columns, data types and constraints.

### Data Types
Control what kind of values a column can store, such as whole numbers (`INT`), text (`VARCHAR`), dates (`DATE`), exact decimals (`DECIMAL`) and a fixed list of values (`ENUM`).

### ALTER TABLE
Changes the structure of an existing table without recreating it.

### ADD COLUMN
Adds a new column to an existing table.

### MODIFY COLUMN
Changes the data type or definition of an existing column.

### DROP COLUMN
Removes a column along with all its data.

### RENAME COLUMN
Changes a column's name without affecting its data.

### RENAME TABLE
Changes a table's name.

### TRUNCATE TABLE
Quickly removes all rows while keeping the table structure. It cannot be rolled back and resets auto-increment counters.

### DROP TABLE and DROP DATABASE
Permanently deletes a table or a whole database along with its data.

### IF EXISTS
Runs a drop only when the object exists, which avoids errors when the script is run more than once.

### Constraints
Rules applied to columns to keep data accurate and consistent.

### PRIMARY KEY
Uniquely identifies each row and cannot be null.

### FOREIGN KEY
Links a column to the primary key of another table, maintaining valid relationships between tables.

### NOT NULL
Prevents a column from being left empty.

### UNIQUE
Prevents duplicate values in a column.

### AUTO_INCREMENT
Automatically generates sequential unique numbers for a column.

### CHECK
Validates a condition before a row is accepted.

### DEFAULT
Supplies a value automatically when none is provided.

### Comments
`--`, `#` and `/* */` add notes to the script without affecting execution.

## Running the Code

Open the `.sql` file in MySQL Workbench (or any MySQL client) and run the statements in order.

To run it from a terminal instead, use:

```bash
mysql -u root -p < "DDL_Commands_and_Constraints.sql"
```
