# celestial_bodies_database

This project involves creating a PostgreSQL database that simulates a simple model of the universe, including galaxies, stars, planets, and moons. The database is set up using the psql command-line interface within a Linux virtual machine environment, and the final result is a dump file of the database structure and data. Below are the steps and commands used to create and interact with the database.

## Prerequisites
* A Linux virtual machine (provided by freeCodeCamp or any other VM setup).
* PostgreSQL installed and accessible via psql

## Project Structure
* The repository contains a single file: universe.sql.
  * This file is a dump of the database that contains all tables, data, and structure required for the project.
 
## Key Concepts Handled in the Project

In this project, the following key concepts were managed:

## 1. Relational Databases
- **PostgreSQL**: The relational database management system used to create and manage the database.
- **psql**: Command-line tool for PostgreSQL used to interact with the database.

## 2. Basic SQL Commands
- **CREATE DATABASE**: Command used to create a new database.
- **\c database_name**: psql command to connect to a specific database.
- **CREATE TABLE**: Command to create a new table in the database.

## 3. Data Types in SQL
- **SERIAL**: Data type for an integer that automatically increments, used for primary keys.
- **VARCHAR**: Data type for variable-length strings, used in name columns.
- **TEXT**: Data type for storing long texts.
- **NUMERIC**: Data type for decimal numbers, used for values requiring precision, such as distances or measurements.
- **INT**: Data type for integer numbers.
- **BOOLEAN**: Data type for storing truth values (`TRUE` or `FALSE`), used in columns like `has_life` or `is_spherical`.

## 4. Constraints and Modifiers
- **PRIMARY KEY**: Defines a column as a primary key, which uniquely identifies each row in the table.
- **FOREIGN KEY**: Defines a column that references a primary key in another table, establishing relationships between tables.
- **NOT NULL**: A constraint that prevents a column from accepting `NULL` values, ensuring that a value is always stored in the column.
- **UNIQUE**: A constraint that ensures values in a column are unique, preventing duplicates.

## 5. Relationships Between Tables
- **One-to-Many Relationships**: Implemented using foreign keys to model relationships between:
  - **galaxy** and **star**: Each star belongs to a galaxy.
  - **star** and **planet**: Each planet orbits a star.
  - **planet** and **moon**: Each moon orbits a planet.

## 6. Database Dump
- **pg_dump**: Command used to export the structure and data of the database into a `.sql` file.
- **Restoration**: The `universe.sql` file can be used to reconstruct the database with the command `psql -U postgres < universe.sql`.

These concepts and tools allow for structured modeling of a relational database, ensuring data integrity and consistency.
