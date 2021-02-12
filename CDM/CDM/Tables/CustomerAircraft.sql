CREATE TABLE [CDM].[CustomerAircraft] (
    [CustomerAircraftId]             INT           IDENTITY (1, 1) NOT NULL,
    [CustomerAircraftCK]             VARCHAR (30)  NULL,
    [SourceSystemName]               VARCHAR (6)   NULL,
    [CustomerAccountID]              INT           NULL,
    [Status]                         VARCHAR (30)  NULL,
    [SourceSystemID]                 INT           NULL,
    [SourceSystemCustomerAircraftID] INT           NULL,
    [SourceSystemErpAircraftNumber]  VARCHAR (30)  NULL,
    [SourceSystemAircraftNumber]     VARCHAR (360) NULL,
    [RelationshipCode]               VARCHAR (30)  NULL,
    [OrigSystemReference]            VARCHAR (240) NULL,
    [SerialNumber]                   VARCHAR (150) NULL,
    [YearManufactured]               INT           NULL,
    [Model]                          VARCHAR (150) NULL,
    [Class]                          VARCHAR (150) NULL,
    [CreateDTS]                      DATETIME      NULL,
    [UpdateDTS]                      DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([CustomerAircraftId] ASC),
    CONSTRAINT [FK_CustomerAircraft_To_CustomerAccount] FOREIGN KEY ([CustomerAccountID]) REFERENCES [CDM].[CustomerAccounts] ([CustomerAccountID]),
    CONSTRAINT [FK_CustomerAircraft_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

