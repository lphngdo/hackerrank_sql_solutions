DECLARE @count AS INT = 1;

WHILE @count < 21
BEGIN
  PRINT REPLICATE('* ', @count);
  SET @count = @count + 1;
END;
