CREATE TABLE [CDM].[ProductVariantType] (
    [ProductVariantTypeID] INT          IDENTITY (1, 1) NOT NULL,
    [ProductVariantType]   VARCHAR (50) NULL,
    [SourceSystemID]       INT          NULL,
    [CreateDTS]            DATETIME     NULL,
    [UpdateDTS]            DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([ProductVariantTypeID] ASC),
    CONSTRAINT [FK_ProductVariantType_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

