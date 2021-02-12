CREATE TABLE [CDM].[PartnerTypes] (
    [PartnerTypeID]   INT          NOT NULL,
    [PartnerTypeCode] VARCHAR (3)  NULL,
    [PartnerTypeName] VARCHAR (50) NULL,
    [CreateDTS]       DATETIME     NULL,
    [UpdateDTS]       DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([PartnerTypeID] ASC)
);

