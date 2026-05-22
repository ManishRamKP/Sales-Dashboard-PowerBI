-- DIM_Calendar Clean
-- Selecting relevant date columns for time intelligence in Power BI

SELECT 
    DateKey,
    FullDateAlternateKey AS Date,
    EnglishDayNameOfWeek AS Day,
    WeekNumberOfYear AS WeekNo,
    EnglishMonthName AS Month,
    LEFT(EnglishMonthName, 3) AS MonthShort,
    MonthNumberOfYear AS MonthNo,
    CalendarQuarter AS Quarter,
    CalendarYear AS Year
FROM 
    [AdventureWorksDW2022].[dbo].[DimDate]
WHERE 
    CalendarYear >= 2010