CREATE TABLE [CDM].[CustomerSiteType] (
    [CustomerSiteTypeID]   INT          IDENTITY (1, 1) NOT NULL,
    [CustomerSiteTypeIdCK] VARCHAR (30) NULL,
    [SourceSystemID]       INT          NULL,
    [TypeName]             VARCHAR (20) NULL,
    [CreateDTS]            DATETIME     NULL,
    [UpdateDTS]            DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([CustomerSiteTypeID] ASC),
    CONSTRAINT [FK_CustomerSiteType_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

