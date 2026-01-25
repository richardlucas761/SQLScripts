/* SPID 1 to 50 are reserved for system processes */

DECLARE @Table TABLE(
        SPID INT,
        Status VARCHAR(MAX),
        LOGIN VARCHAR(MAX),
        HostName VARCHAR(MAX),
        BlkBy VARCHAR(MAX),
        DBName VARCHAR(MAX),
        Command VARCHAR(MAX),
        CPUTime INT,
        DiskIO INT,
        LastBatch VARCHAR(MAX),
        ProgramName VARCHAR(MAX),
        SPID_1 INT,
        REQUESTID INT
)

INSERT INTO @Table EXEC sp_who2

SELECT  * 
FROM    @Table
WHERE SPID > 50 
ORDER BY CPUTime desc

SELECT  * 
FROM    @Table
WHERE SPID > 50 
ORDER BY DiskIO desc