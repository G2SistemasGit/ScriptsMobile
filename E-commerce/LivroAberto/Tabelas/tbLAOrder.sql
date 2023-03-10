CREATE TABLE [dbo].[LA_ORDER](
	[entityId] [varchar](300) NULL,
	[createdAt] [varchar](300) NULL,
	[incrementId] [varchar](300) NULL,
	[baseDiscountAmount] [float] NULL,
	[shippingAmount] [float] NULL,
	[baseSubtotal] [float] NULL,
	[billing_city] [varchar](300) NULL,
	[billing_countryId] [varchar](300) NULL,
	[billing_customerAddressId] [int] NULL,
	[billing_email] [varchar](300) NULL,
	[billing_fax] [varchar](300) NULL,
	[billing_firstname] [varchar](300) NULL,
	[billing_lastname] [varchar](300) NULL,
	[billing_postcode] [varchar](300) NULL,
	[billing_region] [varchar](300) NULL,
	[billing_regionCode] [varchar](300) NULL,
	[billing_street] [varchar](300) NULL,
	[billing_suffix] [varchar](300) NULL,
	[billing_telephone] [varchar](300) NULL,
	[billing_vatId] [varchar](300) NULL,
	[payment_amountAuthorized] [float] NULL,
	[payment_amountOrdered] [float] NULL,
	[payment_amountPaid] [float] NULL,
	[payment_baseAmountAuthorized] [float] NULL,
	[payment_baseAmountOrdered] [float] NULL,
	[payment_baseAmountPaid] [float] NULL,
	[payment_baseAmountPaidOnline] [float] NULL,
	[payment_baseShippingCaptured] [int] NULL,
	[payment_ccExpMonth] [varchar](300) NULL,
	[payment_ccOwner] [varchar](300) NULL,
	[payment_ccTransId] [varchar](300) NULL,
	[payment_ccType] [varchar](300) NULL,
	[payment_method] [varchar](300) NULL
) ON [PRIMARY]