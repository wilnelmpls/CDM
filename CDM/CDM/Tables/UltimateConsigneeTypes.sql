CREATE TABLE [CDM].[UltimateConsigneeTypes] (
    [UltimateConsigneeTypeID]   INT          NOT NULL,
    [UltimateConsigneeTypeName] VARCHAR (40) NOT NULL,
    [CreateDTS]                 DATETIME     NULL,
    [UpdateDTS]                 DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([UltimateConsigneeTypeID] ASC)
);

