DECLARE @count AS INT = 21;

WHILE @count > 0
BEGIN
  PRINT REPLICATE('* ', @count);
  SET @count = @count - 1;
END;
