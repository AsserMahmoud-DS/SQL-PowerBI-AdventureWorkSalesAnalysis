--Create view Employees AS
  SELECT 
        DISTINCT ([EmployeeKey])
      --,[ParentEmployeeKey]
     -- ,[EmployeeNationalIDAlternateKey]
      --,[ParentEmployeeNationalIDAlternateKey]
      ,E.SalesTerritoryKey
      ,[FirstName]
      ,[LastName]
	  ,FirstName + ' ' + LastName as Full_Name
     -- ,[MiddleName]
     -- ,[NameStyle]
      , Case When [Title] = 'Sales Representative' Then 'Sales Rep' END as JobTitle 
    --  ,[HireDate]
    --  ,[BirthDate]
    --  ,[LoginID]
      ,[EmailAddress]
      ,[Phone]
    --  ,[MaritalStatus]
    --  ,[EmergencyContactName]
    --  ,[EmergencyContactPhone]
    --  ,[SalariedFlag]
      , CASE  Gender WHEN 'M' then 'Male' WHEN  'F' THEN 'Female' END as Gender
    --  ,[PayFrequency]
    --  ,[BaseRate]
     -- ,[VacationHours]
     -- ,[SickLeaveHours]
     -- ,[CurrentFlag]
      ,[DepartmentName]
     -- ,[StartDate]
      ,ISNULL([Status] , 'Ex') as Status
    --  ,[EmployeePhoto]
  FROM [AdventureWorksDW2019].[dbo].[DimEmployee] as E
  RIGHT JOIN [AdventureWorksDW2019].[dbo].[FactInternetSales] as F
  ON E.SalesTerritoryKey = F.SalesTerritoryKey
  Order BY EmployeeKey ASC

