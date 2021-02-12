CREATE TABLE [CDM].[ProductServiceOptions] (
    [ProductServiceOptionsID]  INT           IDENTITY (1, 1) NOT NULL,
    [ProductID]                INT           NULL,
    [ServiceOptionNumber]      VARCHAR (50)  NULL,
    [ServiceOptionDescription] VARCHAR (255) NULL,
    [UOM]                      VARCHAR (10)  NULL,
    [Status]                   VARCHAR (10)  NULL,
    [ServiceType]              VARCHAR (30)  NULL,
    [ProductInventoryCategory] VARCHAR (50)  NULL,
    [CreateDTS]                DATETIME      NULL,
    [UpdateDTS]                DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductServiceOptionsID] ASC),
    CONSTRAINT [FK_ProductServiceOptions_To_Products] FOREIGN KEY ([ProductID]) REFERENCES [CDM].[Products] ([ProductID])
);

