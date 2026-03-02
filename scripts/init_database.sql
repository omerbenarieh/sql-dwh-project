use master;
go

if exists(select 1 from sys.databases where name = 'DataWarehouse')
begin
    alter database DataWarehouse set SINGLE_USER  with rollback immediate;
    drop  database DataWarehouse;
end;
go

-- Create DataWarehouse DB
create database DataWarehouse;
go


use DataWarehouse;
go

-- Create Schemas

create schema bronze;
go

create schema silver;
go

create schema gold;
go

