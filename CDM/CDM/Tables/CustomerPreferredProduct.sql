CREATE TABLE [CDM].[CustomerPreferredProduct] (
    [CustomerPreferredProductID] INT           IDENTITY (1, 1) NOT NULL,
    [CustomerPreferredProductCK] VARCHAR (30)  NULL,
    [CustomerAccountID]          INT           NULL,
    [ProductID]                  INT           NULL,
    [CustomerProductNumber]      VARCHAR (80)  NULL,
    [CustomerProductDescription] VARCHAR (255) NULL,
    [SalesOrg]                   VARCHAR (20)  NULL,
    [CreateDTS]                  DATETIME      NULL,
    [UpdateDTS]                  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([CustomerPreferredProductID] ASC),
    CONSTRAINT [FK_CustomerPreferredProduct_To_Customer] FOREIGN KEY ([CustomerAccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_CustomerPreferredProduct_To_Products] FOREIGN KEY ([ProductID]) REFERENCES [CDM].[Products] ([ProductID])
);

