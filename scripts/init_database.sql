/* 
==========================================================================================================
Create Database and Schemas
==========================================================================================================
This script checks whether a database named 'DataWarehouseProject' exists and drops it and recreates it.
If it does not exist already, it creates a new database. This script creates 3 new schemas bronze, silver, 
and gold in the database.
==========================================================================================================
*/

-- Creating the Database
USE master;
GO

-- Drop and Recreate the 'DataWarehouseProject' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouseProject')
BEGIN
  DROP DATABASE DataWarehouseProject
END;
GO

-- Create the database 'DataWarehouseProject'
CREATE DATABASE DataWarehouseProject;
GO

-- Use the DataWarehouseProject database
USE DatabaseWarehouseProject;
GO

-- Create schemas
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
