CREATE TABLE [CDM].[ProductCertification] (
    [ProductCertificationID] INT            IDENTITY (1, 1) NOT NULL,
    [ProductCertificationCK] VARCHAR (255)  NULL,
    [ProductID]              INT            NULL,
    [ProductManufacturerID]  INT            NULL,
    [TestReports]            BIT            NULL,
    [DFAR]                   BIT            NULL,
    [Revision]               VARCHAR (10)   NULL,
    [CertifiedPartNumber]    VARCHAR (1400) NULL,
    [ExpiryDate]             DATETIME       NULL,
    [InventoryCode]          VARCHAR (255)  NULL,
    [CreateDTS]              DATETIME       NULL,
    [UpdateDTS]              DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ProductCertificationID] ASC),
    CONSTRAINT [FK_ProductCertification_To_ProdMfr] FOREIGN KEY ([ProductManufacturerID]) REFERENCES [CDM].[ProductManufacturers] ([ProductManufacturerID]),
    CONSTRAINT [FK_ProductCertification_To_Products] FOREIGN KEY ([ProductID]) REFERENCES [CDM].[Products] ([ProductID])
);

