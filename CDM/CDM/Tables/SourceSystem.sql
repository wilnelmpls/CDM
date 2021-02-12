CREATE TABLE [CDM].[SourceSystem] (
    [SourceSystemID]   INT         IDENTITY (1, 1) NOT NULL,
    [Status]           BIT         NULL,
    [SourceSystemName] VARCHAR (8) NULL,
    [CreateDTS]        DATETIME    NULL,
    [UpdateDTS]        DATETIME    NULL,
    PRIMARY KEY CLUSTERED ([SourceSystemID] ASC)
);

