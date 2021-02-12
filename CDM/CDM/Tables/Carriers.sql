CREATE TABLE [CDM].[Carriers] (
    [CarrierID]              INT          IDENTITY (1, 1) NOT NULL,
    [CarrierCK]              VARCHAR (50) NULL,
    [SourceSystemID]         INT          NULL,
    [Name]                   VARCHAR (25) NULL,
    [Code]                   VARCHAR (10) NULL,
    [SourceCarrierAccountId] VARCHAR (25) NULL,
    [CRUDoperation]          VARCHAR (3)  NULL,
    [CreateDTS]              DATETIME     NULL,
    [UpdateDTS]              DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([CarrierID] ASC),
    CONSTRAINT [FK_Carriers_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

