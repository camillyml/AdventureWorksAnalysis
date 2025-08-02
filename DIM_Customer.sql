SELECT TOP (1000) [CustomerKey] AS [Customer Key]
     -- ,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,[FirstName] AS [First Name]
      --,[MiddleName]
      ,[LastName] AS [Last Name],
       FirstName + ' ' + LastName AS [Full Name],
      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      --,[EmailAddress]
      --,[YearlyIncome]
     -- ,[TotalChildren]
      --,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
      CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender
      --,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
      --,[FrenchOccupation]
      ----[NumberCarsOwned]
      --,[AddressLine1]
      --,[AddressLine2]
      --,[Phone]
      ,[DateFirstPurchase] AS [Date First Purchase],
      city AS [Customer city]
     -- ,[CommuteDistance]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
  ORDER BY 
  CustomerKey ASC