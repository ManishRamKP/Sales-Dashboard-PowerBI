SELECT DISTINCT LEFT(CAST(OrderDateKey AS VARCHAR), 4) AS SalesYear
FROM [AdventureWorksDW2022].[dbo].[FactInternetSales]
ORDER BY SalesYear