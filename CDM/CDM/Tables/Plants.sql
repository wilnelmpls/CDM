CREATE TABLE [CDM].[Plants] (
    [PlantID]             INT          IDENTITY (1, 1) NOT NULL,
    [PlantSK]             VARCHAR (50) NULL,
    [SourceSystemName]    VARCHAR (6)  NULL,
    [CreateDTS]           DATETIME     NULL,
    [UpdateDTS]           DATETIME     NULL,
    [SourceSystemID]      INT          NULL,
    [Status]              VARCHAR (30) NULL,
    [Name]                VARCHAR (50) NULL,
    [isApproved]          BIT          NULL,
    [SourceManufactureID] INT          NULL,
    PRIMARY KEY CLUSTERED ([PlantID] ASC)
);

