drop table sagar.logging_data
create table sagar.logging_data(
DataFactory_name varchar(100),
Destination varchar(100),
ErrorloggedTime varchar(100),
Pipeline_Name varchar(100),
Runid varchar(200),
Execution_successful varchar(100)
)

create proc sagar.sp_logging_table (
@DataFactory_name varchar(100),
@Destination varchar(100),
@ErrorloggedTime varchar(100),
@Pipeline_Name varchar(100),
@Runid varchar(200),
@Execution_successful varchar(100)
)
as
begin
insert into sagar.logging_data(DataFactory_name,
Destination ,
ErrorloggedTime,
Pipeline_Name,
Runid,
Execution_successful) values
(@DataFactory_name,@Destination ,@ErrorloggedTime ,@Pipeline_Name,@Runid,@Execution_successful)
end



select * from sagar.logging_data