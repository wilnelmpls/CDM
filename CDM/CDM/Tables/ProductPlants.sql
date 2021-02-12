CREATE TABLE [CDM].[ProductPlants] (
    [ProductPlantID]    INT         IDENTITY (1, 1) NOT NULL,
    [PlantID]           INT         NULL,
    [ReplinishmentCode] VARCHAR (2) NULL,
    [ProductID]         INT         NULL,
    [CreateDTS]         DATETIME    NULL,
    [UpdateDTS]         DATETIME    NULL,
    PRIMARY KEY CLUSTERED ([ProductPlantID] ASC),
    CONSTRAINT [FK_ProductPlants_To_Plant] FOREIGN KEY ([PlantID]) REFERENCES [CDM].[Plants] ([PlantID]),
    CONSTRAINT [FK_ProductPlants_To_Product] FOREIGN KEY ([ProductID]) REFERENCES [CDM].[Products] ([ProductID])
);

