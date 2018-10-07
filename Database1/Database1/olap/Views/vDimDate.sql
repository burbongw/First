
		CREATE VIEW [olap].[vDimDate]
		AS	
		SELECT [Datekey]
			,  [FullDateLabel]
			,  [DateDescription]
			,  [CalendarYearLabel]
			,  [CalendarHalfYearLabel]
			,  [CalendarQuarterLabel]
			,  [CalendarMonthLabel]
			,  [IsWorkDay]
		FROM [dbo].[DimDate]