-- Cleansed Dim_ProductsTable --
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.[EnglishProductName] AS ProductName, 
  ps.[EnglishProductSubcategoryName] AS Subcategory, 
  -- Joined in From Subcategory Table
  pc.[EnglishProductCategoryName] AS ProductCategory, 
  -- Joined in From Category Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] AS ProductColor, 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size] AS ProductSize, 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.[ProductLine] AS ProductLine, 
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  p.[ModelName] AS ProductModelName, 
  --,[LargePhoto]
  p.[EnglishDescription] AS ProductDescription, 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  ISNULL (p.[Status], 'Outdated') AS [ProductStatus] 
FROM 
  [AdventureWorksDW2022].[dbo].[DimProduct] AS p 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DIMProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DIMProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
ORDER BY 
  p.ProductKey ASC
