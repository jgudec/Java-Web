/****** Object:  Table [dbo].[CartItem]    Script Date: 8/27/2020 1:09:30 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customer](
	[customerId] [int] IDENTITY(1,1) NOT NULL,
	[customerName] [varchar](255) NOT NULL,
	[customerEmail] [varchar](255) NOT NULL,
	[customerPhone] [int] NULL,
	[username] [varchar](255) NOT NULL,
	[password] [varchar](255) NOT NULL,
	[enabled] [bit] NULL,
	[billingAddressId] [int] NULL,
	[shippingAddressId] [int] NULL,
	[cartId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[customerId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK4393E734D1677FA] FOREIGN KEY([billingAddressId])
REFERENCES [dbo].[BillingAddress] ([billingAddressId])
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK4393E734D1677FA]
GO

ALTER TABLE [dbo].[Customer]  WITH CHECK ADD  CONSTRAINT [FK4393E73504B0A3A] FOREIGN KEY([shippingAddressId])
REFERENCES [dbo].[ShippingAddress] ([shippingAddressId])
GO

ALTER TABLE [dbo].[Customer] CHECK CONSTRAINT [FK4393E73504B0A3A]
GO


CREATE TABLE [dbo].[Users](
	[usersId] [int] IDENTITY(1,1) NOT NULL,
	[customerId] [varchar](255) NULL,
	[enabled] [bit] NULL,
	[password] [varchar](255) NULL,
	[username] [varchar](255) NULL
PRIMARY KEY CLUSTERED 
(
	[usersId] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO