

		CREATE VIEW [olap].[vDimStore]
		AS
		SELECT [StoreKey]
			,  [StoreType]
			,  [StoreName]
			,  [StoreDescription]
			,  [Status]
		FROM [dbo].[DimStore]