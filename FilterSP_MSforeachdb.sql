DECLARE @Table TABLE(
        instance varchar(max),
		tableCount int)

INSERT INTO @Table EXEC sp_MSforeachdb '
	select ''[?]'' as Instance, count(1) from [?].sys.tables
'

SELECT * FROM @Table order by tableCount desc