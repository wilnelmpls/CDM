CREATE TABLE [CDM].[ProductGroup] (
    [ProductGroupID]   INT          IDENTITY (1, 1) NOT NULL,
    [ProductGroupName] VARCHAR (50) NULL,
    [SourceSystemID]   INT          NULL,
    [CreateDTS]        DATETIME     NULL,
    [UpdateDTS]        DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([ProductGroupID] ASC),
    CONSTRAINT [FK_ProductGroup_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

