SELECT TOP 20
    p.ProductKey,
    p.EnglishProductName AS ProductName,
    p.Color,
    ps.EnglishProductSubcategoryName AS ProductSubcategory,
    pc.EnglishProductCategoryName AS ProductCategory,
    ISNULL(p.Status, 'Outdated') AS ProductStatus
FROM 
    [AdventureWorksDW2022].[dbo].[DimProduct] p
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimProductSubcategory] ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimProductCategory] pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
WHERE
    pc.EnglishProductCategoryName IS NOT NULL
ORDER BY 
    p.ProductKey ASC