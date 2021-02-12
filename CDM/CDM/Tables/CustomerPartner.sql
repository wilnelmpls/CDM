CREATE TABLE [CDM].[CustomerPartner] (
    [CustomerPartnerID] INT      IDENTITY (1, 1) NOT NULL,
    [CustomerAccountID] INT      NULL,
    [PartnerID]         INT      NULL,
    [SourceSystemID]    INT      NULL,
    [CreateDTS]         DATETIME NULL,
    [UpdateDTS]         DATETIME NULL,
    PRIMARY KEY CLUSTERED ([CustomerPartnerID] ASC),
    CONSTRAINT [FK_CustomerPartner_To_CustomerAccounts] FOREIGN KEY ([CustomerAccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_CustomerPartner_To_Partners] FOREIGN KEY ([PartnerID]) REFERENCES [CDM].[Partners] ([PartnerID]),
    CONSTRAINT [FK_CustomerPartner_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

