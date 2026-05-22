-- FACT_InternetSales Clean
-- Main sales fact table with only relevant columns
-- Filtered to last 2 years of data for performance

SELECT 
    ProductKey,
    OrderDateKey,
    DueDateKey,
    ShipDateKey,
    CustomerKey,
    SalesOrderNumber,
    SalesAmount,
    TaxAmt,
    Freight,
    SalesAmount - TaxAmt - Freight AS NetSales,
    OrderQuantity,
    UnitPrice,
    TotalProductCost,
    SalesAmount - TotalProductCost AS GrossProfit
FROM 
    [AdventureWorksDW2022].[dbo].[FactInternetSales]
WHERE 
    LEFT(CAST(OrderDateKey AS VARCHAR), 4) >= '2010'
ORDER BY 
    OrderDateKey ASC