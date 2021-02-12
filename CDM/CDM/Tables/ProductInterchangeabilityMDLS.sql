CREATE TABLE [CDM].[ProductInterchangeabilityMDLS] (
    [ProductInterchangeabilityMDLSID] INT          IDENTITY (1, 1) NOT NULL,
    [RelevantGATP]                    VARCHAR (20) NULL,
    [Model]                           VARCHAR (9)  NULL,
    [UsedOn]                          VARCHAR (25) NULL,
    [Authority]                       VARCHAR (40) NULL,
    [ReworkCode]                      VARCHAR (1)  NULL,
    [AuthorityRevision]               VARCHAR (10) NULL,
    [RevisedDate]                     DATETIME     NULL,
    [RevisedBy]                       VARCHAR (30) NULL,
    [CreateDTS]                       DATETIME     NULL,
    [UpdateDTS]                       DATETIME     NULL,
    PRIMARY KEY CLUSTERED ([ProductInterchangeabilityMDLSID] ASC)
);

