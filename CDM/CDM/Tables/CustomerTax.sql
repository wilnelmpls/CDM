CREATE TABLE [CDM].[CustomerTax] (
    [CustomerTaxID]           INT          IDENTITY (1, 1) NOT NULL,
    [CustomerTaxIdCK]         VARCHAR (30) NULL,
    [SourceSystemName]        VARCHAR (6)  NULL,
    [SourceSystemID]          INT          NULL,
    [CustomerAccountID]       INT          NULL,
    [VatRegistrationNumber]   VARCHAR (20) NULL,
    [TaxClassificationNumber] VARCHAR (1)  NULL,
    [TaxCategory]             VARCHAR (4)  NULL,
    [CreateDTS]               DATETIME     NULL,
    [UpdateDTS]               DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([CustomerTaxID] ASC),
    CONSTRAINT [FK_CustomerTax_To_CustomerAccount] FOREIGN KEY ([CustomerAccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_CustomerTax_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

