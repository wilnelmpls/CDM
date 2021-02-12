CREATE TABLE [CDM].[CustomerRelatedAccounts] (
    [CustomerRelatedAccountID] INT          IDENTITY (1, 1) NOT NULL,
    [CustomerRelatedAccountCK] VARCHAR (30) NULL,
    [CreateDTS]                DATETIME     NULL,
    [UpdateDTS]                DATETIME     NULL,
    [SourceSystemID]           INT          NULL,
    [AccountID]                INT          NULL,
    [RelatedAccountID]         VARCHAR (10) NULL,
    PRIMARY KEY CLUSTERED ([CustomerRelatedAccountID] ASC),
    CONSTRAINT [FK_CustomerRelatedAccounts_To_CustomerAccount] FOREIGN KEY ([AccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_CustomerRelatedAccounts_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

