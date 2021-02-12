CREATE TABLE [CDM].[ProductSupersession] (
    [ProductSupercessionID] INT           IDENTITY (1, 1) NOT NULL,
    [ProductID]             INT           NULL,
    [ProductSupersessionCK] VARCHAR (100) NULL,
    [ProductSupercededID]   INT           NULL,
    [SourceSystemID]        INT           NULL,
    [EffectiveFrom]         DATETIME      NULL,
    [EffectiveTo]           DATETIME      NULL,
    [IsActive]              BIT           NULL,
    [CreateDTS]             DATETIME      NULL,
    [UpdateDTS]             DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductSupercessionID] ASC),
    CONSTRAINT [FK_ProductSupersession_To_Product] FOREIGN KEY ([ProductID]) REFERENCES [CDM].[Products] ([ProductID]),
    CONSTRAINT [FK_ProductSupersession_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

