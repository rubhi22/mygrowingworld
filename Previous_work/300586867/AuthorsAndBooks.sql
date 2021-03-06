USE [LTI]
GO
/****** Object:  Table [dbo].[lti_book]    Script Date: 12/09/2010 15:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_book](
	[isbn] [nvarchar](20) NOT NULL,
	[title] [nvarchar](50) NULL,
	[publish_date] [datetime] NULL,
	[price] [money] NULL,
	[picture] [nvarchar](20) NULL,
 CONSTRAINT [book_isbn_pk] PRIMARY KEY CLUSTERED 
(
	[isbn] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (N'123-45-678-0', N'Oracle for Dummies', CAST(0x0000956100000000 AS DateTime), 34.9500, N'oracle.jpg')
INSERT [dbo].[lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (N'123-45-678-1', N'Advanced Oracle for Dummies', CAST(0x0000955400000000 AS DateTime), 39.9500, N'advoracle.jpg')
INSERT [dbo].[lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (N'123-45-678-2', N'Web Programming for the Unenlightened', CAST(0x0000982E00000000 AS DateTime), 42.2500, N'webprog.jpg')
INSERT [dbo].[lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (N'123-45-678-3', N'Java Programming for Cave Dwellers', CAST(0x0000928200000000 AS DateTime), 34.9500, N'javaprog.jpg')
INSERT [dbo].[lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (N'123-45-678-4', N'SQL Queries for Managers', CAST(0x000095C400000000 AS DateTime), 59.9500, N'sqlqueries.jpg')
INSERT [dbo].[lti_book] ([isbn], [title], [publish_date], [price], [picture]) VALUES (N'123-45-678-5', N'Java Server Pages', CAST(0x000094F900000000 AS DateTime), 45.9900, N'javaserver.jpg')
/****** Object:  Table [dbo].[lti_author]    Script Date: 12/09/2010 15:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_author](
	[author_id] [int] NOT NULL,
	[author_last_name] [nvarchar](30) NULL,
	[author_first_name] [nvarchar](30) NULL,
	[author_address] [nvarchar](30) NULL,
	[author_city] [nvarchar](30) NULL,
	[author_state] [nvarchar](2) NULL,
	[author_zip] [nvarchar](10) NULL,
	[author_phone] [nvarchar](20) NULL,
 CONSTRAINT [author_author_id_pk] PRIMARY KEY CLUSTERED 
(
	[author_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[lti_author] ([author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone]) VALUES (1, N'Jones', N'Paul', N'3988 Main Street', N'Eau Claire', N'WI', N'54701', N'715-555-5598')
INSERT [dbo].[lti_author] ([author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone]) VALUES (2, N'Morrison', N'Joline', N'5512 White Birch Street', N'Eau Claire', N'WI', N'54701', N'715-555-3899')
INSERT [dbo].[lti_author] ([author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone]) VALUES (3, N'Smith', N'John', N'1799 Elm Street', N'Eau Claire', N'WI', N'54701', N'715-555-9833')
INSERT [dbo].[lti_author] ([author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone]) VALUES (4, N'Morrison', N'Mike', N'1799 State Street', N'Eau Claire', N'WI', N'54701', N'715-555-9833')
INSERT [dbo].[lti_author] ([author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone]) VALUES (5, N'Johnson', N'Phil', N'8733 Oak Street', N'Travers City', N'MI', N'55555', N'755-555-3233')
INSERT [dbo].[lti_author] ([author_id], [author_last_name], [author_first_name], [author_address], [author_city], [author_state], [author_zip], [author_phone]) VALUES (6, N'Wilson', N'Mark', N'3255 Sooner Street', N'Norman', N'OK', N'75344', N'555-555-4444')
/****** Object:  Table [dbo].[lti_warehouse]    Script Date: 12/09/2010 15:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[lti_warehouse](
	[warehouse_id] [int] NOT NULL,
	[warehouse_address] [nvarchar](30) NULL,
	[warehouse_city] [nvarchar](30) NULL,
	[warehouse_state] [char](2) NULL,
 CONSTRAINT [warehouse_warehouse_id_pk] PRIMARY KEY CLUSTERED 
(
	[warehouse_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[lti_warehouse] ([warehouse_id], [warehouse_address], [warehouse_city], [warehouse_state]) VALUES (1, N'1414 Church Street', N'New York', N'NY')
INSERT [dbo].[lti_warehouse] ([warehouse_id], [warehouse_address], [warehouse_city], [warehouse_state]) VALUES (2, N'838 Main Street', N'Milwaukee', N'WI')
INSERT [dbo].[lti_warehouse] ([warehouse_id], [warehouse_address], [warehouse_city], [warehouse_state]) VALUES (3, N'404 HIghway 303', N'Houston', N'TX')
INSERT [dbo].[lti_warehouse] ([warehouse_id], [warehouse_address], [warehouse_city], [warehouse_state]) VALUES (4, N'4100 Hilltop Road', N'Chicago', N'IL')
INSERT [dbo].[lti_warehouse] ([warehouse_id], [warehouse_address], [warehouse_city], [warehouse_state]) VALUES (5, N'2333 Industrial Drive', N'St. Paul', N'MN')
/****** Object:  Table [dbo].[lti_warehouse_book]    Script Date: 12/09/2010 15:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_warehouse_book](
	[isbn] [nvarchar](20) NOT NULL,
	[warehouse_id] [int] NOT NULL,
	[qoh] [int] NULL,
 CONSTRAINT [wh_book_isbn_wh_id_pk] PRIMARY KEY CLUSTERED 
(
	[isbn] ASC,
	[warehouse_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-0', 1, 5000)
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-0', 2, 4200)
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-0', 3, 300)
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-3', 1, 6000)
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-3', 4, 600)
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-4', 2, 900)
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-4', 3, 1200)
INSERT [dbo].[lti_warehouse_book] ([isbn], [warehouse_id], [qoh]) VALUES (N'123-45-678-5', 5, 900)
/****** Object:  Table [dbo].[lti_book_author]    Script Date: 12/09/2010 15:44:41 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[lti_book_author](
	[isbn] [nvarchar](20) NOT NULL,
	[author_id] [int] NOT NULL,
 CONSTRAINT [book_author_isbn_author_id_pk] PRIMARY KEY CLUSTERED 
(
	[isbn] ASC,
	[author_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-0', 1)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-0', 3)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-1', 2)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-2', 3)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-2', 4)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-3', 1)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-3', 5)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-4', 1)
INSERT [dbo].[lti_book_author] ([isbn], [author_id]) VALUES (N'123-45-678-5', 4)
/****** Object:  View [dbo].[AuthorsAndBook]    Script Date: 12/09/2010 15:44:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[AuthorsAndBook]
AS
SELECT     dbo.lti_book.isbn, dbo.lti_book.title, dbo.lti_book.publish_date, dbo.lti_book.price, dbo.lti_book.picture, dbo.lti_book_author.author_id
FROM         dbo.lti_book INNER JOIN
                      dbo.lti_book_author ON dbo.lti_book.isbn = dbo.lti_book_author.isbn
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[31] 2[10] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "lti_book"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 182
               Right = 231
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "lti_book_author"
            Begin Extent = 
               Top = 17
               Left = 324
               Bottom = 145
               Right = 514
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AuthorsAndBook'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'AuthorsAndBook'
GO
/****** Object:  ForeignKey [wh_book_isbn_fk]    Script Date: 12/09/2010 15:44:41 ******/
ALTER TABLE [dbo].[lti_warehouse_book]  WITH CHECK ADD  CONSTRAINT [wh_book_isbn_fk] FOREIGN KEY([isbn])
REFERENCES [dbo].[lti_book] ([isbn])
GO
ALTER TABLE [dbo].[lti_warehouse_book] CHECK CONSTRAINT [wh_book_isbn_fk]
GO
/****** Object:  ForeignKey [wh_book_warehouse_id_fk]    Script Date: 12/09/2010 15:44:41 ******/
ALTER TABLE [dbo].[lti_warehouse_book]  WITH CHECK ADD  CONSTRAINT [wh_book_warehouse_id_fk] FOREIGN KEY([warehouse_id])
REFERENCES [dbo].[lti_warehouse] ([warehouse_id])
GO
ALTER TABLE [dbo].[lti_warehouse_book] CHECK CONSTRAINT [wh_book_warehouse_id_fk]
GO
/****** Object:  ForeignKey [book_author_author_id_fk]    Script Date: 12/09/2010 15:44:41 ******/
ALTER TABLE [dbo].[lti_book_author]  WITH CHECK ADD  CONSTRAINT [book_author_author_id_fk] FOREIGN KEY([author_id])
REFERENCES [dbo].[lti_author] ([author_id])
GO
ALTER TABLE [dbo].[lti_book_author] CHECK CONSTRAINT [book_author_author_id_fk]
GO
/****** Object:  ForeignKey [book_author_isbn_fk]    Script Date: 12/09/2010 15:44:41 ******/
ALTER TABLE [dbo].[lti_book_author]  WITH CHECK ADD  CONSTRAINT [book_author_isbn_fk] FOREIGN KEY([isbn])
REFERENCES [dbo].[lti_book] ([isbn])
GO
ALTER TABLE [dbo].[lti_book_author] CHECK CONSTRAINT [book_author_isbn_fk]
GO
