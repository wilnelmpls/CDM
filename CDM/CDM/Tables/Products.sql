﻿CREATE TABLE [CDM].[Products] (
    [ProductID]                    INT             IDENTITY (1, 1) NOT NULL,
    [EventID]                      BIGINT          NULL,
    [ProductNumberCK]              VARCHAR (40)    NULL,
    [SourceSystemID]               INT             NULL,
    [ProductNumber]                VARCHAR (50)    NULL,
    [CrossReference]               VARCHAR (30)    NULL,
    [ProductInventoryOrgID]        INT             NULL,
    [ProductGroupID]               INT             NULL,
    [ProductTypeID]                INT             NULL,
    [CommerceProductNumber]        VARCHAR (50)    NULL,
    [LongDescription]              VARCHAR (255)   NULL,
    [MinDeliveryQty]               DECIMAL (18, 4) NULL,
    [LotSize]                      DECIMAL (18, 4) NULL,
    [OEMpartNumber]                VARCHAR (50)    NULL,
    [SalesSize]                    DECIMAL (8, 4)  NULL,
    [ProductHierarchy]             VARCHAR (80)    NULL,
    [UOM]                          VARCHAR (30)    NULL,
    [PicNumber]                    VARCHAR (80)    NULL,
    [SumCode]                      DECIMAL (18, 4) NULL,
    [EccCreateDate]                DATETIME        NULL,
    [EffectiveFrom]                DATETIME        NULL,
    [ChangedBy]                    VARCHAR (20)    NULL,
    [Deleted]                      VARCHAR (3)     NULL,
    [Description]                  VARCHAR (255)   NULL,
    [BaseUOM]                      VARCHAR (80)    NULL,
    [DimensionLength]              VARCHAR (80)    NULL,
    [DimensionWidth]               VARCHAR (80)    NULL,
    [DimensionHeight]              VARCHAR (80)    NULL,
    [Weight]                       VARCHAR (80)    NULL,
    [WeightUOM]                    VARCHAR (80)    NULL,
    [Dimension]                    VARCHAR (80)    NULL,
    [DimensionUOM]                 VARCHAR (255)   NULL,
    [Volume]                       VARCHAR (80)    NULL,
    [LeadTime]                     VARCHAR (80)    NULL,
    [FAAapprovalCode]              VARCHAR (80)    NULL,
    [HazmatCode]                   VARCHAR (80)    NULL,
    [IsForcastable]                VARCHAR (80)    NULL,
    [Uncode]                       VARCHAR (30)    NULL,
    [CountryOfOrigin]              VARCHAR (80)    NULL,
    [IsPL]                         BIT             NULL,
    [ECCN]                         VARCHAR (30)    NULL,
    [IsHazmat]                     BIT             NULL,
    [IsHPP]                        BIT             NULL,
    [IsITAR]                       BIT             NULL,
    [ItKit]                        BIT             NULL,
    [IsLighting]                   BIT             NULL,
    [IsNotForSale]                 BIT             NULL,
    [IsPreOrder]                   BIT             NULL,
    [IsSoldInHundreds]             BIT             NULL,
    [Is8130]                       BIT             NULL,
    [IsDFAR]                       BIT             NULL,
    [IsClearance]                  BIT             NULL,
    [HarmonizedTariffScheduleCode] VARCHAR (50)    NULL,
    [ShelfLifeDays]                VARCHAR (255)   NULL,
    [IsShippable]                  BIT             NULL,
    [ItemStatus]                   VARCHAR (10)    NULL,
    [IsDeviceRequired]             BIT             NULL,
    [IsAircraftRequired]           BIT             NULL,
    [PiecesPerPound]               INT             NULL,
    [PurchasingUOM]                VARCHAR (5)     NULL,
    [SellingUOM]                   VARCHAR (5)     NULL,
    [StockingUOM]                  VARCHAR (5)     NULL,
    [LastBOMChangedDate]           DATETIME        NULL,
    [ProductInventoryCategory]     VARCHAR (150)   NULL,
    [Avionics]                     VARCHAR (30)    NULL,
    [Optional]                     BIT             NULL,
    [MutuallyExclusive]            BIT             NULL,
    [EffectivityDate]              DATETIME        NULL,
    [AvionicsType]                 VARCHAR (30)    NULL,
    [SiteKeys]                     VARCHAR (50)    NULL,
    [GeographicRegion]             VARCHAR (30)    NULL,
    [ProductTitle]                 VARCHAR (50)    NULL,
    [SellingIncrement]             INT             NULL,
    [PartSerializable]             BIT             NULL,
    [Essentiality]                 VARCHAR (5)     NULL,
    [Series]                       VARCHAR (30)    NULL,
    [Model]                        VARCHAR (30)    NULL,
    [APPL]                         VARCHAR (30)    NULL,
    [SPPL]                         VARCHAR (30)    NULL,
    [Module]                       VARCHAR (80)    NULL,
    [IMM]                          BIT             NULL,
    [Application]                  VARCHAR (80)    NULL,
    [Review]                       BIT             NULL,
    [PartCentralOnly]              BIT             NULL,
    [SLdays]                       VARCHAR (5)     NULL,
    [QPA]                          VARCHAR (12)    NULL,
    [QPE]                          VARCHAR (12)    NULL,
    [EStock]                       BIT             NULL,
    [LLPhours]                     VARCHAR (10)    NULL,
    [MTBFCycles]                   VARCHAR (10)    NULL,
    [MTBFHours]                    VARCHAR (10)    NULL,
    [MTBRCycles]                   VARCHAR (10)    NULL,
    [MTBRHours]                    VARCHAR (10)    NULL,
    [LLPCycles]                    VARCHAR (10)    NULL,
    [BoeingVPP]                    BIT             NULL,
    [VolumeUnit]                   VARCHAR (30)    NULL,
    [PartESD]                      VARCHAR (10)    NULL,
    [PartExplosive]                VARCHAR (10)    NULL,
    [PartFAR15]                    VARCHAR (10)    NULL,
    [PartMoisture]                 VARCHAR (10)    NULL,
    [PartTemperature]              VARCHAR (10)    NULL,
    [ShelfLife]                    VARCHAR (10)    NULL,
    [ShelfPD]                      VARCHAR (10)    NULL,
    [Expeditor]                    VARCHAR (100)   NULL,
    [PartMilitary]                 BIT             NULL,
    [PurchGrp]                     VARCHAR (100)   NULL,
    [AUTOPO]                       BIT             NULL,
    [MaterialStatus]               VARCHAR (30)    NULL,
    [AverageCost]                  DECIMAL (18, 4) NULL,
    [PlanningStrGrp]               VARCHAR (30)    NULL,
    [MSTAE]                        VARCHAR (30)    NULL,
    [EO]                           VARCHAR (30)    NULL,
    [IsReturnable]                 BIT             NULL,
    [Uncertified]                  BIT             NULL,
    [MilitaryPart]                 BIT             NULL,
    [OneSAPAviallPart]             BIT             NULL,
    [OneSAPBoeingPart]             BIT             NULL,
    [ProcurementActive]            BIT             NULL,
    [PlantStatus]                  VARCHAR (2)     NULL,
    [ChainStatus]                  VARCHAR (2)     NULL,
    [SupplierPart]                 BIT             NULL,
    [TempOverstockPart]            BIT             NULL,
    [KitPart]                      BIT             NULL,
    [CertStatus]                   VARCHAR (12)    NULL,
    [SupplierOverstockPart]        BIT             NULL,
    [ShelfLifeType]                VARCHAR (5)     NULL,
    [BlueStreakPart]               BIT             NULL,
    [Displayable]                  BIT             NULL,
    [CommercialPart]               BIT             NULL,
    [UnknownPart]                  BIT             NULL,
    [RawMaterial]                  BIT             NULL,
    [ProprietaryPart]              BIT             NULL,
    [MilitaryCode]                 VARCHAR (4)     NULL,
    [Repairable]                   BIT             NULL,
    [LandingGearPart]              BIT             NULL,
    [HoldReason]                   VARCHAR (6)     NULL,
    [LoadableSoftware]             VARCHAR (3)     NULL,
    [MinMaxPart]                   VARCHAR (4)     NULL,
    [VasAeroServices]              BIT             NULL,
    [ATASpec2000Desc]              VARCHAR (8)     NULL,
    [Ct13Part]                     BIT             NULL,
    [UOMClarification]             VARCHAR (20)    NULL,
    [InventoryPlanner]             VARCHAR (3)     NULL,
    [SAPBaseUnitConversion]        DECIMAL (6, 2)  NULL,
    [MRPType]                      VARCHAR (2)     NULL,
    [IncrOrderQty]                 INT             NULL,
    [MRPGroup]                     VARCHAR (4)     NULL,
    [EstInternalPrice]             DECIMAL (16, 2) NULL,
    [BaseUnit]                     VARCHAR (3)     NULL,
    [SalesText]                    VARCHAR (255)   NULL,
    [ItemCat]                      VARCHAR (4)     NULL,
    [ExcessProgram]                VARCHAR (3)     NULL,
    [BCREFPartNo]                  VARCHAR (32)    NULL,
    [OverLengthPartNo]             VARCHAR (40)    NULL,
    [SpecPartNo]                   VARCHAR (32)    NULL,
    [NonAtaPartNo]                 VARCHAR (40)    NULL,
    [SupplierPartNo]               VARCHAR (40)    NULL,
    [ATAPartNo]                    VARCHAR (32)    NULL,
    [SupplierCodes]                VARCHAR (3)     NULL,
    [ITComponent]                  VARCHAR (3)     NULL,
    [KitType]                      VARCHAR (30)    NULL,
    [SCDPartNumber]                VARCHAR (30)    NULL,
    [ReplenishmentIndicator]       VARCHAR (30)    NULL,
    [ReorderPoint]                 VARCHAR (30)    NULL,
    [ShelfLifeComponent]           VARCHAR (3)     NULL,
    [SafetyDataSheetNumber]        VARCHAR (30)    NULL,
    [SourceOfPDT]                  VARCHAR (30)    NULL,
    [PrecedingProductExists]       BIT             NULL,
    [CreateDTS]                    DATETIME        NULL,
    [UpdateDTS]                    DATETIME        NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    CONSTRAINT [FK_Products_To_ProductGroup] FOREIGN KEY ([ProductGroupID]) REFERENCES [CDM].[ProductGroup] ([ProductGroupID]),
    CONSTRAINT [FK_Products_To_ProductInvOrg] FOREIGN KEY ([ProductInventoryOrgID]) REFERENCES [CDM].[ProductInventoryOrg] ([ProductInventoryOrgID]),
    CONSTRAINT [FK_Products_To_ProductType] FOREIGN KEY ([ProductTypeID]) REFERENCES [CDM].[ProductTypes] ([ProductTypeID]),
    CONSTRAINT [FK_Products_ToT_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

