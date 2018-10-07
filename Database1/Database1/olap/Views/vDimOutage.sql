
		CREATE VIEW [olap].[vDimOutage]
		AS	
		SELECT [OutageKey]
            ,  [OutageLabel]
            ,  [OutageName]
            ,  [OutageDescription]
            ,  [OutageType]
            ,  [OutageTypeDescription]
            ,  [OutageSubType]
            ,  [OutageSubTypeDescription] 
		FROM [dbo].[DimOutage]