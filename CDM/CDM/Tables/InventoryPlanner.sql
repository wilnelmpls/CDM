CREATE TABLE [CDM].[InventoryPlanner] (
    [InventoryPlannerID] INT          IDENTITY (1, 1) NOT NULL,
    [SourceSystemID]     INT          NULL,
    [InventoryPlannerCK] VARCHAR (30) NULL,
    [Code]               VARCHAR (3)  NULL,
    [Description]        VARCHAR (30) NULL,
    [CreateDTS]          DATETIME     NULL,
    [UpdateDTS]          DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([InventoryPlannerID] ASC)
);

