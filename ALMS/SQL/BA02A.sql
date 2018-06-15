USE [ALMS]
GO

/****** Object:  Table [dbo].[BA02A]    Script Date: 2018/6/15 �U�� 10:49:04 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[BA02A](
	[BA02A_ID] [int] IDENTITY(1,1) NOT NULL,
	[CPN_NO] [varchar](30) NOT NULL,
	[CPN_NM] [nvarchar](50) NOT NULL,
	[SRT_NM] [nvarchar](50) NULL,
	[EIN_NO] [varchar](20) NULL,
	[ADD_D1] [nvarchar](70) NULL,
	[ADD_D2] [nvarchar](70) NULL,
	[CREATE_USER] [varchar](30) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_USER] [varchar](30) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[ACT_YN] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BA02A_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


