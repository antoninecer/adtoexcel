USE [CDIS]
GO

/****** Object:  Table [dbo].[CDISUsers]    Script Date: 01.01.2020 18:53:10 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CDISUsers](
	[Name] [varchar](100) NULL,
	[UserName] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[CDIS_PERMISSION_PROJECT] [nchar](10) NULL,
	[CDIS_PERMISSION_MANAGEMENT] [nchar](10) NULL,
	[CDIS_PERMISSION_SECURITY] [nchar](10) NULL,
	[CDIS_PERMISSION_VWGROUP] [nchar](10) NULL,
	[CDIS_PERMISSION_WFS] [nchar](10) NULL,
	[CDIS_TOOL_ADMINISTRATION] [nchar](10) NULL,
	[CDIS_TOOL_CONFLUENCE] [nchar](10) NULL,
	[CDIS_TOOL_GITLAB] [nchar](10) NULL,
	[CDIS_TOOL_JIRA] [nchar](10) NULL,
	[CDIS_TOOL_ROCKETCHAT] [nchar](10) NULL,
	[COMPANY_AKKADNO] [nchar](10) NULL,
	[COMPANY_ALTRAN] [nchar](10) NULL,
	[COMPANY_CARMEQ] [nchar](10) NULL,
	[COMPANY_CARTELSOL] [nchar](10) NULL,
	[COMPANY_CSTx] [nchar](10) NULL,
	[COMPANY_CYMOTIVE] [nchar](10) NULL,
	[COMPANY_DICONIUM] [nchar](10) NULL,
	[COMPANY_DIGITEQ] [nchar](10) NULL,
	[COMPANY_EXPLEO] [nchar](10) NULL,
	[COMPANY_MHP] [nchar](10) NULL,
	[COMPANY_VOLKSWAGEN] [nchar](10) NULL,
	[enabled] [nchar](10) NULL,
	[created] [nchar](30) NULL,
	[title] [nchar](30) NULL,
	[dn] [nchar](100) NULL,
	[company] [nchar](50) NULL,
	[COMPANY_WIRELESSCAR] [nchar](10) NULL,
	[COMPANY_HELLA] [nchar](10) NULL,
	[CDIS_ALL] [nchar](10) NULL,
	[CDIS_TOOL_ARTIFACTORY] [nchar](10) NULL,
	[COMPANY_IaV] [nchar](10) NULL,
	[COMPANY_UMI] [nchar](10) NULL,
	[COMPANY_VOLKSWAGEN_AG] [nchar](10) NULL,
	[CDIS_Technical_Users] [nchar](10) NULL
) ON [PRIMARY]
GO

