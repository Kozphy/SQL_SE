create procedure get_pk_fk_relationship
as
begin
	SELECT
		fk.name AS 'FK Name',
		tp.name AS 'Parent table',
		cp.name AS 'parent_table_name',
		cp.column_id as 'parent_table_column_id',
		tr.name AS 'Referenced table',
		cr.name as 'child table name',
		cr.column_id as 'Referenced_table_column_id'
	FROM sys.foreign_keys fk
	INNER JOIN sys.tables as tp ON fk.parent_object_id = tp.object_id
	INNER JOIN sys.tables as tr ON fk.referenced_object_id = tr.object_id
	INNER JOIN sys.foreign_key_columns as fkc ON fkc.constraint_object_id = fk.object_id
	INNER JOIN sys.columns as cp ON fkc.parent_column_id = cp.column_id AND fkc.parent_object_id = cp.object_id
	INNER JOIN sys.columns as cr ON fkc.referenced_column_id = cr.column_id AND fkc.referenced_object_id = cr.object_id
	ORDER BY tp.name, cp.column_id
end;

exec get_pk_fk_relationship;

drop procedure get_pk_fk_relationship;
