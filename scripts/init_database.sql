/*
Create Databse 'DataWarehouse' and schemas: bronze, silver, gold


*/

USE master;
GO
IF EXISTS (SELECT 1 FROM sys.databses WHERE name = "DataWarehouse")
BEGIN
  ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
  DROP DATABSE DataWarehouse;
END;
GO

------Create 'DataWarehouse' database ----------------
CREATE DATABSE DataWarehouse;
GO
USE DataWarehouse;
GO
 -- create schemas --
  
CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
