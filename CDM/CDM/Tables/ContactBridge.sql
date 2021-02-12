CREATE TABLE [CDM].[ContactBridge] (
    [ContactBridgeID]    INT          IDENTITY (1, 1) NOT NULL,
    [CustomerAccountID]  INT          NULL,
    [ContactID]          INT          NULL,
    [SourceSystemID]     INT          NULL,
    [Status]             BIT          NULL,
    [ContactPurpose]     VARCHAR (35) NULL,
    [IsPrimaryByPurpose] BIT          NULL,
    [CreateDTS]          DATETIME     NULL,
    [UpdateDTS]          DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([ContactBridgeID] ASC),
    CONSTRAINT [FK_ContactBridge_To_Contact] FOREIGN KEY ([ContactID]) REFERENCES [CDM].[Contacts] ([ContactID]),
    CONSTRAINT [FK_ContactBridge_To_CustomerAccount] FOREIGN KEY ([CustomerAccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_ContactBridge_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

