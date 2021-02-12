CREATE TABLE [CDM].[ProductVariantHierarchy] (
    [ProductVariantHierarchyID] INT          IDENTITY (1, 1) NOT NULL,
    [ParentProductID]           INT          NULL,
    [ProductID]                 INT          NULL,
    [ProductVariantTypeID]      INT          NULL,
    [ComponentCode]             VARCHAR (50) NULL,
    PRIMARY KEY CLUSTERED ([ProductVariantHierarchyID] ASC),
    CONSTRAINT [FK_ProductVariantHierarchy_To_ProductVariantType] FOREIGN KEY ([ProductVariantTypeID]) REFERENCES [CDM].[ProductVariantType] ([ProductVariantTypeID]),
    CONSTRAINT [FK_ProductVariantHierarchy_To_SourceSystem] FOREIGN KEY ([ProductID]) REFERENCES [CDM].[Products] ([ProductID])
);

