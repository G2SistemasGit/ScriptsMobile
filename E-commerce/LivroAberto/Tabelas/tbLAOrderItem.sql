CREATE TABLE [dbo].[LA_ORDER_ITEM](
	[baseDiscountAmount] [float] NULL,
	[baseDiscountInvoiced] [float] NULL,
	[baseOriginalPrice] [float] NULL,
	[basePrice] [float] NULL,
	[basePriceInclTax] [float] NULL,
	[baseRowInvoiced] [float] NULL,
	[baseRowTotal] [float] NULL,
	[baseRowTotalInclTax] [float] NULL,
	[discountAmount] [float] NULL,
	[discountInvoiced] [float] NULL,
	[discountPercent] [float] NULL,
	[itemId] [int] NULL,
	[name] [varchar](300) NULL,
	[orderId] [int] NULL,
	[originalPrice] [float] NULL,
	[price] [float] NULL,
	[priceInclTax] [float] NULL,
	[productId] [int] NULL,
	[qtyCanceled] [float] NULL,
	[qtyInvoiced] [float] NULL,
	[qtyOrdered] [float] NULL,
	[qtyRefunded] [float] NULL,
	[qtyShipped] [float] NULL,
	[rowInvoiced] [float] NULL,
	[rowTotal] [float] NULL,
	[rowTotalInclTax] [float] NULL,
	[sku] [varchar](300) NULL,
	[storeId] [int] NULL,
	[taxAmount] [float] NULL,
	[taxInvoiced] [float] NULL,
	[taxPercent] [float] NULL
) ON [PRIMARY]
