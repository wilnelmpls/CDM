﻿CREATE TABLE [CDM].[CustomerSites] (
    [CustomerSiteID]             INT           IDENTITY (1, 1) NOT NULL,
    [CarrierID]                  INT           NULL,
    [CustomerSiteIdCK]           VARCHAR (150) NULL,
    [CustomerAccountID]          INT           NULL,
    [PlantID]                    INT           NULL,
    [ManufacturerID]             INT           NULL,
    [SourceSystemID]             INT           NULL,
    [SourceSystemCustomerSiteID] INT           NULL,
    [CustomerSiteTypeID]         INT           NULL,
    [CustomerSiteName]           VARCHAR (10)  NULL,
    [SourceCustomerSiteNumber]   VARCHAR (285) NULL,
    [Street1]                    VARCHAR (255) NULL,
    [Street2]                    VARCHAR (255) NULL,
    [Street3]                    VARCHAR (255) NULL,
    [Street4]                    VARCHAR (40)  NULL,
    [Name]                       VARCHAR (50)  NULL,
    [City]                       VARCHAR (40)  NULL,
    [PostalCode]                 VARCHAR (10)  NULL,
    [State]                      VARCHAR (3)   NULL,
    [Country]                    VARCHAR (30)  NULL,
    [AttentionTo]                VARCHAR (100) NULL,
    [AddressStyle]               VARCHAR (30)  NULL,
    [Description]                VARCHAR (50)  NULL,
    [Code]                       VARCHAR (25)  NULL,
    [OrigSystemReference]        VARCHAR (240) NULL,
    [CustomerStatus]             VARCHAR (30)  NULL,
    [OrgID]                      INT           NULL,
    [InterfacesOrgCode]          VARCHAR (150) NULL,
    [PartySideID]                INT           NULL,
    [LocationID]                 INT           NULL,
    [RepRegistrationNumber]      VARCHAR (50)  NULL,
    [isPrimary]                  BIT           NULL,
    [CreateDTS]                  DATETIME      NULL,
    [UpdateDTS]                  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([CustomerSiteID] ASC),
    CONSTRAINT [FK_CustomerSites_To_cARRIER] FOREIGN KEY ([CarrierID]) REFERENCES [CDM].[Carriers] ([CarrierID]),
    CONSTRAINT [FK_CustomerSites_To_CustomerAccount] FOREIGN KEY ([CustomerAccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_CustomerSites_To_CustomerSiteType] FOREIGN KEY ([CustomerSiteTypeID]) REFERENCES [CDM].[CustomerSiteType] ([CustomerSiteTypeID]),
    CONSTRAINT [FK_CustomerSites_To_PlantID] FOREIGN KEY ([PlantID]) REFERENCES [CDM].[Plants] ([PlantID]),
    CONSTRAINT [FK_CustomerSites_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID]),
    CONSTRAINT [FK_CustomerSites_ToT_ProductManufacturers] FOREIGN KEY ([ManufacturerID]) REFERENCES [CDM].[ProductManufacturers] ([ProductManufacturerID])
);
