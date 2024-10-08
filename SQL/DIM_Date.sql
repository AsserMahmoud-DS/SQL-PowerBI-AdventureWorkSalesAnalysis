SELECT [DateKey]
      ,[FullDateAlternateKey] as Date
     -- ,[DayNumberOfWeek]
      ,Left([EnglishDayNameOfWeek] , 3) as Day
      --,[SpanishDayNameOfWeek]
     -- ,[FrenchDayNameOfWeek]
      ,[DayNumberOfMonth] as Day_no
     -- ,[DayNumberOfYear]
      ,[WeekNumberOfYear] as week
      ,Left([EnglishMonthName] , 3) as Month
     -- ,[SpanishMonthName]
     -- ,[FrenchMonthName]
     -- ,[MonthNumberOfYear]
      ,[CalendarQuarter] as Quarter
      ,[CalendarYear] as Year
      --,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
      --,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  Where CalendarYear >=2012
