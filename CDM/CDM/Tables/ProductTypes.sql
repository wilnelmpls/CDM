CREATE TABLE [CDM].[ProductTypes] (
    [ProductTypeID]   INT           IDENTITY (1, 1) NOT NULL,
    [ProductTypeName] VARCHAR (150) NULL,
    [CreateDTS]       DATETIME      NULL,
    [UpdateDTS]       DATETIME      NULL,
    PRIMARY KEY CLUSTERED ([ProductTypeID] ASC)
);

