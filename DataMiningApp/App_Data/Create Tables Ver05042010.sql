USE [DMP]
GO

/****** Object:  Table [dbo].[ALGORITHM_DATASTORE]    Script Date: 05/04/2010 23:51:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[ALGORITHM_DATASTORE](
	[JOB_ID] [int] NULL,
	[STEP_ID] [int] NULL,
	[DATA_NAME] [varchar](50) NULL,
	[ROW_ID] [int] NULL,
	[COLUMN_ID] [int] NULL,
	[VALUE] [varchar](50) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [DMP]
GO

/****** Object:  Table [dbo].[WEBAPP_JOBS]    Script Date: 05/04/2010 23:51:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[WEBAPP_JOBS](
	[JOB_ID] [int] IDENTITY(1,1) NOT NULL,
	[ALGORITHM_ID] [int] NULL,
	[CURRENT_STEP] [int] NULL
) ON [PRIMARY]

GO

USE [DMP]
GO

/****** Object:  Table [dbo].[WEBAPP_LAYOUT]    Script Date: 05/04/2010 23:51:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WEBAPP_LAYOUT](
	[ALGORITHM_ID] [int] NOT NULL,
	[STEP_ID] [int] NOT NULL,
	[CONTROL_ID] [int] NULL,
	[LAYOUT_X] [int] NOT NULL,
	[LAYOUT_Y] [int] NOT NULL,
	[ROWSPAN] [int] NULL,
	[COLSPAN] [int] NULL,
	[CONTROL_TYPE] [varchar](50) NOT NULL,
	[FILL_DATANAME] [varchar](50) NOT NULL,
	[OUTPUT_DATANAME] [varchar](50) NOT NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

USE [DMP]
GO

/****** Object:  Table [dbo].[WEBAPP_CONST]    Script Date: 05/04/2010 23:51:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[WEBAPP_CONST](
	[ALGORITHM_ID] [int] NULL,
	[STEP_ID] [int] NULL,
	[DATA_ID] [int] NULL,
	[VALUE_NUM] [float] NULL,
	[VALUE_STRING] [varchar](4000) NULL
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

