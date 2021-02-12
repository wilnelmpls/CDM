CREATE TABLE [CDM].[ProductManufacturers] (
    [ProductManufacturerID] INT           IDENTITY (1, 1) NOT NULL,
    [ManufacturerCode]      VARCHAR (50)  NULL,
    [ManufacturerName]      VARCHAR (100) NULL,
    [CreateDTS]             DATETIME      NULL,
    [UpdateDTS]             DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductManufacturerID] ASC)
);

