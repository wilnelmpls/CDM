﻿CREATE TABLE [CDM].[InvoicePackages] (
    [InvoicePackageID]        INT             IDENTITY (1, 1) NOT NULL,
    [InvoiceItemID]           INT             NULL,
    [HierarchyNumber]         VARCHAR (12)    NULL,
    [HierarchyParent]         VARCHAR (12)    NULL,
    [SubLevelID]              VARCHAR (12)    NULL,
    [ExtShippingUnitID]       VARCHAR (45)    NULL,
    [IntHandlingUnitNumber]   VARCHAR (10)    NULL,
    [BaseUOMQtyPacked]        VARCHAR (3)     NULL,
    [PackingType]             VARCHAR (35)    NULL,
    [CustomerShippingUnit]    VARCHAR (35)    NULL,
    [ProductsPerShippingUnit] INT             NULL,
    [PackageDelivery]         VARCHAR (35)    NULL,
    [PackageDeliveryItem]     VARCHAR (30)    NULL,
    [TotalWeight]             DECIMAL (18, 4) NULL,
    [NetWeight]               DECIMAL (18, 4) NULL,
    [TareWeight]              DECIMAL (18, 4) NULL,
    [WeightUnit]              VARCHAR (3)     NULL,
    [TotalVolume]             DECIMAL (18, 4) NULL,
    [LoadingVolume]           DECIMAL (18, 4) NULL,
    [TareVolume]              DECIMAL (18, 4) NULL,
    [VolumeUnit]              VARCHAR (3)     NULL,
    [PackageLength]           DECIMAL (18, 4) NULL,
    [PackageWidth]            DECIMAL (18, 4) NULL,
    [PackageHeight]           DECIMAL (18, 4) NULL,
    [UnitLengthWidthHeight]   VARCHAR (3)     NULL,
    [BaseUOM]                 VARCHAR (3)     NULL,
    [ShippingPoint]           DECIMAL (17)    NULL,
    [LoadingPoint]            DECIMAL (17)    NULL,
    [ShipmentNumberKeyVDA]    VARCHAR (1)     NULL,
    PRIMARY KEY CLUSTERED ([InvoicePackageID] ASC),
    CONSTRAINT [FK_InvoicePackages_To_InvoiceItems] FOREIGN KEY ([InvoiceItemID]) REFERENCES [CDM].[InvoiceItems] ([InvoiceItemID])
);
