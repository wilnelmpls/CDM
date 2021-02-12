CREATE TABLE [CDM].[ProductAlternatives] (
    [ProductAlternativeID]     INT            IDENTITY (1, 1) NOT NULL,
    [ProductID]                INT            NULL,
    [ProductAlternativeNumber] VARCHAR (1000) NULL,
    [CreateDTS]                DATETIME       NULL,
    [UpdateDTS]                DATETIME       NULL,
    PRIMARY KEY CLUSTERED ([ProductAlternativeID] ASC),
    CONSTRAINT [FK_ProductAlternatives_To_Products] FOREIGN KEY ([ProductID]) REFERENCES [CDM].[Products] ([ProductID])
);

