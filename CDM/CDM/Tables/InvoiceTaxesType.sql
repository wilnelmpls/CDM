CREATE TABLE [CDM].[InvoiceTaxesType] (
    [InvoiceTaxesTypeID]  INT             IDENTITY (1, 1) NOT NULL,
    [TaxIndicator]        VARCHAR (8)     NULL,
    [TaxRate]             DECIMAL (18, 2) NULL,
    [TaxAmount]           DECIMAL (18, 2) NULL,
    [TaxJurisdiction]     VARCHAR (15)    NULL,
    [TaxJurisdictionDesc] VARCHAR (50)    NULL,
    [CreateDTS]           DATETIME        NULL,
    [UpdateDTS]           DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([InvoiceTaxesTypeID] ASC)
);

