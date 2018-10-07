
---------------------------------------------------------------------

		CREATE VIEW [olap].[vFactITSLA]
		AS
		SELECT 
			[ITSLAkey]
		,	[DateKey]
		,	[StoreKey]
		,	[MachineKey]
		,	[OutageKey]
		,	[OutageStartTime]
		,	[OutageEndTime]
		,	[DownTime]
		FROM [dbo].[FactITSLA]