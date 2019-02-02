create view olap.Channel as
select
	DC.ChannelKey
,	DC.ChannelName
,	DC.ChannelDescription
from 
	DimChannel DC
go

create view olap.Promotion as
select
	DP.PromotionKey
,	DP.PromotionName
,	DP.DiscountPercent
,	DP.PromotionCategory
,	DP.PromotionDescription
,	DP.PromotionType
from
	DimPromotion DP
go

create view olap.Customer as
select
	DC.CustomerKey
,	CustomerFullName =	CASE
							WHEN CustomerType = 'Person'
							THEN CONCAT(FirstName, '',LastName)
							WHEN CustomerType = 'Company'
							THEN CompanyName
							END
,	DC.AddressLine1
,	DC.AddressLine2
,	DC.CustomerType
,	DC.Education
,	DC.EmailAddress
,	DC.Occupation
from
	DimCustomer DC
go