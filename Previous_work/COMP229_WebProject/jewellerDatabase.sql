USE [jewellerDatabase]
GO
/****** Object:  Table [dbo].[Attribute]    Script Date: 12/13/2010 14:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attribute](
	[AttributeID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AttributeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Attribute] ON
INSERT [dbo].[Attribute] ([AttributeID], [Name]) VALUES (1, N'Color')
SET IDENTITY_INSERT [dbo].[Attribute] OFF
/****** Object:  Table [dbo].[Department]    Script Date: 12/13/2010 14:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DepartmentID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_JEWELLRYDATA] PRIMARY KEY CLUSTERED 
(
	[DepartmentID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Department] ON
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description]) VALUES (1, N'Men''s Jewellery', N'These are perfect for you everyday use and special ocacsion.')
INSERT [dbo].[Department] ([DepartmentID], [Name], [Description]) VALUES (2, N'Women''s Jewellery', N'These are perfect for you everyday use and special ocacsion.')
SET IDENTITY_INSERT [dbo].[Department] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 12/13/2010 14:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ProductID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Price] [money] NOT NULL,
	[Thumbnail] [nvarchar](50) NULL,
	[Image] [nvarchar](50) NULL,
	[PromoFront] [bit] NOT NULL,
	[PromoDept] [bit] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (1, N'Women Gold and Diamond Ring Guard', N'14K Yellow Gold 3/8 ct. Diamond Ring Guard. Get the best of both worlds with this classic diamond ring guard featuring round diamonds sculpted in 14k yellow gold', 975.0000, N'tWomen_Gold_11.jpg', N'Women_Gold_11.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (2, N'Black Hills Gold® Diamond Wedding Set', N'Wedding ring set with 0.17 CT. T. W. diamond and the sparkle of Black Hills Gold®. Metal: 10K gold with 12K leaves Metal Color: Yellow Stones: Round diamonds Setting.', 200.0000, N'tWomen_Gold_8.jpg', N'Women_Gold_8.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (3, N'Diamond Engagement Ring and Wedding Band Set ', N'One stunning 1/4 carat solitaire diamond center sparkles, as its supported by an additional 3/4 carat of brilliant channel set round diamonds in this sleek wedding and engagment set. This stunning set is crafted in gleaming 14 karat white gold.', 1195.0000, N'tWomen_White_1.jpg', N'Women_White_1.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (4, N'Three-Stone Diamond Engagement Ring and Wedding Band ', N'A beautiful expression of your love, this three-stone engagement ring and wedding band set features brilliant round cut diamonds, flanked by delicately placed accent diamonds (1/2 carat, ctw). The look of the set is completed with the crisp glimmer of 14 karat yellow gold.', 895.0000, N'tWomen_Gold_5.jpg', N'Women_Gold_5.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (5, N'Diamond Engagement Ring & Wedding Band Set 1/2 Carat (ctw) in 14K White Gold', N'This beautiful engagement ring set features a delightful 3/8 carat engagement ring matched to a stunning 1/8 carat wedding band. Both are set in crisp 14 karat white gold and offer true quality at an affordable price', 795.0000, N'tWomen_White_3.jpg', N'Women_White_3.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (6, N'Marquise Cut Diamond Engagement Ring & Wedding Band Set 2.0 (ctw) in 14K Yellow Gold ', N'This engagement ring and wedding band set features a brilliant marquise cut diamond set in sparkling 14 karat gold. The central diamond is bordered by delicately sparkling round diamonds for a total carat weight of 2 carats (ctw) to complete the look of this radiant symbol of a lifetime together.', 2995.0000, N'tWomen_Gold_2.jpg', N'Women_Gold_2.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (7, N'Diamond Engagement Ring & Wedding Band Set 1 Carat (ctw) in 14K Yellow Gold ', N'Diamond Engagement Ring & Wedding Band Set 1 Carat (ctw) in 14K Yellow Gold. ', 1195.0000, N'tWomen_Gold_6.jpg', N'Women_Gold_6.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (8, N'Marquise Cut Diamond Engagement Ring & Wedding Band Set 1.0 (ctw) in 14K White Gold ', N'Marquise Cut Diamond Engagement Ring & Wedding Band Set 1.0 (ctw) in 14K White Gold ', 1495.0000, N'tWomen_White_2.jpg', N'Women_White_2.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (9, N'Diamond Marquise Engagement Ring & Wedding Band Set 7/8 Carat (ctw) in 14K Yellow Gold', N'Fit for those extremely extravagant nights out, this special 14 karat yellow gold ring emblazons a sparkling marquise cut diamond as well as a secondary collection of eleven brilliant round diamonds set along the glittering fore front. ', 1395.0000, N'tWomen_Gold_4.jpg', N'Women_Gold_4.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (10, N'Princess Cut Diamond Engagement Ring & Wedding Band Set 1/4 Carat (ctw) in 14K Yellow Gold', N'Princess Cut Diamond Engagement Ring & Wedding Band with very exciting polished finish, 1/4 inches wide and weigh  4.8 grams.', 499.0000, N'tWomen_White_4.jpg', N'Women_White_4.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (11, N'Diamond Engagement Ring and Wedding Band Set 2 Carat (ctw) in 14K Yellow Gold', N'This diamond engagement ring and wedding band set will leave you enticed for an eternity. Forty-one brilliant round channel set quality diamonds dominate the gleaming landscape, while 14 karat yellow gold just adds another dimension to this divinity.', 2495.0000, N'tWomen_Gold_1.jpg', N'Women_Gold_1.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (12, N'Diamond Marquise Engagement Ring & Wedding Band Set 3/4 Carat (ctw) in 14K Yellow Gold', N'A single marquise cut diamond headlines this stellar 14 karat yellow gold ring display that additionally features an underlying row of six crisp diamonds set in an incredible fashion. Total diamond weight here equals 3/4 carat (ctw).', 1495.0000, N'tWomen_Gold_3.jpg', N'Women_Gold_3p.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (13, N'104CT DIAMOND HEART BRIDAL SET ', N'Dazzle your loved one with this ravishing 14 karat white gold engagement ring and matching wedding band set. Multi stone at the center rests flanked by an additional collection of round diamonds, contributing towards a diamond weight of 1.04 carat .', 1499.0000, N'tWomen_White_7.jpg', N'Women_White_7.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (14, N'0.07 CTW ROUND DIAMOND LADIES FASHION HEART RING ', N'Two hearts unite together to form this adorable ring set in 10 karat yellow gold.', 179.0000, N'tWomen_Gold_9.jpg', N'Women_Gold_9.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (15, N'ROUND DIAMOND LADIES HEART FASHION BAND', N'This adorable ring has little hearts going around in 10 karat yellow gold with diamond filled hearts. A perfect promise ring that easily becomes an elegant stackable as your love grows over time .', 149.0000, N'tWomen_Gold_10.jpg', N'Women_Gold_10.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (16, N'14 Karat and 1/2 Carat diamond ring', N'A lifetime of happiness starts with sweet wedding vows. Seal your commitment to him with a 14 Karat and 1/2 Carat diamond  wedding band that is just his style.', 789.0000, N'tWhite_Gold_6.jpg', N'White_Gold_6.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (17, N'0.25CT DIAMOND MENS FASHION BAND', N'Five dazzling diamonds (.51 ctw) sit atop a flattop designed 14k yellow gold men''s ring.', 12.9900, N'tGold_02.jpg', N'Gold_02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (18, N'0.25 CTW ROUND DIAMOND MEN''S BAND', N'A lifetime of happiness starts with sweet wedding vows. Seal your commitment to him with a 10 karat two-tone gold wedding band that is just his style. Emitting pristine brilliance at the center, five round diamonds in an invisible-like setting totaling 1/4 ct. reflect light within the white gold band. Completing the look, warm yellow gold barriers display intriguing contrast along the edging. ', 429.0000, N'tMixed_Gold_4.jpg', N'Mixed_Gold_04.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (19, N'1/2 Carat Total Weight Men''s Diamond Ring ', N'Double display of yellow gold ribbons decorate both sides of the design with a noticeable color contrast and a sleek, polished finish. He''ll feel handsome in this princess cut diamonds totaling 0.50 carats ', 1169.0000, N'tMixed_Gold_3.jpg', N'Mixed_Gold_03.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (20, N'1/2 ctw. Diamond mens Ring ', N'Simple enough to celebrate the love of togetherness in this classic 14 karat white gold band.', 1089.0000, N'tWhite_Gold_05.jpg', N'White_Gold_05.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (21, N'14K 0.25 CTW Comfort Fit Diamond Band', N'This 14K white gold mens diamond wedding band has 0.25 carats of round diamonds.', 1089.0000, N'tMixed_Gold_02.jpg', N'Mixed_Gold_02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (22, N'0.05 CTW Diamond Mens Ring', N'This 14 karat white gold eternity wedding band flaunts an encircling collection of thirty-eight lavish diamonds, adding up to form a total diamond weight 1/2 full carat (ctw). Also available in 14 karat yellow gold.', 209.0000, N'tGold_01.jpg', N'Gold_01.jpg', 1, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (23, N'Anniversary Ring: 1/2 Carat (ctw) in 14K White Gold Eternity Diamond Wedding Band ', N'Great Birthday Balloons. Available in pink or blue. One side says "Happy Birthday To You" and the other side says  "Birthday Girl" on the Pink Balloon and "Birthday Boy" on the Blue Balloon. Especially great for children''s parties.', 495.0000, N'tWhite_Gold01.jpg', N'White_Gold01.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (24, N'Diamond Wedding Band 1/5 Carat (ctw) in 10K White Gold', N'At once timeless and stylish, this men''s diamond wedding band is crafted from icy 10 karat white gold and glimmers with twin rows of brilliant round cut diamonds in a pave setting (1/5 carat, ctw). The perfect way to mark the beginning of a lifetime together. ', 229.0000, N'tWhite_Gold_02.jpg', N'White_Gold_02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (25, N'Men''s Diamond Wedding Band 1 Carat (ctw) in 14K White Gold', N'Handsome and timeless, this men''s wedding band is beautifully crafted in 14 karat white gold and shines with a row of nine brilliant round cut diamonds in a sleek channel setting, for a total carat weight of 1 carat (ctw). The perfect way to mark the beginning of a lifetime together.', 1195.0000, N'tWhite_Gold_03.jpg', N'White_Gold_03.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (26, N'14K Gold Two Tone Men''s Wedding Bands', N'These 14K Gold Two Tone Wedding Bands, White and Yellow Gold, are 5mm wide and 2mm thick. Diamond wedding band. Price is for two wedding bands.', 746.0000, N'tMixed_Gold_5.jpg', N'0Mixed_Gold_5.jpg', 1, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (27, N'14K Two Tone, White and Rose gold,Men''s Wedding Bands ', N'Both wedding bands are 2.00 mm thick, 6mm wide and comfort fit (The inside of the wedding band has a rounded finish that will not pinch the skin of the finger and provides comfort for constant wear, resulting in a secure fit that still slides easily.', 2304.0000, N'tPink_Black_02.jpg', N'Pink_Black_02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (28, N'Men''s 8mm Stainless Steel and Carbon Fiber Wedding Band', N'Stainless steel and sleek carbon fiber rejoice in pure fashion ecstasy in this fabulous mens wedding band that will great on his ring finger. ', 125.0000, N'tWhite_Gold_04.jpg', N'White_Gold_04.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (29, N'Solid 14k Gold Two Tone His&Hers 2132 Diamond Wedding Band', N'These 14K Gold Two Tone Wedding Bands, White and Rose Gold, are 5mm wide and 2mm thick. Diamond wedding band. Price is for two wedding bands.', 768.0000, N'tMixed_Gold_6.jpg', N'Mixed_Gold_6.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (30, N'Mens Diamond Wedding Band 1/4 Carat (ctw) in 10K White Gold', N'This modern men''s wedding band is crafted in icy 10 karat white gold and set with 1/4 carat (ctw) of glimmering round cut diamonds in a channel setting. A stylish and stunning way to mark the beginning of an eternity together.', 625.0000, N'tWhite_Gold_6.jpg', N'WhiteGold_6.jpg', 1, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (31, N'Silver Seasons Earrings', N'Green patinaed bronze boxwood drop earrings with pearls. ', 93.0000, N'earThum01.jpg', N'ear01.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (32, N'Mimi & Marge Earrings', N'Pearl drops with sterling silver twig detail. ', 36.0000, N'earThum02.jpg', N'ear02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (33, N'Silver Seasons Earrings', N'Hand patinaed bronze pea pod stud with freshwater pearls ', 58.0000, N'earThum03.jpg', N'ear03.jpg', 1, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (34, N'Jeanine Payer Earrings', N'Cheyenne" sterling silver teardrops with 18k yellow gold hooks. "All I know of spirit is this love" ', 385.0000, N'earThum04.jpg', N'ear04.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (35, N'TeNo Earrings', N'Dangle orbit stainless steel and white pearl earrings.', 255.0000, N'earThum05.jpg', N'ear05.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (36, N'Holly Yashi Earrings', N'"Amelia". Brown niobium teardrops with gold overlay and chalcedony centre. 1 3/4" long with gold overlay ear hooks. ', 55.0000, N'earThum06.jpg', N'ear06.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (37, N'DIAMOND EARRINGS DE0222', N'Traditional Design, Baguette & Round Diamonds, Studded In 18 kt Yellow Gold.', 800.0000, N'earThum07.jpg', N'ear07.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (38, N'DIAMOND EARRINGS DE0250', N'Three Semi Rings In Silver, Copper & Yellow Colors, Round Diamonds, Studded In 18kt White & Yellow Gold.', 500.0000, N'earThum08.jpg', N'ear08.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (39, N'DIAMOND EARRINGS DE0003', N'Traditional Design, 26 Round Diamonds, Studded In 18kt Yellow Gold.', 999.0000, N'earThum09.jpg', N'ear09.jpg', 1, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (40, N'DIAMOND EARRINGS DE0008', N'Traditional Design, With Beautiful Pearl Round Diamonds, Studded In 18 kt Yellow Gold .', 800.0000, N'earThum10.jpg', N'ear10.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (41, N'DIAMOND EARRINGS DE0011', N'New Fancy Design, Double Polish, Round Diamonds, Studded In 18 kt White & Yellow Gold..', 999.0000, N'earThum11.jpg', N'ear11.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (42, N'DIAMOND EARRINGS DE0174', N'Trendy Design, Round Diamonds, Studded In 18 kt White Gold.', 1500.0000, N'earThum12.jpg', N'ear12.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (43, N'DIAMOND EARRINGS DE0041', N'Elegant Look, Round Diamonds, Studded In 18 kt White Gold.', 789.0000, N'earThum13.jpg', N'ear13.jpg', 1, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (44, N'Jeanine Payer Earrings', N'"Spring" sterling silver drops with 18k yellow gold detailing. "Let there be light" - John Milton .', 320.0000, N'earThum14.jpg', N'ear14.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (45, N'TeNo Earrings', N'Round blue sapphire and stainless steel studs.', 240.0000, N'earThum15.jpg', N'ear15.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (46, N'Real Gold Kundan Necklace Set', N'Very beautiful and Unique 22KT Gold Necklace set with emeralds, green onyx, and kundan.', 6999.9500, N'neckThum01.jpg', N'neck01.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (47, N'Diamond Victorian Pink Set', N'The total diamond weight is 4.1cts and the set sits on a gold and red Austrian crystal chain.', 5995.0000, N'neckThum02.jpg', N'neck02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (48, N'Diamond Victorian Blue Set', N'The total diamond weight is 4.1 cts and the pendent rests on a 16 inch chain of faceted green onyx."', 5995.0000, N'neckThum03.jpg', N'neck03.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (49, N'Diamond Victorian Set 1', N'The total diamond weight is 7.13cts ', 7495.0000, N'neckThum04.jpg', N'neck04.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (50, N'Diamond Victorian Set 2', N'Elegantly hand-crafted pendant and earrings set in a Victorian finish. Along with a Victorian finish, we have introduced an unseen blend of traditional Jaipuri Thewa.!', 3995.0000, N'neckThum04.jpg', N'neck05.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (51, N'Mimi & Marge Necklace 1', N'Sterling silver twig necklace with white pearl pendant. !', 46.0000, N'neckThum06.jpg', N'neck06.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (52, N'Mimi & Marge Necklace 2', N'Sterling silver rose necklace.', 44.0000, N'neckThum07.jpg', N'neck07.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (53, N'Mimi & Marge Necklace 3', N'Multiple dangling brushed seagulls on a silver chain.', 50.0000, N'neckThum08.jpg', N'neck08.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (54, N'Holly Yashi Necklace 1', N'"Gabriela". Sage niobium cutout pendant with amethyst on a chain beaded with bohemian glass. Adjustable 18"-20" in length with a gold-filled clasp.', 95.0000, N'neckThum09.jpg', N'neck09.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (55, N'Holly Yashi Necklace 2', N'"Esmeralda". Niobium and antiqued brass pendant with onyx centre on a chain beaded with European crystal and bohemian glass. Adjustable 20-22" long with a brass clasp.', 125.0000, N'neckThum10.jpg', N'neck10.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (56, N'TeNo Necklace', N'Single white pearl set in cutout marquis.', 169.0000, N'neckThum11.jpg', N'neck11.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (57, N'Silver Seasons Necklace 1', N'Hand patinaed bronze boxwood cluster on chain with freshwater pearls .', 73.0000, N'neckThum12.jpg', N'neck12.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (58, N'Jeanine Payer Necklace', N'"Vineet" sterling silver and 18k yellow gold ladybug pendant. "A friendly thought is the purest gift" - Thomas Carlyle .', 420.0000, N'neckThum13.jpg', N'neck13.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (59, N'Mimi & Marge Necklace', N'Small sterling silver angel wing on oxidized chain.', 48.0000, N'neckThum14.jpg', N'neck14.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (60, N'Silver Seasons Necklace 2', N'Green patinaed bronze 5 freshwater pearl pea pod on chain. .', 93.0000, N'neckThum15.jpg', N'neck15.jpg', 0, 1)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (61, N'Men''s White Dial  Watch', N'Stainless Steel Case and Caseback. Leather Band. Hardened Mineral Crystal. Silver-Tone Hands & Markers', 112.0000, N'watchThum01.jpg', N'watch01.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (62, N'Men''s White Dial watch With Date', N'Brushed Stainless Steel Case, Caseback& Band • Safety Buckle • Hardened Mineral Crystal • Silver-Tone Hands With Luminous Tips • Arabic Numerals • 12-Hour Chronograph.', 67.2000, N'watchThum02.jpg', N'watch02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (63, N'Men''s Black Dial Watch With Date', N'• Brushed Stainless Steel Case, Caseback& Band • Safety Buckle• Hardened Mineral Crystal • Silver-Tone Hands With Luminous Tips • Arabic Numerals', 67.2000, N'watchThum03.jpg', N'watch03.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (64, N'0.5 microns 14K gold-plated stainless steel case and band watch ', N'. 0.5 microns 14K gold-plated stainless steel case and band . Stainless steel cash back . Black dial with date. Mineral Crystal . Screw down crown . Screw back . Gold-tone hands and markers.', 121.3000, N'watchThum04.jpg', N'watch04.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (65, N'0.5 microns 14K gold-plated two-tone stainless steel case and band.', N'. Stainless steel caseback . Black dial with date . Mineral Crystal . Screw down crown . Screwback . Gold-tone hands and markers', 162.4600, N'watchThum05.jpg', N'watch05.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (66, N'Men''s Stainless steel case and caseback Watch', N'Genuine calf leather band with carbon fiber finish . Black carbon fiber dial . Mineral Crystal . Chrome hands . Arabic numerals. Water resistance tested to 3 ATM.Japanese movement .', 147.9800, N'watchThum06.jpg', N'watch06.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (67, N'Men''s Stainless steel case, caseback& band Watch', N'Black ceramic dial with date . Mineral Crystal . Screwback . Luminous hands and markers . Water resistance tested to 5 ATM', 201.8000, N'watchThum07.jpg', N'watch07.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (68, N'Men''s  Black-silver dial Stainless steel case and caseback', N'. Leather band . Silver-tone hands and markers. mineral Crystal. . Dual time . Japanese movement.. Water resistance tested to 3 ATM', 153.1800, N'watchThum08.jpg', N'watch08.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (69, N'Men''s Stainless steel case and caseback Off-white dial  Watch', N'. Leather band  . Luminous hands and markers . Red pointer hand points to date . 24-hour sun and moon . 21 jewel Chinese movement', 201.8000, N'watchThum09.jpg', N'watch09.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (70, N'Men''s Stainless steel case and cash back Mineral Crystal Watch', N'Leather band . Off-white dial .  Gold-tone hands . Roman numerals . Super slim . Japanese movement.', 97.4800, N'watchThum10.jpg', N'watch10.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (71, N'Men''s Stainless steel case and cash back Genuine crocodile leather band  Watch', N'Mineral Crystal . Gold-tone hands . See-through 18 jewel Chinese skeleton movement . Water resistance tested to 3 ATM', 246.0000, N'watchThum11.jpg', N'watch11.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (72, N'Men''sStainless Steel case and caseback  Genuine ostrich leather band watch', N'Black dial with date . Chrome hands & Roman numerals . Features: large date, 24-hour sun and moon dial . 17 jewel Chinese movement . Water resistance tested to 3 ATM.', 228.7000, N'watchThum12.jpg', N'watch12.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (73, N'Men''s Stainless steel case &caseback Genuine calf leather band  Watch', N'. Mineral Crystal . Silver-tone hands and markers . Dual Time . Japanese movement . Water resistance tested to 3 ATM', 116.0400, N'watchThum13.jpg', N'watch13.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (74, N'Men''s Stainless steel case and caseback Genuine crocodile leather band Gold-tone ', N'Gold-tone hands . White dial . See-through 18 jewel Chinese skeleton movement . Water resistance tested to 3 ATM.', 246.0000, N'watchThum14.jpg', N'watch14.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (75, N'Men''s Stainless steel case and caseback Beige dial  Watch', N'Genuine calf leather band . Beige dial with date . Mineral Crystal . Luminous hands and markers . Arabic numerals . Japanese movement . Water resistance tested to 3 ATM', 190.3000, N'watchThum15.jpg', N'watch15.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (76, N'Men''s STAINLESS STEEL necklace', N'18" Polished  Leather cord Lobster clasp .', 33.8800, N'chainThum01.jpg', N'chain01.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (77, N'Men''s Hook clasp Moveable Crystal  Watch', N'Hook clasp Moveable Crystal  Watch', 37.3500, N'chainThum02.jpg', N'chain02.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (78, N'Men''s STAINLESS STEEL  Fancy lobster chain', N'0.21g 24''Polished Fancy lobster.', 38.0000, N'chainThum03.jpg', N'chain03.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (79, N'Men''s STAINLESS STEEL Antique finish ', N'0.20g Lobster clasp Antique finish Polished', 80.0000, N'chainThum04.jpg', N'chain04.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (80, N'Men''s STAINLESS STEEL  Cubic Zirconiae', N'0.21g  24'' Polished Fancy lobster Cubic Zirconia.', 38.0000, N'chainThum05.jpg', N'chain05.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (81, N'Men''s STAINLESS STEEL Hidden Chain ', N'0.20g 24'' Polished Hidden catch ', 34.0000, N'chainThum06.jpg', N'chain06.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (82, N'Men''s Crystal Gold-tone chain ', N'Crystal Gold-tone.', 29.3400, N'chainThum07.jpg', N'chain07.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (83, N'Men''s Crystal Hook clasp Silver-tone Gold-tone chain', N'Crystal Hook clasp Silver-tone Gold-tone Moveable', 37.3500, N'chainThum08.jpg', N'chain08.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (84, N'Men''s STAINLESS STEEL Size: 24'' Diamond  Fancy lobster  Brushed', N'24'' Diamond  Fancy lobster  Brushed  0.015 K.', 107.7000, N'chainThum09.jpg', N'chain09.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (85, N'Men''s STAINLESS STEEL Rubber Enamel chain', N'Rubber Enamel 22'' Polished Fancy lobster', 158.7400, N'chainThum10.jpg', N'chain10.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (86, N'Men''s STAINLESS STEEL Textured Hidden catch', N'STAINLESS STEEL Textured Hidden catch  22'' Polished.', 137.0800, N'chainThum11.jpg', N'chain11.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (87, N'Men''s STAINLESS STEEL Polished  Fancy lobster', N'STAINLESS STEEL Polished  Fancy lobster 18', 43.9400, N'chainThum12.jpg', N'chain12.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (88, N'Men''s STAINLESS STEEL 24'' Polished chain', N'STAINLESS STEEL 24'' Polished Fancy lobster.', 112.8800, N'chainThum13.jpg', N'chain13.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (89, N'Men''s STAINLESS STEEL  24'' Fancy lobster  Polished silver', N'STAINLESS STEEL  24'' Fancy lobster  Polished silver ', 199.2200, N'chainThum14.jpg', N'chain14.jpg', 0, 0)
INSERT [dbo].[Product] ([ProductID], [Name], [Description], [Price], [Thumbnail], [Image], [PromoFront], [PromoDept]) VALUES (90, N'Men''s STAINLESS STEEL 20" Polished Lobster silver', N'STAINLESS STEEL 20" Polished Lobster silver.', 146.7200, N'chainThum15.jpg', N'chain15.jpg', 0, 0)
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Orders]    Script Date: 12/13/2010 14:32:14 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[OrderID] [int] IDENTITY(1,1) NOT NULL,
	[DateCreated] [smalldatetime] NOT NULL,
	[DateShipped] [smalldatetime] NULL,
	[Verified] [bit] NOT NULL,
	[Completed] [bit] NOT NULL,
	[Canceled] [bit] NOT NULL,
	[Comments] [nvarchar](1000) NULL,
	[CustomerName] [nvarchar](50) NULL,
	[CustomerEmail] [nvarchar](50) NULL,
	[ShippingAddress] [nvarchar](500) NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[SearchCatalog]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SearchCatalog] 
(@DescriptionLength INT,
 @PageNumber TINYINT,
 @ProductsPerPage TINYINT,
 @HowManyResults INT OUTPUT,
 @AllWords BIT,
 @Word1 NVARCHAR(15) = NULL,
 @Word2 NVARCHAR(15) = NULL,
 @Word3 NVARCHAR(15) = NULL,
 @Word4 NVARCHAR(15) = NULL,
 @Word5 NVARCHAR(15) = NULL)
AS

/* @NecessaryMatches needs to be 1 for any-word searches and
   the number of words for all-words searches */
DECLARE @NecessaryMatches INT
SET @NecessaryMatches = 1
IF @AllWords = 1 
  SET @NecessaryMatches =
    CASE WHEN @Word1 IS NULL THEN 0 ELSE 1 END + 
    CASE WHEN @Word2 IS NULL THEN 0 ELSE 1 END + 
    CASE WHEN @Word3 IS NULL THEN 0 ELSE 1 END +
    CASE WHEN @Word4 IS NULL THEN 0 ELSE 1 END +
    CASE WHEN @Word5 IS NULL THEN 0 ELSE 1 END;

/* Create the table variable that will contain the search results */
DECLARE @Matches TABLE
([Key] INT NOT NULL,
 Rank INT NOT NULL)

-- Save matches for the first word
IF @Word1 IS NOT NULL
  INSERT INTO @Matches
  EXEC SearchWord @Word1

-- Save the matches for the second word
IF @Word2 IS NOT NULL
  INSERT INTO @Matches
  EXEC SearchWord @Word2

-- Save the matches for the third word
IF @Word3 IS NOT NULL
  INSERT INTO @Matches
  EXEC SearchWord @Word3

-- Save the matches for the fourth word
IF @Word4 IS NOT NULL
  INSERT INTO @Matches
  EXEC SearchWord @Word4

-- Save the matches for the fifth word
IF @Word5 IS NOT NULL
  INSERT INTO @Matches
  EXEC SearchWord @Word5

-- Calculate the IDs of the matching products
DECLARE @Results TABLE
(RowNumber INT,
 [KEY] INT NOT NULL,
 Rank INT NOT NULL)

-- Obtain the matching products 
INSERT INTO @Results
SELECT ROW_NUMBER() OVER (ORDER BY COUNT(M.Rank) DESC),
       M.[KEY], SUM(M.Rank) AS TotalRank
FROM @Matches M
GROUP BY M.[KEY]
HAVING COUNT(M.Rank) >= @NecessaryMatches

-- return the total number of results using an OUTPUT variable
SELECT @HowManyResults = COUNT(*) FROM @Results

-- populate the table variable with the complete list of products
SELECT Product.ProductID, Name,
       CASE WHEN LEN(Description) <= @DescriptionLength THEN Description 
            ELSE SUBSTRING(Description, 1, @DescriptionLength) + '...' END 
       AS Description, Price, Thumbnail, Image, PromoFront, PromoDept 
FROM Product 
INNER JOIN @Results R
ON Product.ProductID = R.[KEY]
WHERE R.RowNumber > (@PageNumber - 1) * @ProductsPerPage
  AND R.RowNumber <= @PageNumber * @ProductsPerPage
ORDER BY R.Rank DESC
GO
/****** Object:  Table [dbo].[ShoppingCart]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ShoppingCart](
	[CartID] [char](36) NOT NULL,
	[ProductID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Attributes] [nvarchar](1000) NULL,
	[DateAdded] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_ShoppingCart] PRIMARY KEY CLUSTERED 
(
	[CartID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[OrderUpdate]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderUpdate]
(@OrderID INT,
 @DateCreated SMALLDATETIME,
 @DateShipped SMALLDATETIME = NULL,
 @Verified BIT,
 @Completed BIT,
 @Canceled BIT,
 @Comments VARCHAR(200),
 @CustomerName VARCHAR(50),
 @ShippingAddress VARCHAR(200),
 @CustomerEmail VARCHAR(50))
AS
UPDATE Orders
SET DateCreated=@DateCreated,
    DateShipped=@DateShipped,
    Verified=@Verified,
    Completed=@Completed,
    Canceled=@Canceled,
    Comments=@Comments,
    CustomerName=@CustomerName,
    ShippingAddress=@ShippingAddress,
    CustomerEmail=@CustomerEmail
WHERE OrderID = @OrderID
GO
/****** Object:  StoredProcedure [dbo].[OrdersGetVerifiedUncompleted]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrdersGetVerifiedUncompleted]
AS
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
WHERE Verified=1 AND Completed=0
ORDER BY DateCreated DESC
GO
/****** Object:  StoredProcedure [dbo].[OrdersGetUnverifiedUncanceled]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrdersGetUnverifiedUncanceled]
AS
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
WHERE Verified=0 AND Canceled=0
ORDER BY DateCreated DESC
GO
/****** Object:  StoredProcedure [dbo].[OrdersGetByRecent]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrdersGetByRecent] 
(@Count smallINT)
AS
-- Set the number of rows to be returned
SET ROWCOUNT @Count
-- Get list of orders
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
ORDER BY DateCreated DESC
-- Reset rowcount value
SET ROWCOUNT 0
GO
/****** Object:  StoredProcedure [dbo].[OrdersGetByDate]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrdersGetByDate] 
(@StartDate SMALLDATETIME,
 @EndDate SMALLDATETIME)
AS
SELECT OrderID, DateCreated, DateShipped, 
       Verified, Completed, Canceled, CustomerName
FROM Orders
WHERE DateCreated BETWEEN @StartDate AND @EndDate
ORDER BY DateCreated DESC
GO
/****** Object:  StoredProcedure [dbo].[OrderMarkVerified]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderMarkVerified]
(@OrderID INT)
AS
UPDATE Orders
SET Verified = 1
WHERE OrderID = @OrderID
GO
/****** Object:  StoredProcedure [dbo].[OrderMarkCompleted]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderMarkCompleted]
(@OrderID INT)
AS
UPDATE Orders
SET Completed = 1,
    DateShipped = GETDATE()
WHERE OrderID = @OrderID
GO
/****** Object:  StoredProcedure [dbo].[OrderMarkCanceled]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderMarkCanceled]
(@OrderID INT)
AS
UPDATE Orders
SET Canceled = 1
WHERE OrderID = @OrderID
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[DepartmentID] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Category_1] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON
INSERT [dbo].[Category] ([CategoryID], [DepartmentID], [Name], [Description]) VALUES (1, 1, N'Men Rings', N'This collection contains both casual mens ring and wedding band.')
INSERT [dbo].[Category] ([CategoryID], [DepartmentID], [Name], [Description]) VALUES (2, 2, N'Women Rings', N'This collection contains both casual women ring and wedding band.')
INSERT [dbo].[Category] ([CategoryID], [DepartmentID], [Name], [Description]) VALUES (3, 1, N'Men watches', N'This collection contains both casual and exquisite mens watches.')
INSERT [dbo].[Category] ([CategoryID], [DepartmentID], [Name], [Description]) VALUES (4, 2, N'Women Necklaces', N'This collection contains both casual and exquisite mens watches.')
INSERT [dbo].[Category] ([CategoryID], [DepartmentID], [Name], [Description]) VALUES (5, 2, N'Women Earings', N'This collection contains exquisite women chains for everyday wear.')
INSERT [dbo].[Category] ([CategoryID], [DepartmentID], [Name], [Description]) VALUES (6, 1, N'Men Chain', N'This collection contains exquisite men chains for everyday wear.')
SET IDENTITY_INSERT [dbo].[Category] OFF
/****** Object:  StoredProcedure [dbo].[CatalogUpdateProduct]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogUpdateProduct]
(@ProductID INT,
 @ProductName VARCHAR(50),
 @ProductDescription VARCHAR(5000),
 @Price MONEY,
 @Thumbnail VARCHAR(50),
 @Image VARCHAR(50),
 @PromoFront BIT,
 @PromoDept BIT)
AS
UPDATE Product
SET Name = @ProductName,
    Description = @ProductDescription,
    Price = @Price,
    Thumbnail = @Thumbnail,
    Image = @Image,
    PromoFront = @PromoFront,
    PromoDept = @PromoDept
WHERE ProductID = @ProductID
GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[OrderID] [int] NOT NULL,
	[ProductID] [int] NOT NULL,
	[ProductName] [nvarchar](50) NOT NULL,
	[Quantity] [int] NOT NULL,
	[UnitCost] [money] NOT NULL,
	[Subtotal]  AS ([Quantity]*[UnitCost]),
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC,
	[ProductID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetProductDetails]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetProductDetails]
(@ProductID INT)
AS
SELECT Name, Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM Product
WHERE ProductID = @ProductID
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetProductsOnFrontPromo]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetProductsOnFrontPromo]
(@DescriptionLength INT,
@PageNumber INT,
@ProductsPerPage INT,
@HowManyProducts INT OUTPUT)
AS

-- declare a new TABLE variable
DECLARE @Products TABLE
(RowNumber INT,
 ProductID INT,
 Name NVARCHAR(50),
 Description NVARCHAR(MAX),
 Price MONEY,
 Thumbnail NVARCHAR(50),
 Image NVARCHAR(50),
 PromoFront bit,
 PromoDept bit)


-- populate the table variable with the complete list of products
INSERT INTO @Products
SELECT ROW_NUMBER() OVER (ORDER BY Product.ProductID),
       ProductID, Name,
       CASE WHEN LEN(Description) <= @DescriptionLength THEN Description 
            ELSE SUBSTRING(Description, 1, @DescriptionLength) + '...' END 
       AS Description, Price, Thumbnail, Image, PromoFront, PromoDept
FROM Product
WHERE PromoFront = 1

-- return the total number of products using an OUTPUT variable
SELECT @HowManyProducts = COUNT(ProductID) FROM @Products

-- extract the requested page of products
SELECT ProductID, Name, Description, Price, Thumbnail,
       Image, PromoFront, PromoDept
FROM @Products
WHERE RowNumber > (@PageNumber - 1) * @ProductsPerPage
  AND RowNumber <= @PageNumber * @ProductsPerPage
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetDepartments]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetDepartments] AS
SELECT DepartmentID, Name, Description
FROM Department
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetDepartmentDetails]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetDepartmentDetails]
(@DepartmentID INT)
AS
SELECT Name, Description
FROM Department
WHERE DepartmentID = @DepartmentID
GO
/****** Object:  Table [dbo].[AttributeValue]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AttributeValue](
	[AttributeValueID] [int] IDENTITY(1,1) NOT NULL,
	[AttributeID] [int] NOT NULL,
	[Value] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AttributeValueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AttributeValue] ON
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (1, 1, N'White')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (2, 1, N'Black')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (3, 1, N'Red')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (4, 1, N'Orange')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (5, 1, N'Yellow')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (6, 1, N'Green')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (7, 1, N'Blue')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (8, 1, N'Indigo')
INSERT [dbo].[AttributeValue] ([AttributeValueID], [AttributeID], [Value]) VALUES (9, 1, N'Purple')
SET IDENTITY_INSERT [dbo].[AttributeValue] OFF
/****** Object:  StoredProcedure [dbo].[CatalogGetCategoriesInDepartment]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--missing procedures from 05-07


CREATE PROCEDURE [dbo].[CatalogGetCategoriesInDepartment]
(@DepartmentID INT)
AS
SELECT CategoryID, Name, Description
FROM Category
WHERE DepartmentID = @DepartmentID
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetCategoryDetails]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetCategoryDetails]
(@CategoryID INT)
AS
SELECT DepartmentID, Name, Description
FROM Category
WHERE CategoryID = @CategoryID
GO
/****** Object:  StoredProcedure [dbo].[CreateOrder]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CreateOrder] 
(@CartID char(36))
AS
/* Insert a new record INTo Orders */
DECLARE @OrderID INT
INSERT INTO Orders DEFAULT VALUES
/* Save the new Order ID */
SET @OrderID = @@IDENTITY
/* Add the order details to OrderDetail */
INSERT INTO OrderDetail 
     (OrderID, ProductID, ProductName, Quantity, UnitCost)
SELECT 
     @OrderID, Product.ProductID, Product.Name, 
     ShoppingCart.Quantity, Product.Price
FROM Product JOIN ShoppingCart
ON Product.ProductID = ShoppingCart.ProductID
WHERE ShoppingCart.CartID = @CartID
/* Clear the shopping cart */
DELETE FROM ShoppingCart
WHERE CartID = @CartID
/* Return the Order ID */
SELECT @OrderID
GO
/****** Object:  StoredProcedure [dbo].[OrderGetInfo]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderGetInfo]
(@OrderID INT)
AS
SELECT OrderID, 
      (SELECT ISNULL(SUM(Subtotal), 0) FROM OrderDetail WHERE OrderID = @OrderID)        
       AS TotalAmount, 
       DateCreated, 
       DateShipped, 
       Verified, 
       Completed, 
       Canceled, 
       Comments, 
       CustomerName, 
       ShippingAddress, 
       CustomerEmail
FROM Orders
WHERE OrderID = @OrderID
GO
/****** Object:  StoredProcedure [dbo].[OrderGetDetails]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[OrderGetDetails]
(@OrderID INT)
AS
SELECT Orders.OrderID, 
       ProductID, 
       ProductName, 
       Quantity, 
       UnitCost, 
       Subtotal
FROM OrderDetail JOIN Orders
ON Orders.OrderID = OrderDetail.OrderID
WHERE Orders.OrderID = @OrderID
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartRemoveItem]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShoppingCartRemoveItem]
(@CartID char(36),
 @ProductID int)
AS
DELETE FROM ShoppingCart
WHERE CartID = @CartID and ProductID = @ProductID
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartGetTotalAmount]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShoppingCartGetTotalAmount]
(@CartID char(36))
AS
SELECT ISNULL(SUM(Product.Price * ShoppingCart.Quantity), 0)
FROM ShoppingCart INNER JOIN Product
ON ShoppingCart.ProductID = Product.ProductID
WHERE ShoppingCart.CartID = @CartID
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartGetItems]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShoppingCartGetItems]
(@CartID char(36))
AS
SELECT Product.ProductID, Product.Name, ShoppingCart.Attributes, Product.Price, ShoppingCart.Quantity,Product.Price * ShoppingCart.Quantity AS Subtotal
FROM ShoppingCart INNER JOIN Product
ON ShoppingCart.ProductID = Product.ProductID
WHERE ShoppingCart.CartID = @CartID
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartDeleteOldCarts]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShoppingCartDeleteOldCarts]
(@Days smallint)
AS
DELETE FROM ShoppingCart
WHERE CartID IN
(SELECT CartID
FROM ShoppingCart
GROUP BY CartID
HAVING MIN(DATEDIFF(dd,DateAdded,GETDATE())) >= @Days)
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartCountOldCarts]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ShoppingCartCountOldCarts]
(@Days smallint)
AS
SELECT COUNT(CartID)
FROM ShoppingCart
WHERE CartID IN
(SELECT CartID
FROM ShoppingCart
GROUP BY CartID
HAVING MIN(DATEDIFF(dd,DateAdded,GETDATE())) >= @Days)
GO
/****** Object:  StoredProcedure [dbo].[ShoppingCartAddItem]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[ShoppingCartAddItem]
(@CartID char(36),
 @ProductID int,
 @Attributes nvarchar(1000))
AS
IF EXISTS
        (SELECT CartID
         FROM ShoppingCart
         WHERE ProductID = @ProductID AND CartID = @CartID)
    UPDATE ShoppingCart
    SET Quantity = Quantity + 1
    WHERE ProductID = @ProductID AND CartID = @CartID
ELSE
    IF EXISTS (SELECT Name FROM Product WHERE ProductID=@ProductID)
        INSERT INTO ShoppingCart (CartID, ProductID, Attributes, Quantity, DateAdded)
        VALUES (@CartID, @ProductID, @Attributes, 1, GETDATE())
GO
/****** Object:  Table [dbo].[ProductCategory]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductCategory](
	[ProductID] [int] NOT NULL,
	[CategoryID] [int] NOT NULL,
 CONSTRAINT [PK_ProductCategory] PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[CategoryID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (1, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (2, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (3, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (4, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (5, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (6, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (7, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (8, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (9, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (10, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (11, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (12, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (13, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (14, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (15, 2)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (16, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (17, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (18, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (19, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (20, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (21, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (22, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (23, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (24, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (25, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (26, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (27, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (28, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (29, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (30, 1)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (31, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (32, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (33, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (34, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (35, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (36, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (37, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (38, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (39, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (40, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (41, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (42, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (43, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (44, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (45, 5)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (46, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (47, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (48, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (49, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (50, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (51, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (52, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (53, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (54, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (55, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (56, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (57, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (58, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (59, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (60, 4)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (61, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (62, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (63, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (64, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (65, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (66, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (67, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (68, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (69, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (70, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (71, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (72, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (73, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (74, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (75, 3)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (76, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (77, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (78, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (79, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (80, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (81, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (82, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (83, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (84, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (85, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (86, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (87, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (88, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (89, 6)
INSERT [dbo].[ProductCategory] ([ProductID], [CategoryID]) VALUES (90, 6)
/****** Object:  Table [dbo].[ProductAttributeValue]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductAttributeValue](
	[ProductID] [int] NOT NULL,
	[AttributeValueID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ProductID] ASC,
	[AttributeValueID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (1, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (2, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (3, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (4, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (5, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (6, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (7, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (8, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (9, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (10, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (11, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 2)
GO
print 'Processed 100 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (12, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (13, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (14, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (15, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (16, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (17, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (18, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (19, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (20, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (21, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (22, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 4)
GO
print 'Processed 200 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (23, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (24, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (25, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (26, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (27, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (28, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (29, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (30, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (31, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (32, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (33, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 6)
GO
print 'Processed 300 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (34, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (35, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (36, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (37, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (38, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (39, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (40, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (41, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (42, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (43, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (44, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 8)
GO
print 'Processed 400 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (45, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (46, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (47, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (48, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (49, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (50, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (51, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (52, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (53, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (54, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (55, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (56, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 1)
GO
print 'Processed 500 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (57, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (58, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (59, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (60, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (61, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (62, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (63, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (64, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (65, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (66, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (67, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 3)
GO
print 'Processed 600 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (68, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (69, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (70, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (71, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (72, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (73, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (74, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (75, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (76, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (77, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (78, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 5)
GO
print 'Processed 700 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (79, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (80, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (81, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (82, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (83, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (84, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (85, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (86, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (87, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (88, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 7)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (89, 9)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 1)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 2)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 3)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 4)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 5)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 6)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 7)
GO
print 'Processed 800 total records'
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 8)
INSERT [dbo].[ProductAttributeValue] ([ProductID], [AttributeValueID]) VALUES (90, 9)
/****** Object:  StoredProcedure [dbo].[ShoppingCartUpdateItem]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[ShoppingCartUpdateItem]
(@CartID char(36),
 @ProductID int,
 @Quantity int)
AS
IF @Quantity <= 0
  EXEC ShoppingCartRemoveItem @CartID, @ProductID
ELSE
  UPDATE ShoppingCart
  SET Quantity = @Quantity, DateAdded = GETDATE()
  WHERE ProductID = @ProductID AND CartID = @CartID
GO
/****** Object:  View [dbo].[ProdInCat]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ProdInCat]
AS
SELECT     dbo.Product.ProductID, dbo.Product.Name, dbo.Product.Description, dbo.Product.Price, dbo.Product.Thumbnail, dbo.ProductCategory.CategoryID
FROM         dbo.Product INNER JOIN
                      dbo.ProductCategory ON dbo.Product.ProductID = dbo.ProductCategory.ProductID
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[41] 4[26] 2[15] 3) )"
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
         Begin Table = "Product"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 213
               Right = 198
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "ProductCategory"
            Begin Extent = 
               Top = 34
               Left = 300
               Bottom = 144
               Right = 460
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
         Table = 1575
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
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProdInCat'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ProdInCat'
GO
/****** Object:  StoredProcedure [dbo].[CatalogRemoveProductFromCategory]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogRemoveProductFromCategory]
(@ProductID int, @CategoryID int)
AS
DELETE FROM ProductCategory
WHERE CategoryID = @CategoryID AND ProductID = @ProductID
GO
/****** Object:  StoredProcedure [dbo].[CatalogMoveProductToCategory]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogMoveProductToCategory]
(@ProductID int, @OldCategoryID int, @NewCategoryID int)
AS
UPDATE ProductCategory
SET CategoryID = @NewCategoryID
WHERE CategoryID = @OldCategoryID
  AND ProductID = @ProductID
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetProductsOnDeptPromo]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetProductsOnDeptPromo]
(@DepartmentID INT,
@DescriptionLength INT,
@PageNumber INT,
@ProductsPerPage INT,
@HowManyProducts INT OUTPUT)
AS

-- declare a new TABLE variable
DECLARE @Products TABLE
(RowNumber INT,
 ProductID INT,
 Name NVARCHAR(50),
 Description NVARCHAR(MAX),
 Price MONEY,
 Thumbnail NVARCHAR(50),
 Image NVARCHAR(50),
 PromoFront bit,
 PromoDept bit)

-- populate the table variable with the complete list of products
INSERT INTO @Products
SELECT ROW_NUMBER() OVER (ORDER BY ProductID) AS Row,
       ProductID, Name, SUBSTRING(Description, 1, @DescriptionLength)
+ '...' AS Description,
       Price, Thumbnail, Image, PromoFront, PromoDept
FROM
(SELECT DISTINCT Product.ProductID, Product.Name,
       CASE WHEN LEN(Product.Description) <= @DescriptionLength 
            THEN Product.Description 
            ELSE SUBSTRING(Product.Description, 1, @DescriptionLength) + '...' END 
       AS Description, Price, Thumbnail, Image, PromoFront, PromoDept 
  FROM Product INNER JOIN ProductCategory
                      ON Product.ProductID = ProductCategory.ProductID
              INNER JOIN Category
                      ON ProductCategory.CategoryID = Category.CategoryID
  WHERE Product.PromoDept = 1
   AND Category.DepartmentID = @DepartmentID
) AS ProductOnDepPr

-- return the total number of products using an OUTPUT variable
SELECT @HowManyProducts = COUNT(ProductID) FROM @Products

-- extract the requested page of products
SELECT ProductID, Name, Description, Price, Thumbnail,
       Image, PromoFront, PromoDept
FROM @Products
WHERE RowNumber > (@PageNumber - 1) * @ProductsPerPage
  AND RowNumber <= @PageNumber * @ProductsPerPage
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetProductsInCategory]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetProductsInCategory]
(@CategoryID INT,
@DescriptionLength INT,
@PageNumber INT,
@ProductsPerPage INT,
@HowManyProducts INT OUTPUT)
AS

-- declare a new TABLE variable
DECLARE @Products TABLE
(RowNumber INT,
 ProductID INT,
 Name NVARCHAR(50),
 Description NVARCHAR(MAX),
 Price MONEY,
 Thumbnail NVARCHAR(50),
 Image NVARCHAR(50),
 PromoFront bit,
 PromoDept bit)


-- populate the table variable with the complete list of products
INSERT INTO @Products
SELECT ROW_NUMBER() OVER (ORDER BY Product.ProductID),
       Product.ProductID, Name,
       CASE WHEN LEN(Description) <= @DescriptionLength THEN Description 
            ELSE SUBSTRING(Description, 1, @DescriptionLength) + '...' END 
       AS Description, Price, Thumbnail, Image, PromoFront, PromoDept 
FROM Product INNER JOIN ProductCategory
  ON Product.ProductID = ProductCategory.ProductID
WHERE ProductCategory.CategoryID = @CategoryID

-- return the total number of products using an OUTPUT variable
SELECT @HowManyProducts = COUNT(ProductID) FROM @Products

-- extract the requested page of products
SELECT ProductID, Name, Description, Price, Thumbnail,
       Image, PromoFront, PromoDept
FROM @Products
WHERE RowNumber > (@PageNumber - 1) * @ProductsPerPage
  AND RowNumber <= @PageNumber * @ProductsPerPage
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetProductAttributeValues]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- Create CatalogGetProductAttributeValues stored procedure
CREATE PROCEDURE [dbo].[CatalogGetProductAttributeValues]
(@ProductId INT)
AS
SELECT a.Name AS AttributeName,
       av.AttributeValueID, 
       av.Value AS AttributeValue
FROM AttributeValue av
INNER JOIN attribute a ON av.AttributeID = a.AttributeID
WHERE av.AttributeValueID IN
  (SELECT AttributeValueID
   FROM ProductAttributeValue
   WHERE ProductID = @ProductID)
ORDER BY a.Name;
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetCategoriesWithProduct]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetCategoriesWithProduct]
(@ProductID int)
AS
SELECT Category.CategoryID, Name
FROM Category INNER JOIN ProductCategory
ON Category.CategoryID = ProductCategory.CategoryID
WHERE ProductCategory.ProductID = @ProductID
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetCategoriesWithoutProduct]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetCategoriesWithoutProduct]
(@ProductID int)
AS
SELECT CategoryID, Name
FROM Category
WHERE CategoryID NOT IN
   (SELECT Category.CategoryID
    FROM Category INNER JOIN ProductCategory
    ON Category.CategoryID = ProductCategory.CategoryID
    WHERE ProductCategory.ProductID = @ProductID)
GO
/****** Object:  StoredProcedure [dbo].[CatalogGetAllProductsInCategory]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogGetAllProductsInCategory]
(@CategoryID INT)
AS
SELECT Product.ProductID, Name, Description, Price, Thumbnail, 
       Image, PromoDept, PromoFront
FROM Product INNER JOIN ProductCategory
  ON Product.ProductID = ProductCategory.ProductID
WHERE ProductCategory.CategoryID = @CategoryID
GO
/****** Object:  StoredProcedure [dbo].[CatalogDeleteProduct]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogDeleteProduct]
(@ProductID int)
AS
DELETE FROM ShoppingCart WHERE ProductID=@ProductID
DELETE FROM ProductCategory WHERE ProductID=@ProductID
DELETE FROM Product where ProductID=@ProductID
GO
/****** Object:  StoredProcedure [dbo].[CatalogCreateProduct]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogCreateProduct]
(@CategoryID INT,
 @ProductName NVARCHAR(50),
 @ProductDescription NVARCHAR(MAX),
 @Price MONEY,
 @Thumbnail NVARCHAR(50),
 @Image NVARCHAR(50),
 @PromoFront BIT,
 @PromoDept BIT)
AS
-- Declare a variable to hold the generated product ID
DECLARE @ProductID int
-- Create the new product entry

INSERT INTO Product 
    (Name, 
     Description, 
     Price, 
     Thumbnail, 
     Image,
     PromoFront, 
     PromoDept)
VALUES 
    (@ProductName, 
     @ProductDescription, 
     @Price, 
     @Thumbnail, 
     @Image,
     @PromoFront, 
     @PromoDept)
-- Save the generated product ID to a variable
SELECT @ProductID = @@Identity
-- Associate the product with a category
INSERT INTO ProductCategory (ProductID, CategoryID)
VALUES (@ProductID, @CategoryID)
GO
/****** Object:  StoredProcedure [dbo].[CatalogAssignProductToCategory]    Script Date: 12/13/2010 14:32:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[CatalogAssignProductToCategory]
(@ProductID int, @CategoryID int)
AS
INSERT INTO ProductCategory (ProductID, CategoryID)
VALUES (@ProductID, @CategoryID)
GO
/****** Object:  Default [DF_Orders_DateCreated]    Script Date: 12/13/2010 14:32:14 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_DateCreated]  DEFAULT (getdate()) FOR [DateCreated]
GO
/****** Object:  Default [DF_Orders_Verified]    Script Date: 12/13/2010 14:32:14 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Verified]  DEFAULT ((0)) FOR [Verified]
GO
/****** Object:  Default [DF_Orders_Completed]    Script Date: 12/13/2010 14:32:14 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Completed]  DEFAULT ((0)) FOR [Completed]
GO
/****** Object:  Default [DF_Orders_Canceled]    Script Date: 12/13/2010 14:32:14 ******/
ALTER TABLE [dbo].[Orders] ADD  CONSTRAINT [DF_Orders_Canceled]  DEFAULT ((0)) FOR [Canceled]
GO
/****** Object:  ForeignKey [FK_ShoppingCart_Product]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[ShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_ShoppingCart_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ShoppingCart] CHECK CONSTRAINT [FK_ShoppingCart_Product]
GO
/****** Object:  ForeignKey [FK_Category_Department]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Department] FOREIGN KEY([DepartmentID])
REFERENCES [dbo].[Department] ([DepartmentID])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Department]
GO
/****** Object:  ForeignKey [FK_OrderDetail_Orders]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Orders] FOREIGN KEY([OrderID])
REFERENCES [dbo].[Orders] ([OrderID])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Orders]
GO
/****** Object:  ForeignKey [FK_AttributeValue_Attribute]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[AttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_AttributeValue_Attribute] FOREIGN KEY([AttributeID])
REFERENCES [dbo].[Attribute] ([AttributeID])
GO
ALTER TABLE [dbo].[AttributeValue] CHECK CONSTRAINT [FK_AttributeValue_Attribute]
GO
/****** Object:  ForeignKey [FK_ProductCategory_Category]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Category] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Category]
GO
/****** Object:  ForeignKey [FK_ProductCategory_Product]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[ProductCategory]  WITH CHECK ADD  CONSTRAINT [FK_ProductCategory_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductCategory] CHECK CONSTRAINT [FK_ProductCategory_Product]
GO
/****** Object:  ForeignKey [FK_ProductAttributeValue_AttributeValue]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[ProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeValue_AttributeValue] FOREIGN KEY([AttributeValueID])
REFERENCES [dbo].[AttributeValue] ([AttributeValueID])
GO
ALTER TABLE [dbo].[ProductAttributeValue] CHECK CONSTRAINT [FK_ProductAttributeValue_AttributeValue]
GO
/****** Object:  ForeignKey [FK_ProductAttributeValue_Product]    Script Date: 12/13/2010 14:32:15 ******/
ALTER TABLE [dbo].[ProductAttributeValue]  WITH CHECK ADD  CONSTRAINT [FK_ProductAttributeValue_Product] FOREIGN KEY([ProductID])
REFERENCES [dbo].[Product] ([ProductID])
GO
ALTER TABLE [dbo].[ProductAttributeValue] CHECK CONSTRAINT [FK_ProductAttributeValue_Product]
GO
