create view olap.vDimProduct as
select 
	DP.ProductKey
,	DP.ProductSubcategoryKey
,	DP.ProductName
,	DP.ClassID
,	DP.ClassName
,	DP.ColorID
,	DP.ColorName
,	DP.StockTypeID
,	DP.StockTypeName
,	DP.UnitOfMeasureID
,	DP.UnitOfMeasureName
from
	DimProduct DP
go

create view olap.vDimProductCategory as
select
	DPC.ProductCategoryKey
,	DPC.ProductCategoryName
,	DPC.ProductCategoryLabel
,	DPC.ProductCategoryDescription
,	DPC.LoadDate
,	DPC.ETLLoadID
from
	DimProductCategory DPC
go

create view olap.vDimProductSubcategory as
select
	DSPC.ProductSubcategoryKey
,	DSPC.ProductSubcategoryName
,	DSPC.ProductSubcategoryLabel
,	DSPC.ProductCategoryKey
,	DSPC.LoadDate
,	DSPC.ETLLoadID
from
	DimProductSubcategory DSPC
go

create view olap.vDimCurrency as
select 
	DC.CurrencyKey
,	DC.CurrencyDescription

from
	DimCurrency DC
go

SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

ALTER VIEW [olap].[vDimDate]
AS
    SELECT
        [Datekey]
    ,   [FullDateLabel]
    ,   [DateDescription]
    ,   [CalendarYearLabel]
    ,   [CalendarYear]
    ,   [CalendarHalfYearLabel]
    ,   [CalendarHalfYear]
    ,   [CalendarQuarterLabel]
    ,   [CalendarQuarter]
    ,   [CalendarMonthLabel]
    ,   [CalendarMonth]
    ,   [IsWorkDay]
	,	[FiscalYear]
	,	[FiscalYearLabel]
	,	[FiscalHalfYear]
	,	[FiscalHalfYearLabel]
	,	[FiscalQuarter]
	,	[FiscalQuarterLabel]
	,	[FiscalMonth]
	,	[FiscalMonthLabel]
    FROM
        [dbo].[DimDate]
GO

create view olap.FactInventory as
SELECT	
		[InventoryKey]
	,	[DateKey]
	,	[StoreKey]
	,	[ProductKey]
	,	[CurrencyKey]
	,	[OnHandQuantity]
	,	[OnOrderQuantity]
	,	[SafetyStockQuantity]
	,	[UnitCost]
	,	[DaysInStock]
	,	[MinDayInStock]
	,	[MaxDayInStock]
FROM [dbo].[FactInventory]