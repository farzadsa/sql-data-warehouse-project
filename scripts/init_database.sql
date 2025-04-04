/*
*/
USE master;
GO
--Drop and re-create the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name='DataWarehouse')
BEGIN
	ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DataWarehouse;
END;
GO
--create database: DataWarehouse	
CREATE DATABASE DataWarehouse;

--switch to DataWarehouse from master
USE DataWarehouse;

--create Schema: bronze, silver, and gold (medallion architecture)
CREATE SCHEMA bronze;	
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
