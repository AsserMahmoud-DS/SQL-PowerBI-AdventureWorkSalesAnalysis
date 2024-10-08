SELECT 

         [CustomerKey]
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
      ,[FirstName]
     -- ,[MiddleName]
      ,[LastName]
	  , FirstName + ' ' + LastName as Full_Name
	  , Case C.Gender when 'M' THEN 'Male' when 'F' THEN 'Female' END as Gender
	  
	  
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
     --,[Gender]
     -- ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
      ,[AddressLine1]
     -- ,[AddressLine2]
     -- ,[Phone]
      ,[DateFirstPurchase]
      ,[CommuteDistance]
	  ,G.City as Customer_City

  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as C 
  Left join [AdventureWorksDW2019].[dbo].[DimGeography] as G 
  ON C.GeographyKey = G.GeographyKey

