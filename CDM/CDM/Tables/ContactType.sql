CREATE TABLE [CDM].[ContactType] (
    [ContactTypeID]    INT          IDENTITY (1, 1) NOT NULL,
    [SourceSystemName] VARCHAR (6)  NULL,
    [CreateDTS]        DATETIME     NULL,
    [UpdateDTS]        DATETIME     NULL,
    [SourceSystemID]   INT          NULL,
    [Status]           BIT          NULL,
    [ContactTypeName]  VARCHAR (30) NULL,
    PRIMARY KEY CLUSTERED ([ContactTypeID] ASC)
);

