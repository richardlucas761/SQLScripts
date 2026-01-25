# SQLScripts

Useful SQL Server scripts and related information about SQL Server.

## Undocumented features

These undocumented features may be deprecated in a later verson of SQL Server.

### sp_who2

See **FilterSPWho2Output.sql**

### sp_MSforeachdb

See **FilterSP_MSforeachdb.sql**

## Useful scripts

### FilterSP_MSforeachdb.sql

Use the undocumented ```sp_MSforeachdb``` command to run a query for all databases on an instance, add these results into a temporary table and then query their results.

A simple example of getting the number of database tables for all databases on the instance is included.

#### Caution

This can be a "sledgehammer to crack a nut" and it will execute on system databases like these, be careful if you're trying to do anything other than just SELECT data due to unintended consequences.

- [msdb]
- [master]
- [tempdb]
- [distribution]

### FilterSPWho2Output.sql

A very simple "first responder" script which uses the undocumented ```sp_who2``` command which gives more information than the documented ```sp_who``` command.

https://learn.microsoft.com/en-us/sql/relational-databases/system-stored-procedures/sp-who-transact-sql

#### See Also

For more extensive tools see these tools https://github.com/dataplat/dbatools for PowerShell.
