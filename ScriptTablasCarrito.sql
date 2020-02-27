CREATE TABLE [dbo].[CartItem] (
    [ItemID]      INT           IDENTITY (1, 1) NOT NULL,
    [CartID]      VARCHAR (500) NOT NULL,
    [Quantity]    INT           NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    [ProductID]   INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ItemID] ASC),
    FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID])
);

CREATE TABLE [dbo].[Category] (
    [CategoryID]   INT          IDENTITY (1, 1) NOT NULL,
    [CategoryName] VARCHAR (50) NOT NULL,
    [Description]  VARCHAR (50) NOT NULL,
    PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);

CREATE TABLE [dbo].[Product] (
    [ProductID]   INT            NOT NULL,
    [ProductName] VARCHAR (50)   NOT NULL,
    [Description] VARCHAR (50)   NOT NULL,
    [ImagePath]   NVARCHAR (200) NOT NULL,
    [UnitPrice]   FLOAT (53)     NOT NULL,
    [CategoryID]  INT            NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
);


