CREATE TABLE [CDM].[CustomerSiteSalesDetails] (
    [CustomerSiteSalesDetailID]   INT          IDENTITY (1, 1) NOT NULL,
    [CustomerSiteSalesDetailIdCK] VARCHAR (30) NULL,
    [CustomerSiteID]              INT          NULL,
    [SourceSystemName]            VARCHAR (6)  NULL,
    [CreateDTS]                   DATETIME     NULL,
    [UpdateDTS]                   DATETIME     NULL,
    [SourceSystemID]              INT          NULL,
    [SalesGroup]                  VARCHAR (3)  NULL,
    [SalesOrganization]           CHAR (12)    NULL,
    [Dvision]                     NCHAR (6)    NULL,
    [DistributionChannel]         NCHAR (6)    NULL,
    [IsCompleteDelivery]          BIT          NULL,
    [ShippingConditions]          CHAR (2)     NULL,
    [Currency]                    NCHAR (5)    NULL,
    [DeliveryPriority]            NUMERIC (2)  NULL,
    [TermsOfPaymentKey]           VARCHAR (4)  NULL,
    [TermsOfPaymentDesc]          VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([CustomerSiteSalesDetailID] ASC),
    CONSTRAINT [FK_CustomerSiteSalesDetails_To_CustomerSite] FOREIGN KEY ([CustomerSiteID]) REFERENCES [CDM].[CustomerSites] ([CustomerSiteID]),
    CONSTRAINT [FK_CustomerSiteSalesDetails_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

