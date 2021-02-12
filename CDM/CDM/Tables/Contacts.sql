CREATE TABLE [CDM].[Contacts] (
    [ContactID]           INT           IDENTITY (1, 1) NOT NULL,
    [ContactCK]           VARCHAR (30)  NULL,
    [SourceSystemID]      INT           NULL,
    [ContactFirstName]    VARCHAR (70)  NULL,
    [ContactLastName]     VARCHAR (70)  NULL,
    [ContactIdentifier]   VARCHAR (60)  NULL,
    [SourceContactID]     VARCHAR (10)  NULL,
    [ContactStatus]       VARCHAR (60)  NULL,
    [OrigSystemReference] VARCHAR (240) NULL,
    [ContactTypeID]       INT           NULL,
    [SourceContactOrgId]  INT           NULL,
    [CreateDTS]           DATETIME      NULL,
    [UpdateDTS]           DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ContactID] ASC),
    CONSTRAINT [FK_Contacts_To_ContactType] FOREIGN KEY ([ContactTypeID]) REFERENCES [CDM].[ContactType] ([ContactTypeID]),
    CONSTRAINT [FK_Contacts_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

