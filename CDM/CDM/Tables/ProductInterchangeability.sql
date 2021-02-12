CREATE TABLE [CDM].[ProductInterchangeability] (
    [ProductInterchangeabilityID] INT           IDENTITY (1, 1) NOT NULL,
    [ProductInterchangeabilityCK] VARCHAR (100) NULL,
    [PrecedingProductID]          INT           NULL,
    [SucceedingProductID]         INT           NULL,
    [RelationshipType]            VARCHAR (1)   NULL,
    [ReasonCode]                  VARCHAR (1)   NULL,
    [ATPRelevant]                 VARCHAR (1)   NULL,
    [RelevantGATP]                VARCHAR (20)  NULL,
    [ReworkCode]                  VARCHAR (1)   NULL,
    [ReasonNotesLoc]              VARCHAR (MAX) NULL,
    [ConditionalNotesLoc]         VARCHAR (MAX) NULL,
    [SourceSystemID]              INT           NULL,
    [EffectiveFrom]               DATETIME      NULL,
    [EffectiveTo]                 DATETIME      NULL,
    [IsActive]                    BIT           NULL,
    [CreateDTS]                   DATETIME      NULL,
    [UpdateDTS]                   DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductInterchangeabilityID] ASC),
    CONSTRAINT [FK_ProductInterchangeability_Pre_To_Product] FOREIGN KEY ([PrecedingProductID]) REFERENCES [CDM].[Products] ([ProductID]),
    CONSTRAINT [FK_ProductInterchangeability_Suc_To_Product] FOREIGN KEY ([SucceedingProductID]) REFERENCES [CDM].[Products] ([ProductID]),
    CONSTRAINT [FK_ProductInterchangeability_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

