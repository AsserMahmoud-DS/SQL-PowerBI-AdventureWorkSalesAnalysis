SELECT [ProductKey]
      ,[ProductAlternateKey]
	  ,c.EnglishProductCategoryName as Category
	 -- ,p.[ProductSubcategoryKey] 
	  ,s.EnglishProductSubcategoryName as SubCategory
      ,[EnglishProductName] as Product_Name
	  ,[Style]as Product_Style
      ,[Color]as Product_Color
      ,[Size]as Product_Size
      ,[ModelName]
	 -- ,[DaysToManufacture]
	  ,isnull([Status] , 'outdated') as  [Product_Status]
    
  FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  LEFT JOIN  [AdventureWorksDW2019].[dbo].[DimProductSubcategory] as s on (p.ProductSubcategoryKey  = s.ProductSubcategoryKey)
  LEFT JOIN  [AdventureWorksDW2019].[dbo].[DimProductCategory] as c on c.ProductCategoryKey = s.ProductCategoryKey
