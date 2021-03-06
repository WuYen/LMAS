USE [ALMS]
GO

/****** Object:  Table [dbo].[BA03A]    Script Date: 2018/6/15 �U�� 11:24:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[BA03A](
	[BA03A_ID] [int] IDENTITY(1,1) NOT NULL,
	[DEP_NO] [varchar](30) NOT NULL,
	[DEP_NM] [nvarchar](50) NOT NULL,
	[CREATE_USER] [varchar](30) NULL,
	[CREATE_DATE] [datetime] NULL,
	[UPDATE_USER] [varchar](30) NULL,
	[UPDATE_DATE] [datetime] NULL,
	[ACT_YN] [char](1) NULL,
PRIMARY KEY CLUSTERED 
(
	[BA03A_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO


