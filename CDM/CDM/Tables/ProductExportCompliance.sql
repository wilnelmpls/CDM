CREATE TABLE [CDM].[ProductExportCompliance] (
    [ProductExportComplianceID]         INT           IDENTITY (1, 1) NOT NULL,
    [ProductCertificationID]            INT           NULL,
    [ProductExportComplianceCK]         VARCHAR (250) NULL,
    [ProductID]                         INT           NULL,
    [JurisdictionCountry]               VARCHAR (4)   NULL,
    [ExportControlClassificationNumber] VARCHAR (10)  NULL,
    [ExportControlFlag]                 VARCHAR (5)   NULL,
    [TariffScheduleCode]                VARCHAR (25)  NULL,
    [IsUStechnology]                    BIT           NULL,
    [CreateDTS]                         DATETIME      NULL,
    [UpdateDTS]                         DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductExportComplianceID] ASC),
    CONSTRAINT [FK_ProductExportCompliance_To_ProductCert] FOREIGN KEY ([ProductCertificationID]) REFERENCES [CDM].[ProductCertification] ([ProductCertificationID])
);

