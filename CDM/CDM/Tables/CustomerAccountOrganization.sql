CREATE TABLE [CDM].[CustomerAccountOrganization] (
    [CustomerAccountOrganizationID]       INT           IDENTITY (1, 1) NOT NULL,
    [CustomerAccountOrganizationSK]       VARCHAR (200) NULL,
    [SourceSystemID]                      INT           NULL,
    [SourceCustomerAccountOrganizationID] VARCHAR (150) NULL,
    [Code]                                VARCHAR (150) NULL,
    [Name]                                VARCHAR (240) NULL,
    [CreateDTS]                           DATETIME      NULL,
    [UpdateDTS]                           DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([CustomerAccountOrganizationID] ASC),
    CONSTRAINT [FK_CustomerAccountOrganization_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

