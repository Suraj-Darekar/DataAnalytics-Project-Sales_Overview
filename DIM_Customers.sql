-- Cleansed DIM_Customers Table --
SELECT 
  c.[CustomerKey], 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.[FirstName], 
  --,[MiddleName]
  c.[LastName], 
  c.FirstName + ' ' + LastName AS [FullName], 
  -- Combined First & Last Name --
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  Case c.gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  c.[DateFirstPurchase], 
  --,[CommuteDistance]
  g.city AS [CustomerCity] -- Joined in Customer City from Geography Table --
FROM 
  [AdventureWorksDW2022].[dbo].[DimCustomer] AS c 
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DIMGeography] AS g ON g.geographykey = c.geographykey 
ORDER BY 
  CustomerKey ASC -- Ordered list by Customer Key --
