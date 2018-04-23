USE [XtraCars]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarScheduling](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [int] NULL,
	[Status] [int] NULL,
	[Subject] [nvarchar](50) NULL,
	[Description] [nvarchar](max) NULL,
	[Label] [int] NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[Location] [nvarchar](50) NULL,
	[AllDay] [bit] NOT NULL,
	[EventType] [int] NULL,
	[RecurrenceInfo] [nvarchar](max) NULL,
	[ReminderInfo] [nvarchar](max) NULL,
	[CarIdShared] [nvarchar](max) NULL,
	[Price] [float] NULL,
	[CarId] [int] NULL,
 CONSTRAINT [PK_CarScheduling] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cars](
	[ID] [int] NOT NULL,
	[Trademark] [nvarchar](50) NULL,
	[Model] [nvarchar](50) NULL,
	[HP] [smallint] NULL,
	[Liter] [float] NULL,
	[Cyl] [tinyint] NULL,
	[TransmissSpeedCount] [tinyint] NULL,
	[TransmissAutomatic] [nvarchar](3) NULL,
	[MPG_City] [tinyint] NULL,
	[MPG_Highway] [tinyint] NULL,
	[Category] [nvarchar](7) NULL,
	[Description] [nvarchar](max) NULL,
	[Hyperlink] [nvarchar](50) NULL,
	[Picture] [image] NULL,
	[Price] [money] NULL,
	[RtfContent] [nvarchar](max) NULL,
	[Color] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
