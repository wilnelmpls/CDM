CREATE TABLE [CDM].[InvoiceBanks] (
    [InvoiceBankID]  INT          IDENTITY (1, 1) NOT NULL,
    [InvoiceID]      INT          NULL,
    [CountryKey]     VARCHAR (3)  NULL,
    [BankKey]        VARCHAR (17) NULL,
    [BankName]       VARCHAR (70) NULL,
    [BankLocation]   VARCHAR (70) NULL,
    [BankAcctNumber] VARCHAR (30) NULL,
    [BankAcctHolder] VARCHAR (35) NULL,
    [CreateDTS]      DATETIME     NULL,
    [UpdateDTS]      DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([InvoiceBankID] ASC),
    CONSTRAINT [FK_InvoiceBanks_To_Invoice] FOREIGN KEY ([InvoiceID]) REFERENCES [CDM].[Invoices] ([InvoiceID])
);

