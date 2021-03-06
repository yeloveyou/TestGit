USE [EMS]
GO
/****** Object:  Table [dbo].[acnt]    Script Date: 2020/5/16 16:10:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[acnt](
	[msg_num] [varchar](50) NOT NULL,
	[acnt_pwd] [varchar](50) NOT NULL,
	[acnt_times] [int] NOT NULL,
	[acnt_updatetimes] [int] NULL,
 CONSTRAINT [PK_acnt] PRIMARY KEY CLUSTERED 
(
	[msg_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[admin]    Script Date: 2020/5/16 16:10:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[admin](
	[adminacnt] [nchar](10) NOT NULL,
	[adminpwd] [nchar](10) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[msg]    Script Date: 2020/5/16 16:10:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[msg](
	[msg_num] [varchar](50) NOT NULL,
	[msg_name] [varchar](20) NOT NULL,
	[msg_sex] [char](2) NOT NULL,
	[msg_birth] [date] NULL,
	[msg_native] [varchar](10) NULL,
	[msg_edu] [char](4) NOT NULL,
	[msg_add] [varchar](30) NULL,
	[msg_tel] [varchar](15) NULL,
	[msg_year] [int] NULL,
	[msg_sa] [int] NULL,
 CONSTRAINT [PK_msg] PRIMARY KEY CLUSTERED 
(
	[msg_num] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'', N'1', 0, 0)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'001 ', N'1', 0, 9)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'002 ', N'1', 0, 1)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'003 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'004 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'005 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'006 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'007 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'008 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'009 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'010 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'011 ', N'123', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'012 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'013 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'014 ', N'1         ', 0, NULL)
INSERT [dbo].[acnt] ([msg_num], [acnt_pwd], [acnt_times], [acnt_updatetimes]) VALUES (N'016 ', N'123', 0, NULL)
GO
INSERT [dbo].[admin] ([adminacnt], [adminpwd]) VALUES (N'admin     ', N'admin     ')
GO
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'001 ', N'张三', N'男', CAST(N'1111-01-02' AS Date), N'湖北', N'小学', N'武汉', N'17326083632', 10, 4700)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'002 ', N'震源', N'男', CAST(N'1998-05-05' AS Date), N'浙江', N'本科', N'黑龙江', N'17326083632', 15, 452412)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'003 ', N'李四', N'男', CAST(N'1999-10-01' AS Date), N'上海', N'小学', N'海南', N'17326083632', 8, 323664)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'004 ', N'王五', N'男', CAST(N'1998-09-05' AS Date), N'湖北', N'本科', N'新疆', N'17326083632', 12, 232223)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'005 ', N'章觉', N'女', CAST(N'1999-06-14' AS Date), N'北京', N'其他', N'内蒙古', N'17326083632', 11, 544212)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'006 ', N'张怡', N'女', CAST(N'1999-05-22' AS Date), N'湖北', N'中学', N'北京', N'17744', 20, 363323)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'007 ', N'叶天', N'男', CAST(N'1998-08-12' AS Date), N'浙江', N'本科', N'甘肃', N'17326083632', 4, 512853)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'008 ', N'赵桥', N'男', CAST(N'1999-12-30' AS Date), N'江苏', N'硕士', N'天津', N'17326083632', 2, 466654)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'009 ', N'林鑫', N'男', CAST(N'1997-04-22' AS Date), N'浙江', N'博士', N'青岛', N'17326083632', 5, 346687)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'010 ', N'陆成', N'男', CAST(N'1997-11-14' AS Date), N'江西', N'本科', N'上海', N'17326083632', 11, 956233)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'011 ', N'苏叶', N'男', CAST(N'1999-12-01' AS Date), N'河南', N'中学', N'福建', N'17326083632', 10, 542113)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'012 ', N'徐大', N'男', CAST(N'1999-11-22' AS Date), N'内蒙古', N'本科', N'福州', N'17326083632', 9, 556230)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'013 ', N'方芳', N'女', CAST(N'1998-10-07' AS Date), N'浙江', N'硕士', N'泉州', N'17326083632', 8, 845233)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'014 ', N'钱浅', N'男', CAST(N'1999-06-07' AS Date), N'上海', N'专科', N'杭州', N'17326083632', 10, 852637)
INSERT [dbo].[msg] ([msg_num], [msg_name], [msg_sex], [msg_birth], [msg_native], [msg_edu], [msg_add], [msg_tel], [msg_year], [msg_sa]) VALUES (N'016 ', N'罗伊', N'女', CAST(N'1999-11-21' AS Date), N'广东', N'本科', N'东莞', N'17326083632', 10, 263263)
GO
ALTER TABLE [dbo].[acnt] ADD  CONSTRAINT [DF_acnt_acnt_pwd]  DEFAULT ('1') FOR [acnt_pwd]
GO
ALTER TABLE [dbo].[acnt] ADD  CONSTRAINT [DF_acnt_acnt_times]  DEFAULT ((1)) FOR [acnt_times]
GO
ALTER TABLE [dbo].[acnt] ADD  CONSTRAINT [DF_acnt_acnt_updatetimes]  DEFAULT ((0)) FOR [acnt_updatetimes]
GO
ALTER TABLE [dbo].[msg]  WITH CHECK ADD  CONSTRAINT [FK_msg_acnt] FOREIGN KEY([msg_num])
REFERENCES [dbo].[acnt] ([msg_num])
GO
ALTER TABLE [dbo].[msg] CHECK CONSTRAINT [FK_msg_acnt]
GO
ALTER TABLE [dbo].[msg]  WITH CHECK ADD  CONSTRAINT [CK__msg__msg_edu__38996AB5] CHECK  (([msg_edu]='本科' OR [msg_edu]='小学' OR [msg_edu]='中学' OR [msg_edu]='其他' OR [msg_edu]='专科' OR [msg_edu]='硕士' OR [msg_edu]='博士'))
GO
ALTER TABLE [dbo].[msg] CHECK CONSTRAINT [CK__msg__msg_edu__38996AB5]
GO
ALTER TABLE [dbo].[msg]  WITH CHECK ADD  CONSTRAINT [CK__msg__msg_sex__37A5467C] CHECK  (([msg_sex]='男' OR [msg_sex]='女'))
GO
ALTER TABLE [dbo].[msg] CHECK CONSTRAINT [CK__msg__msg_sex__37A5467C]
GO
