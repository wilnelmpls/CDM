CREATE TABLE [CDM].[CustomerPlantExclusion] (
    [CustomerPlantExclusionID] INT         NOT NULL,
    [PlantID]                  INT         NULL,
    [SourceSystemID]           INT         NULL,
    [CustomerAccountID]        INT         NULL,
    [ExcludedWarehouse]        VARCHAR (4) NULL,
    [ValidityFromDate]         DATETIME    NULL,
    [ValidityToDate]           DATETIME    NULL,
    [CreateDTS]                DATETIME    NULL,
    [UpdateDTS]                DATETIME    NULL,
    PRIMARY KEY CLUSTERED ([CustomerPlantExclusionID] ASC),
    CONSTRAINT [FK_CustomerPlantExclusion_To_CustomerAccount] FOREIGN KEY ([CustomerAccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_CustomerPlantExclusion_To_PlantID] FOREIGN KEY ([PlantID]) REFERENCES [CDM].[Plants] ([PlantID])
);

