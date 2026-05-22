-- DIM_Product Clean
-- Selecting product info with category and subcategory joined in

SELECT 
    p.ProductKey,
    p.EnglishProductName AS ProductName,
    p.Color,
    p.StandardCost,
    p.ListPrice,
    ps.EnglishProductSubcategoryName AS ProductSubcategory,
    pc.EnglishProductCategoryName AS ProductCategory,
    p.EnglishDescription AS ProductDescription,
    ISNULL(p.Status, 'Outdated') AS ProductStatus
FROM 
    [AdventureWorksDW2022].[dbo].[DimProduct] p
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimProductSubcategory] ps
    ON p.ProductSubcategoryKey = ps.ProductSubcategoryKey
LEFT JOIN 
    [AdventureWorksDW2022].[dbo].[DimProductCategory] pc
    ON ps.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY 
    p.ProductKey ASC