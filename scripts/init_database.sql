/*
========================================
create database and schemas
=========================================
script purpose:
This script creates a new database named 'Datwarehouse'
 after checking if it already exists .
If the database exists, it is dropped and recreated. addidtionally the script sets up three schemas
within database : 'bronze,'silver','gold'

warning :
Running this script will drop the datawarehouse database if it exists 
all the data in the database will be permanently deleted. procced with caution
and ensure you hve prper backups before running this script.
*/



use master;
go 

-- drop and reacreate the Datwarehouse database

IF EXISTS (SELECT 1 FROM sys.databases where name='DataWarehouse')
begin 
alter database DataWarehouse set SINGLE_USER with ROLLBACK IMMEDIATE;
DROP DATABASE DataWarehouse;
end;
go

-- create the datwarehouse database

create database DataWarehouse;


use DataWarehouse;
go

-- create schemas
create schema bronze;
go
create schema silver ;
go

create schema gold;
go
