CREATE FUNCTION ufn_CalculateFutureValue 
(@sum DECIMAL(18, 4), @annualRate FLOAT, @years INT)
RETURNS DECIMAL(18, 4)
AS
	BEGIN
		RETURN @sum * POWER(1 + @annualRate, @years)
	END



SELECT dbo.ufn_CalculateFutureValue(1000, 0.1, 5) AS FutureValue;