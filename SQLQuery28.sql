-- Create a stored procedure to insert server count and recommendation
CREATE PROCEDURE InsertServerRecommendation1
    @NumServers INT,
    @RecommendedSystem VARCHAR(50) OUTPUT
AS
BEGIN
    -- Determine recommended system based on number of servers
    IF @NumServers >= 1000
        SET @RecommendedSystem = 'High Capacity (System A)'
    ELSE IF @NumServers >= 500 AND @NumServers < 1000
        SET @RecommendedSystem = 'Medium Capacity (System B)'
    ELSE
        SET @RecommendedSystem = 'Low Capacity (System C)'

    -- Insert the recommendation into the table
    INSERT INTO ServerRecommendation (NumServers, RecommendedSystem)
    VALUES (@NumServers, @RecommendedSystem)
END;
