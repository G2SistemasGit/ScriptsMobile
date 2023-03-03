CREATE TABLE [dbo].[MG_ORDER](
	[ORDER_ID] [int] NULL,
	[base_currency_code] [varchar](300) NULL,
	[base_discount_amount] [float] NULL,
	[base_discount_tax_compensation_amount] [float] NULL,
	[base_grand_total] [float] NULL,
	[base_shipping_amount] [float] NULL,
	[base_shipping_discount_amount] [float] NULL,
	[base_shipping_discount_tax_compensation_amnt] [float] NULL,
	[base_shipping_incl_tax] [float] NULL,
	[base_shipping_tax_amount] [float] NULL,
	[base_subtotal] [float] NULL,
	[base_subtotal_incl_tax] [float] NULL,
	[base_tax_amount] [float] NULL,
	[base_to_global_rate] [float] NULL,
	[base_to_order_rate] [float] NULL,
	[base_total_due] [float] NULL,
	[billing_address_id] [int] NULL,
	[created_at] [varchar](300) NULL,
	[customer_email] [varchar](300) NULL,
	[customer_firstname] [varchar](300) NULL,
	[customer_group_id] [int] NULL,
	[customer_id] [int] NULL,
	[customer_is_guest] [int] NULL,
	[customer_lastname] [varchar](300) NULL,
	[customer_note_notify] [int] NULL,
	[customer_taxvat] [varchar](300) NULL,
	[discount_amount] [float] NULL,
	[discount_tax_compensation_amount] [float] NULL,
	[entity_id] [int] NULL,
	[global_currency_code] [varchar](300) NULL,
	[grand_total] [float] NULL,
	[increment_id] [varchar](300) NULL,
	[is_virtual] [int] NULL,
	[order_currency_code] [varchar](300) NULL,
	[protect_code] [varchar](300) NULL,
	[quote_id] [int] NULL,
	[remote_ip] [varchar](300) NULL,
	[shipping_amount] [float] NULL,
	[shipping_description] [varchar](300) NULL,
	[shipping_discount_amount] [float] NULL,
	[shipping_discount_tax_compensation_amount] [float] NULL,
	[shipping_incl_tax] [float] NULL,
	[shipping_tax_amount] [float] NULL,
	[state] [varchar](300) NULL,
	[status] [varchar](300) NULL,
	[store_currency_code] [varchar](300) NULL,
	[store_id] [int] NULL,
	[store_name] [varchar](300) NULL,
	[store_to_base_rate] [float] NULL,
	[store_to_order_rate] [float] NULL,
	[subtotal] [float] NULL,
	[subtotal_incl_tax] [float] NULL,
	[tax_amount] [float] NULL,
	[total_due] [float] NULL,
	[total_item_count] [int] NULL,
	[total_qty_ordered] [int] NULL,
	[updated_at] [varchar](300) NULL,
	[weight] [float] NULL,
	[x_forwarded_for] [varchar](300) NULL
) ON [PRIMARY]