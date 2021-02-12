CREATE TABLE [CDM].[PartnerBridge] (
    [PartnerBridgeID] INT      NOT NULL,
    [PartnerTypeID]   INT      NULL,
    [PartnerID]       INT      NULL,
    [InvoiceID]       INT      NULL,
    [CreateDTS]       DATETIME NULL,
    [UpdateDTS]       DATETIME NULL,
    PRIMARY KEY CLUSTERED ([PartnerBridgeID] ASC),
    CONSTRAINT [FK_PartnerBridge_To_Invoices] FOREIGN KEY ([InvoiceID]) REFERENCES [CDM].[Invoices] ([InvoiceID]),
    CONSTRAINT [FK_PartnerBridge_To_Partners] FOREIGN KEY ([PartnerID]) REFERENCES [CDM].[Partners] ([PartnerID]),
    CONSTRAINT [FK_PartnerBridge_To_PartnerTypes] FOREIGN KEY ([PartnerTypeID]) REFERENCES [CDM].[PartnerTypes] ([PartnerTypeID])
);

