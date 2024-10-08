SELECT [ProductKey]
     ,[OrderDateKey] 
     ,[DueDateKey]
     ,[ShipDateKey]
     ,[CustomerKey]
     -- ,[PromotionKey]
     -- ,[CurrencyKey]
      ,[SalesTerritoryKey]
      ,[SalesOrderNumber]
     -- ,[SalesOrderLineNumber]
     -- ,[RevisionNumber]
      ,[OrderQuantity]
     -- ,[UnitPrice]
     -- ,[ExtendedAmount]
     -- ,[UnitPriceDiscountPct]
     -- ,[DiscountAmount]
     -- ,[ProductStandardCost]
    --  ,[TotalProductCost]
      ,[SalesAmount]
     -- ,[TaxAmt]
     -- ,[Freight]
     -- ,[CarrierTrackingNumber]
     -- ,[CustomerPONumber]
     -- ,[OrderDate]
     -- ,[DueDate]
     -- ,[ShipDate]
	 -- ,d.CalendarYear
	 -- ,Left(d.EnglishMonthName , 3) as Month
	 -- ,Left(d.EnglishDayNameOfWeek , 3) as Day
  FROM [AdventureWorksDW2019].[dbo].[FactInternetSales] as f
 -- Left join [AdventureWorksDW2019].[dbo].[DimDate] as d
 -- On f.OrderDateKey = d.DateKey 
 Where Year(OrderDate) >= 2012
