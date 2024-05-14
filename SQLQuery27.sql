DECLARE @RecommendedSystem VARCHAR(50)
EXEC InsertServerRecommendation1 @NumServers = 5500, @RecommendedSystem = @RecommendedSystem OUTPUT

-- Print the recommended system
PRINT 'Recommended System: ' + @RecommendedSystem
