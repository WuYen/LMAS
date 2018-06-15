USE [ALMS]
GO

/****** Object:  Table [dbo].[BA01]    Script Date: 2018/6/15 �U�� 10:27:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[BA01A](
	[BA01A_ID] [int] IDENTITY(1,1) NOT NULL,
	[ACC_NO] [varchar](30) NOT NULL,
	[ACC_NM] [nvarchar](50) NOT NULL,
	[LEV_QT] [int] NULL,
	[DA01A_ID] [int] NULL,
	[SMO_YN] [char](1) NOT NULL,
	[DA02A_ID] [int] NULL,
	[DEP_YN] [char](1) NULL,
	[OBJ_YN] [char](1) NULL,
	[DAT_YN] [char](1) NULL,
	[PRJ_YN] [char](1) NULL,
	[CREATE_USER] [varchar](30) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_USER] [varchar](30) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[ACT_YN] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BA01A_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


