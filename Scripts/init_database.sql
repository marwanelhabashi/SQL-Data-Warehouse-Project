Script purpose:
  this script create a new database named 'datawarehouse' after checking if it already exists.
  if the database exists it's dropped and recreated additionally, the script sets up three schemas within the database 'bronze', 'silver', and 'gold'
  ------------------------------------------------------------------

--create database 'datawarehouse'

use master;
go

create database Datawarehouse;
use Datawarehouse

--creating schemas

create schema bronze;
go
create schema silver;
go
create schema gold;
go
