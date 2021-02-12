CREATE TABLE [CDM].[ProductInventoryOrg] (
    [ProductInventoryOrgID] INT          IDENTITY (1, 1) NOT NULL,
    [InventoryOrg]          VARCHAR (10) NULL,
    [InventoryOrgName]      VARCHAR (50) NULL,
    [CreateDTS]             DATETIME     NULL,
    [UpdateDTS]             DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([ProductInventoryOrgID] ASC)
);

