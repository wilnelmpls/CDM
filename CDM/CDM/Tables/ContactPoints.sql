CREATE TABLE [CDM].[ContactPoints] (
    [ContactPointID]      INT           IDENTITY (1, 1) NOT NULL,
    [ContactPointIdCK]    VARCHAR (100) NULL,
    [SourceSystemID]      INT           NULL,
    [ContactId]           INT           NULL,
    [ContactPointType]    VARCHAR (30)  NULL,
    [ContactPointType2]   VARCHAR (240) NULL,
    [ContactPointStatus]  VARCHAR (30)  NULL,
    [EmailAddress]        VARCHAR (250) NULL,
    [Phone]               VARCHAR (50)  NULL,
    [Fax]                 VARCHAR (50)  NULL,
    [CountryCode]         VARCHAR (10)  NULL,
    [AreaCode]            VARCHAR (10)  NULL,
    [Extension]           VARCHAR (25)  NULL,
    [OrigSystemReference] VARCHAR (240) NULL,
    [CreateDTS]           DATETIME      NULL,
    [UpdateDTS]           DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ContactPointID] ASC),
    CONSTRAINT [FK_ContactPoints_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

