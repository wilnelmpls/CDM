CREATE TABLE [CDM].[InvoiceItemTaxes] (
    [InvoiceItemTaxesID]  INT             IDENTITY (1, 1) NOT NULL,
    [InvoiceItemID]       INT             NULL,
    [InvoiceLineNumber]   VARCHAR (20)    NULL,
    [InvoiceTaxesTypeID]  INT             NULL,
    [TaxRate]             DECIMAL (18, 2) NULL,
    [TaxAmount]           DECIMAL (18, 2) NULL,
    [TaxJurisdiction]     VARCHAR (15)    NULL,
    [TaxJurisdictionDesc] VARCHAR (50)    NULL,
    [CreateDTS]           DATETIME        NULL,
    [UpdateDTS]           DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([InvoiceItemTaxesID] ASC),
    CONSTRAINT [FK_InvoiceItemTaxes_To_InvoiceItems] FOREIGN KEY ([InvoiceItemID]) REFERENCES [CDM].[InvoiceItems] ([InvoiceItemID]),
    CONSTRAINT [FK_InvoiceItemTaxes_To_InvoiceTaxesType] FOREIGN KEY ([InvoiceTaxesTypeID]) REFERENCES [CDM].[InvoiceTaxesType] ([InvoiceTaxesTypeID])
);

