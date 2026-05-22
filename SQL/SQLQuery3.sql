UPDATE [AdventureWorksDW2022].[dbo].[FactInternetSales]
SET OrderDateKey = OrderDateKey + 10000,
    DueDateKey = DueDateKey + 10000,
    ShipDateKey = ShipDateKey + 10000