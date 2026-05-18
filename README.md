# SQLScripts

Useful SQL Server scripts and related information about SQL Server.

## Undocumented features

These undocumented features may be deprecated in a later verson of SQL Server.

### sp_who2

See **FilterSPWho2Output.sql**

### sp_MSforeachdb

See **FilterSP_MSforeachdb.sql**

## Useful scripts

### Quick schema / table name comparison

```
SELECT TABLE_SCHEMA, TABLE_NAME FROM INFORMATION_SCHEMA.TABLES ORDER BY TABLE_SCHEMA, TABLE_NAME
```

Use this script for a quick comparison between two databases which should be identical. Run the script and copy-and-paste the results into two tabs in Notepad++ and use the "Compare" plugin for a quick visual comparison.

![Notepad++ comparison output which highlights a missing and an added table](img\schemacompare.png)

Note the ```dbo.ErrorLog``` table is missing from one database and the ```dbo.ExtraTable``` is present in the second database.

### Quick schema / table / column comparison

Expands on the "Quick schema / table name comparison" to include more information about the columns which are added or missing when comparing two databases which should be identical. Run the script and copy-and-paste the results into Notepad++ and use the "Compare" plugin for a quick visual comparison.

```
SELECT TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS ORDER BY TABLE_SCHEMA, TABLE_NAME, COLUMN_NAME
```

![Notepad++ comparison output which highlights differences between two sets of database columns](img\columncompare.png)

Note the ```dbo.AWBuildVersion``` table in the first database is missing the ```ModifiedDate``` column and the second database has a new tables called ```dbo.ExtraTable``` with one column.

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

## AdventureWorks sample databases

A set of sample SQL Server database backups to restore to your own instances for experimenting.

<https://learn.microsoft.com/en-us/sql/samples/adventureworks-install-configure>
