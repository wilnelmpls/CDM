CREATE TABLE [CDM].[CustomerAircraftDevices] (
    [CustomerAircraftDeviceId]   INT           IDENTITY (1, 1) NOT NULL,
    [CustomerAircraftDeviceIdSK] VARCHAR (200) NULL,
    [CustomerAircraftID]         INT           NULL,
    [SourceSystemID]             INT           NULL,
    [Status]                     VARCHAR (30)  NULL,
    [DevicePartyId]              INT           NULL,
    [DevicePartyNumber]          VARCHAR (30)  NULL,
    [DeviceNumber]               VARCHAR (360) NULL,
    [SystemID]                   VARCHAR (360) NULL,
    [DeviceType]                 VARCHAR (150) NULL,
    [Make]                       VARCHAR (150) NULL,
    [Model]                      VARCHAR (150) NULL,
    [OrigSystemReference]        VARCHAR (240) NULL,
    [CreateDTS]                  DATETIME      NULL,
    [UpdateDTS]                  DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([CustomerAircraftDeviceId] ASC),
    CONSTRAINT [FK_CustomerAircraftDevices_To_CustomerAircraft] FOREIGN KEY ([CustomerAircraftID]) REFERENCES [CDM].[CustomerAircraft] ([CustomerAircraftId]),
    CONSTRAINT [FK_CustomerAircraftDevices_To_SourceSystem] FOREIGN KEY ([SourceSystemID]) REFERENCES [CDM].[SourceSystem] ([SourceSystemID])
);

