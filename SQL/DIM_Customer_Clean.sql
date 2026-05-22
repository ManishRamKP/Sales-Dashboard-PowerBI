-- DIM_Customer Clean
-- Combining first and last name, joining with geography for city

SELECT 
    c.CustomerKey,
    c.FirstName + ' ' + c.LastName AS FullName,
    CASE c.Gender 
        WHEN 'M' THEN 'Male' 
        WHEN 'F' THEN 'Female' 
    END AS Gender,
    c.DateFirstPurchase,
    g.City AS CustomerCity,
    g.EnglishCountryRegionName AS CustomerCountry
FROM 
    [AdventureWorksDW2022].[dbo].[DimCustomer] c
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimGeography] g
    ON c.GeographyKey = g.GeographyKey
ORDER BY 
    c.CustomerKey ASC