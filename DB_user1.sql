USE [user1]
GO
/****** Object:  Table [dbo].[Agents]    Script Date: 14.12.2021 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Agents](
	[ID_Agent] [int] IDENTITY(1,1) NOT NULL,
	[Type] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Email] [nvarchar](255) NULL,
	[Phone] [nvarchar](255) NULL,
	[Logo] [nvarchar](255) NULL,
	[Adress] [nvarchar](255) NULL,
	[Priority] [int] NULL,
	[Director] [nvarchar](255) NULL,
	[INN] [nvarchar](255) NULL,
	[CPP] [nvarchar](255) NULL,
 CONSTRAINT [PK_Agents] PRIMARY KEY CLUSTERED 
(
	[ID_Agent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[History_Agents]    Script Date: 14.12.2021 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[History_Agents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ID_Agent] [int] NULL,
	[Name] [nvarchar](255) NULL,
	[Priority] [int] NULL,
	[Type] [nvarchar](255) NULL,
 CONSTRAINT [PK_History_Agents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 14.12.2021 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ID_Product] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](255) NULL,
	[Type] [int] NULL,
	[Article] [int] NULL,
	[Count_Of_People] [int] NULL,
	[Number] [int] NULL,
	[Min_Prise] [int] NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ID_Product] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Productsale]    Script Date: 14.12.2021 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Productsale](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Product] [nvarchar](255) NULL,
	[Name_Adent] [nvarchar](255) NULL,
	[Date] [datetime] NULL,
	[ID_Product] [int] NULL,
	[ID_Agent] [int] NULL,
	[Count_Of_Product] [int] NULL,
 CONSTRAINT [PK_Productsale$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeAgents]    Script Date: 14.12.2021 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeAgents](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_Agent] [nvarchar](255) NULL,
 CONSTRAINT [PK_TypeAgents$] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TypeProducts]    Script Date: 14.12.2021 11:25:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeProducts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type_Product] [nvarchar](255) NULL,
 CONSTRAINT [PK_TypeProducts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Agents] ON 

INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (0, 1, N'МонтажОрионУрал', N'email: pzaitev@blokin.org', N'(35222) 67-39-26', N'\agents\agent_96.png', N'027573, Тамбовская область, город Коломна, ул. Ленина, 20', NULL, N'Давыдоваа Нина Евгеньевна', N'1.69229e+009', N'1.81381e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (1, 1, N'МетизСтрой', N'kristina.pakomov@burova.ru', N' 8-800-172-62-56', N'\agents\agent_94.png', N'254238, Нижегородская область, город Павловский Посад, проезд Балканская, 23', 374, N'Ева Борисовна Беспалова', N'4.02474e+009', N'2.95608e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (2, 3, N'РадиоСевер', N'maiy.belov@rogov.ru', N'(495) 368-86-51', N'\agents\agent_123.png', N'491360, Московская область, город Одинцово, въезд Ленина, 19', NULL, N'Карпов Иосиф Максимович', N'5.88921e+009', N'3.72789e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (3, 4, N'Компания КазАлмаз', N'irina.gusina@vlasova.ru', N'8-800-533-24-75', N'\agents\agent_80.png', N'848810, Кемеровская область, город Лотошино, пер. Ломоносова, 90', 396, N'Марк Фёдорович Муравьёва', N'3.0848e+009', N'1.23191e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (4, 4, N'Компания СервисРадиоГор', N'nika.nekrasova@kovalev.ru', N' 8-800-676-32-86', N'\agents\agent_40.png', N'547196, Ульяновская область, город Серебряные Пруды, въезд Балканская, 81', NULL, N'Попов Вадим Александрович', N'8.88047e+009', N'7.29975e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (5, 2, N'ВодТверьХозМашина', N'tkrylov@baranova.net', N' +7 (922) 849-91-96', N'\agents\agent_56.png', N'145030, Сахалинская область, город Шатура, въезд Гоголя, 79', 8, N'Александра Дмитриевна Ждановаа', N'4.17425e+009', N'5.22227e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (6, 3, N'Тех', N'vasilisa99@belyev.ru', N'+7 (922) 427-13-31', N'\agents\agent_61.png', N'731935, Калининградская область, город Павловский Посад, наб. Гагарина, 59', NULL, N'Аким Романович Логинова', N'9.28292e+009', N'5.87356e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (7, 4, N'ТверьМетизУралСнос', N'email: rlazareva@novikov.ru', N'(35222) 57-92-75', N'\agents\agent_109.png', N'880551, Ленинградская область, город Красногорск, ул. Гоголя, 61', NULL, N'Зоя Андреевна Соболева', N'1.0761e+009', N'9.47828e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (8, 2, N'МясРеч', N'bkozlov@volkov.ru', N'8-800-453-63-45', N'\agents\agent_58.png', N'903648, Калужская область, город Воскресенск, пр. Будапештсткая, 91', NULL, N'Белоусоваа Ирина Максимовна', N'9.25426e+009', N'6.56363e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (9, 2, N'Флот', N'gerasim.makarov@kornilov.ru', N'8-800-144-25-38', N'\agents\agent_87.png', N'505562, Тюменская область, город Наро-Фоминск, пр. Косиора, 11', 473, N'Василий Андреевич Ковалёв', N'1.11217e+009', N'3.82584e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (10, 2, N'CибПивОмскСнаб', N'evorontova@potapova.ru', N'+7 (922) 153-95-22', N'\agents\agent_46.png', N'816260, Ивановская область, город Москва, ул. Гагарина, 31', 477, N'Людмила Александровна Сафонова', N'5.67617e+009', N'2.56512e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (11, 2, N'ЦементАсбоцемент', N'email: polykov.veronika@artemeva.ru', N' (495) 184-87-92', NULL, N'619540, Курская область, город Раменское, пл. Балканская, 12', NULL, N'Воронова Мария Александровна', N'4.34577e+009', N'3.5247e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (12, 2, N'ТелеГлавВекторСбыт', N'nsitnikov@kovaleva.ru', N'(35222) 56-15-37', N'\agents\agent_31.png', N'062489, Челябинская область, город Пушкино, въезд Бухарестская, 07', NULL, N'Екатерина Фёдоровна Ковалёва', N'9.50479e+009', N'4.19759e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (13, 3, N'Инфо', N'arsenii.mikailova@prokorov.com', N'8-800-793-59-97', N'\agents\agent_89.png', N'100469, Рязанская область, город Ногинск, шоссе Гагарина, 57', 304, N'Баранова Виктор Романович', N'6.54947e+009', N'7.18387e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (14, 2, N'ЭлектроРемОрионЛизинг', N'anfisa.fedotova@tvetkov.ru', N'(495) 519-97-41', N'\agents\agent_68.png', N'594365, Ярославская область, город Павловский Посад, бульвар Космонавтов, 64', NULL, N'Тарасова Дан Львович', N'1.34007e+009', N'5.00478e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (15, 4, N'Компания ТелекомХмельГаражПром', N'email: qkolesnikova@kalinina.ru', N'(812) 983-91-73', N'\agents\agent_71.png', N'126668, Ростовская область, город Зарайск, наб. Гагарина, 69', 457, N'Костина Татьяна Борисовна', N'1.61462e+009', N'8.24882e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (16, 4, N'Компания Алмаз', N'akalinina@zaitev.ru', N'+7 (922) 688-74-22', N'\agents\agent_121.png', N'016215, Воронежская область, город Зарайск, ул. Косиора, 48', 259, N'Фоминаа Лариса Романовна', N'6.69886e+009', N'6.62877e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (17, 3, N'МясТрансМоторЛизинг', N'email: vlad.sokolov@andreev.org', N' +7 (922) 676-34-94', N'\agents\agent_62.png', N'765320, Ивановская область, город Шатура, спуск Гоголя, 88', NULL, N'Тамара Дмитриевна Семёноваа', N'6.14869e+009', N'1.96333e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (18, 6, N'Монтаж', N'email: zakar.sazonova@gavrilov.ru', N'(495) 867-76-15', NULL, N'066594, Магаданская область, город Шаховская, спуск Сталина, 59', 300, N'Блохина Сергей Максимович', N'6.14219e+009', N'1.54457e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (19, 4, N'ВостокГлав', N'gordei95@kirillov.ru', N'(812) 949-29-26', N'\agents\agent_63.png', N'217022, Ростовская область, город Озёры, ул. Домодедовская, 19', 107, N'Инга Фёдоровна Дмитриева', N'3.58095e+009', N'4.05017e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (20, 6, N'Газ', N'ulyna.antonov@noskov.ru', N'(35222) 22-45-58', N'\agents\agent_76.png', N'252821, Тамбовская область, город Пушкино, ул. Чехова, 40', NULL, N'Терентьев Илларион Максимович', N'8.87641e+009', N'9.55382e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (21, 3, N'ЭлектроТранс', N'boleslav.zukova@nikiforova.com', N' (812) 342-24-31', N'\agents\agent_91.png', N'434616, Калининградская область, город Павловский Посад, пл. Ладыгина, 83', 129, N'Сава Александрович Титова', N'6.01914e+009', N'4.5063e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (22, 3, N'Электро', N'likacev.makar@antonov.ru', N' 8-800-714-36-41', N'\agents\agent_93.png', N'966815, Новгородская область, город Одинцово, пр. Космонавтов, 19', 366, N'Шарапова Елена Дмитриевна', N'7.89603e+009', N'7.86039e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (23, 1, N'Гор', N'maiy12@koklov.net', N'(495) 973-48-55', N'\agents\agent_52.png', N'376483, Калужская область, город Сергиев Посад, ул. Славы, 09', NULL, N'Нонна Львовна Одинцоваа', N'7.08819e+009', N'4.4031e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (24, 4, N'Компания Гараж', N'email: asiryeva@andreeva.com', N'+7 (922) 848-38-54', N'\agents\agent_66.png', N'395101, Белгородская область, город Балашиха, бульвар 1905 года, 00', NULL, N'Владлена Фёдоровна Ларионоваа', N'6.19024e+009', N'3.99106e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (25, 5, N'ОрионГлав', N'sermakova@sarova.net', N' +7 (922) 684-13-74', N'\agents\agent_106.png', N'729639, Магаданская область, город Талдом, въезд Будапештсткая, 98', 482, N'Тимофеева Григорий Андреевич', N'9.03246e+009', N'7.63046e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (26, 6, N'ГлавITФлотПроф', N'savva.rybov@kolobov.ru', N' (812) 146-66-46', N'\agents\agent_64.png', N'447811, Мурманская область, город Егорьевск, ул. Ленина, 24', NULL, N'Зыкова Стефан Максимович', N'2.56136e+009', N'5.25679e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (27, 5, N'ТверьМонтажОмск', N'dteterina@selezneva.ru', N'8-800-363-43-86', N'\agents\agent_128.png', N'761751, Амурская область, город Балашиха, шоссе Гоголя, 02', 272, N'Матвей Романович Большакова', N'2.42135e+009', N'1.57371e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (28, 3, N'РемСантехОмскБанк', N'anisimov.mark@vorobev.ru', N' (812) 182-44-77', N'\agents\agent_57.png', N'289468, Омская область, город Видное, пер. Балканская, 33', 442, N'Фокина Искра Максимовна', N'6.82305e+009', N'1.76489e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (29, 3, N'ЭлектроМоторТрансСнос', N'inessa.voronov@sidorova.ru', N' (35222) 43-62-19', NULL, N'913777, Самарская область, город Красногорск, ул. Бухарестская, 49', 151, N'Людмила Евгеньевна Новиковаа', N'6.60836e+009', N'7.99761e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (30, 1, N'ТверьХозМорСбыт', N'email: marina58@koroleva.com', N'(495) 416-75-67', N'\agents\agent_117.png', N'252101, Ростовская область, город Дорохово, пер. Ленина, 85', NULL, N'Аким Львович Субботина', N'6.68134e+009', N'4.60531e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (31, 4, N'Компания ТомскХоз', N'email: nelli11@gureva.ru', N' +7 (922) 849-13-37', N'\agents\agent_115.png', N'861543, Томская область, город Истра, бульвар Славы, 42', NULL, N'Лазарева Аркадий Сергеевич', N'8.43039e+009', N'9.61541e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (32, 4, N'Компания МясДизайнДизайн', N'email: gleb.gulyev@belyeva.com', N' (812) 535-17-25', N'\agents\agent_53.png', N'557264, Брянская область, город Серпухов, въезд Гоголя, 34', NULL, N'Клементина Сергеевна Стрелкова', N'8.00499e+009', N'9.08629e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (33, 4, N'Компания ЖелДорТверьМонтаж', N'email: burova.zlata@zueva.ru', N'(495) 521-61-75', N'\agents\agent_85.png', N'152424, Рязанская область, город Сергиев Посад, ул. 1905 года, 27', NULL, N'Нестор Максимович Гуляев', N'3.32572e+009', N'6.65766e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (34, 4, N'МетизТехАвтоПроф', N'anastasiy.gromov@samsonova.com', N' (495) 581-42-46', N'\agents\agent_33.png', N'713016, Брянская область, город Подольск, пл. Домодедовская, 93', 321, N'Егор Фёдорович Третьякова', N'2.98889e+009', N'2.15491e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (35, 6, N'Гараж', N'antonin51@korolev.com', N'(35222) 54-72-59', N'\agents\agent_90.png', N'585758, Самарская область, город Красногорск, бульвар Балканская, 13', 107, N'Панфилов Константин Максимович', N'2.63846e+009', N'7.46823e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (36, 1, N'ГазДизайнЖелДор', N'elizaveta.komarov@rybakov.net', N'(495) 797-97-33', N'\agents\agent_49.png', N'695230, Курская область, город Красногорск, пр. Гоголя, 64', 236, N'Лев Иванович Третьяков', N'2.39603e+009', N'4.58925e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (37, 3, N'РемГаражЛифт', N'novikova.gleb@sestakov.ru', N' 8-800-772-27-53', N'\agents\agent_65.png', N'048715, Ивановская область, город Люберцы, проезд Космонавтов, 89', 374, N'Филатов Владимир Максимович', N'1.65648e+009', N'9.88969e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (38, 6, N'СантехБашкир', N'email: nikodim81@kiseleva.com', N' +7 (922) 155-87-39', N'\agents\agent_99.png', N'180288, Тверская область, город Одинцово, ул. Бухарестская, 37', 369, N'Виктор Иванович Молчанов', N'4.15922e+009', N'6.39267e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (39, 1, N'ЮпитерЛенГараж-М', N'larkipova@gorbunov.ru', N'(495) 327-58-25', N'\agents\agent_48.png', N'339507, Московская область, город Видное, ул. Космонавтов, 11', NULL, N'Васильева Валерия Борисовна', N'2.03839e+009', N'2.59673e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (40, 2, N'ОрионСофтВодСнос', N'isukanov@sobolev.com', N'(35222) 59-75-11', N'\agents\agent_97.png', N'577227, Калужская область, город Павловский Посад, наб. Чехова, 35', 361, N'Мухина Ян Фёдорович', N'1.52235e+009', N'9.77739e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (41, 3, N'КазХоз', N'istrelkova@fomin.ru', N'+7 (922) 728-85-62', NULL, N'384162, Астраханская область, город Одинцово, бульвар Гагарина, 57', 213, N'Степанова Роман Иванович', N'6.50338e+009', N'2.3228e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (42, 5, N'БухВжух', N'valentina.bolsakova@aksenova.ru', N'(495) 367-21-41', NULL, N'481744, Амурская область, город Щёлково, пл. Сталина, 48', 327, N'Тарасов Болеслав Александрович', N'2.32099e+009', N'3.59283e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (43, 3, N'ХозЮпитер', N'jisakova@nazarova.com', N'+7 (922) 332-48-96', N'\agents\agent_114.png', N'038182, Курганская область, город Москва, спуск Космонавтов, 16', NULL, N'Максимоваа Вера Фёдоровна', N'6.66764e+009', N'3.80593e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (44, 6, N'ВостокКазРыб', N'flukin@misin.org', N' (495) 987-31-63', N'\agents\agent_112.png', N'059565, Оренбургская область, город Истра, шоссе Домодедовская, 27', 361, N'Самсонов Родион Романович', N'7.41128e+009', N'1.7678e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (45, 2, N'ЦементКрепТех-М', N'email: yna.evdokimov@gordeeva.ru', N' (812) 838-79-58', N'\agents\agent_82.png', N'263764, Свердловская область, город Раменское, пер. Косиора, 28', 189, N'Сергеев Владлен Александрович', N'5.35998e+009', N'6.80416e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (46, 6, N'Строй', N'soloveva.adam@andreev.ru', N'(812) 447-45-59', NULL, N'763019, Омская область, город Шатура, пл. Сталина, 56', NULL, N'Кудрявцев Адриан Андреевич', N'6.67888e+009', N'2.79289e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (47, 2, N'БашкирЮпитерТомск', N'dyckov.veniamin@kotova.ru', N'(812) 189-59-57', N'\agents\agent_59.png', N'035268, Сахалинская область, город Волоколамск, проезд Ладыгина, 51', 139, N'Фадеева Раиса Александровна', N'1.60632e+009', N'2.17799e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (48, 4, N'Компания КазМеталКазань', N'email: mmoiseev@teterin.ru', N'(495) 685-34-29', N'\agents\agent_130.png', N'532703, Пензенская область, город Чехов, наб. Чехова, 81', 252, N'Валерий Владимирович Хохлова', N'4.59894e+009', N'3.03468e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (49, 4, N'Компания Газ', N'alina56@zdanov.com', N' (35222) 75-96-85', N'\agents\agent_120.png', N'310403, Кировская область, город Солнечногорск, пл. Балканская, 76', 445, N'Давид Андреевич Фадеев', N'2.26243e+009', N'2.4737e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (50, 4, N'Компания Монтаж', N'afanasev.anastasiy@muravev.ru', N' (35222) 92-45-98', N'\agents\agent_75.png', N'036381, Брянская область, город Кашира, бульвар Гагарина, 76', NULL, N'Силин Даниил Иванович', N'6.20643e+009', N'1.1857e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (51, 2, N'СервисХмельМонтаж', N'galina31@melnikov.ru', N'+7 (922) 344-73-38', N'\agents\agent_92.png', N'928260, Нижегородская область, город Балашиха, пл. Косиора, 44', 124, N'Анжелика Дмитриевна Горбунова', N'3.45989e+009', N'3.56196e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (52, 3, N'ВодГараж', N'email: pmaslov@fomiceva.com', N'+7 (922) 363-86-67', N'\agents\agent_67.png', N'988899, Саратовская область, город Раменское, пр. Славы, 40', 250, N'Лаврентий Фёдорович Логинова', N'5.57507e+009', N'6.8429e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (53, 1, N'CибГаз', N'inna.sarova@panfilov.ru', N'(495) 945-37-25', N'\agents\agent_103.png', N'365674, Архангельская область, город Серебряные Пруды, пр. Ленина, 29', 488, N'Вячеслав Романович Третьякова', N'6.48342e+009', N'4.55013e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (54, 1, N'БашкирФлотМотор-H', N'email: morozova.nika@kazakova.ru', N' (495) 793-84-82', N'\agents\agent_36.png', N'008081, Тюменская область, город Ногинск, въезд Гагарина, 94', NULL, N'Марат Алексеевич Фролов', N'1.65748e+009', N'9.34931e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (55, 5, N'МеталСервисМор', N'xdanilov@titov.ru', N'(35222) 91-28-62', NULL, N'293265, Иркутская область, город Клин, пр. Славы, 12', NULL, N'Коновалова Кирилл Львович', N'6.92282e+009', N'5.80143e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (56, 2, N'Рем', N'zanna25@nikiforova.com', N' (495) 987-88-53', N'\agents\agent_79.png', N'707812, Иркутская область, город Шаховская, ул. Гагарина, 17', 329, N'Шароваа Елизавета Львовна', N'3.20383e+009', N'4.56255e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (57, 4, N'СантехСеверЛенМашина', N'email: pgorbacev@vasilev.net', N'(812) 918-88-43', N'\agents\agent_74.png', N'606990, Новосибирская область, город Павловский Посад, въезд Домодедовская, 38', NULL, N'Павел Максимович Рожков', N'3.50669e+009', N'8.30714e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (58, 4, N'Цемент', N'panova.klementina@bobrov.ru', N'8-800-517-78-47', N'\agents\agent_54.png', N'084315, Амурская область, город Шаховская, наб. Чехова, 62', NULL, N'Анфиса Фёдоровна Буроваа', N'9.66212e+009', N'6.50216e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (59, 2, N'Вод', N'email: savva86@zaiteva.ru', N'(495) 142-19-84', N'\agents\agent_129.png', N'964386, Оренбургская область, город Чехов, пл. Косиора, 80', NULL, N'Зоя Романовна Селезнёва', N'1.29606e+009', N'4.4743e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (60, 5, N'Орион', N'email: aleksei63@kiselev.ru', N'8-800-621-61-93', N'\agents\agent_77.png', N'951035, Ивановская область, город Ступино, шоссе Космонавтов, 73', NULL, N'Мартынов Михаил Борисович', N'2.67017e+009', N'7.16874e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (61, 3, N'СтройГорНефть', N'email: lysy.kolesnikova@molcanova.com', N' (812) 385-21-37', N'\agents\agent_37.png', N'444539, Ульяновская область, город Лотошино, спуск Будапештсткая, 95', 161, N'Тарасова Макар Максимович', N'5.91678e+009', N'3.98299e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (62, 4, N'Компания Хмель', N'ermakov.mark@isakova.ru', N' (812) 421-77-82', NULL, N'889757, Новосибирская область, город Раменское, бульвар 1905 года, 93', NULL, N'Владимир Борисович Суворова', N'9.00409e+009', N'2.97274e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (63, 4, N'Компания ВодАлмазIT', N'zakar37@nikolaeva.ru', N'(35222) 52-76-16', N'\agents\agent_111.png', N'302100, Нижегородская область, город Мытищи, пер. 1905 года, 63', NULL, N'Гуляев Егор Евгеньевич', N'2.3453e+009', N'9.08449e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (64, 5, N'БашкирРечТомск', N'email: aleksandra77@karpov.com', N'8-800-254-71-85', N'\agents\agent_100.png', N'136886, Амурская область, город Видное, въезд Космонавтов, 39', NULL, N'Назарова Вера Андреевна', N'7.02772e+009', N'8.23811e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (65, 2, N'СофтРосБух', N'ivanova.antonin@rodionov.ru', N'+7 (922) 445-69-17', N'\agents\agent_124.png', N'747695, Амурская область, город Сергиев Посад, въезд Бухарестская, 46', NULL, N'Белова Полина Владимировна', N'8.32156e+009', N'8.07804e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (66, 1, N'ТелекомЮпитер', N'kulikov.adrian@zuravlev.org', N'(812) 895-67-23', N'\agents\agent_81.png', N'959793, Курская область, город Егорьевск, бульвар Ленина, 72', NULL, N'Калинина Татьяна Ивановна', N'9.38318e+009', N'9.44521e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (67, 2, N'УралСтройХмель', N'email: aleksandr95@kolobova.ru', N'(35222) 39-23-65', N'\agents\agent_113.png', N'462632, Костромская область, город Шаховская, шоссе Сталина, 92', 372, N'Август Борисович Красильникова', N'8.77356e+009', N'4.02503e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (68, 6, N'АсбоцементТехАвто', N'matveev.yliy@kiseleva.ru', N'+7 (922) 977-68-84', N'\agents\agent_110.png', N'304975, Пензенская область, город Солнечногорск, шоссе Балканская, 76', 247, N'Сидорова Любовь Ивановна', N'7.62608e+009', N'5.79234e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (69, 4, N'Компания ФинансСервис', N'email: robert.serbakov@safonova.ru', N'(812) 878-42-71', N'\agents\agent_38.png', N'841700, Брянская область, город Серпухов, спуск Домодедовская, 35', 395, N'Клавдия Сергеевна Виноградова', N'7.49149e+009', N'6.73622e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (70, 3, N'Софт', N'jterentev@ersov.com', N'(35222) 12-82-65', N'\agents\agent_122.png', N'453714, Смоленская область, город Одинцово, спуск Косиора, 84', NULL, N'Петухова Прохор Фёдорович', N'3.88991e+009', N'9.52048e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (71, 3, N'ТелекомГор', N'gorskov.larisa@kalinin.com', N'(35222) 78-93-21', N'\agents\agent_98.png', N'210024, Белгородская область, город Сергиев Посад, наб. Ломоносова, 43', 255, N'Ксения Андреевна Михайлова', N'3.74895e+009', N'7.66432e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (72, 5, N'РемСтрем', N'rafail96@sukin.ru', N' (35222) 55-28-24', N'\agents\agent_116.png', N'373761, Псковская область, город Наро-Фоминск, наб. Гагарина, 03', NULL, N'Альбина Александровна Романова', N'9.00657e+009', N'1.52177e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (73, 4, N'Лифт', N'email: zinaida01@bespalova.ru', N' (812) 484-92-38', N'\agents\agent_101.png', N'479565, Курганская область, город Клин, пл. Ленина, 54', NULL, N'Вера Евгеньевна Денисоваа', N'6.16971e+009', N'8.48973e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (74, 4, N'Компания МоторТелекомЦемент-М', N'larisa44@silin.org', N'(812) 857-95-57', N'\agents\agent_118.png', N'021293, Амурская область, город Наро-Фоминск, шоссе Славы, 40', NULL, N'Иван Евгеньевич Белоусова', N'7.32683e+009', N'4.40199e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (75, 3, N'ЮпитерТяжОрионЭкспедиция', N'email: gblokin@orlov.net', N' (35222) 95-63-65', N'\agents\agent_44.png', N'960726, Томская область, город Орехово-Зуево, въезд 1905 года, 51', NULL, N'Валерий Евгеньевич Виноградов', N'6.84317e+009', N'9.35556e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (76, 6, N'Транс', N'artem.fadeev@polykov.com', N'8-800-954-23-89', N'\agents\agent_127.png', N'508299, Кемеровская область, город Кашира, пер. Гагарина, 42', NULL, N'Евсеева Болеслав Сергеевич', N'9.60428e+009', N'9.51258e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (77, 3, N'РемВод', N'komarov.elizaveta@agafonova.ru', N'+7 (922) 353-31-72', N'\agents\agent_126.png', N'449723, Смоленская область, город Наро-Фоминск, пер. Ломоносова, 94', 1, N'Медведеваа Ярослава Фёдоровна', N'3.9866e+009', N'8.11373e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (78, 5, N'АсбоцементЛифтРеч-H', N'vladlena58@seliverstova.ru', N'(495) 245-57-16', N'\agents\agent_105.png', N'599158, Ростовская область, город Озёры, ул. Космонавтов, 05', 407, N'Кондратьева Таисия Андреевна', N'6.56788e+009', N'5.60961e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (79, 4, N'РосАвтоМонтаж', N'lapin.inessa@isaeva.com', N'(495) 445-97-76', N'\agents\agent_55.png', N'331914, Курская область, город Ногинск, спуск Ладыгина, 66', 10, N'Диана Алексеевна Исаковаа', N'4.73504e+009', N'2.63682e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (80, 4, N'Компания СервисТелеМотор', N'email: veronika.egorov@bespalova.com', N' +7 (922) 461-25-29', N'\agents\agent_102.png', N'625988, Вологодская область, город Озёры, пр. Гоголя, 18', 81, N'Фролова Эдуард Борисович', N'3.24845e+009', N'1.38473e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (81, 5, N'ФинансТелеТверь', N'email: medvedev.klim@afanasev.com', N'(812) 115-56-93', N'\agents\agent_45.png', N'687171, Томская область, город Лотошино, пл. Славы, 59', NULL, N'Зайцеваа Дарья Сергеевна', N'2.64609e+009', N'9.71874e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (82, 3, N'ВодГор', N'tvetkova.robert@sorokin.com', N' (35222) 73-72-16', N'\agents\agent_125.png', N'265653, Калужская область, город Ступино, шоссе Гоголя, 89', 72, N'Фаина Фёдоровна Филиппова', N'4.46311e+009', N'8.99604e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (83, 3, N'ТяжРадиоУралПроф', N'liliy62@grisina.ru', N'+7 (922) 885-66-15', N'\agents\agent_88.png', N'521087, Орловская область, город Егорьевск, шоссе Ладыгина, 14', NULL, N'София Алексеевна Мухина', N'5.68853e+009', N'4.01535e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (84, 3, N'ГаражЛофт', N'lydmila.belyeva@karpov.ru', N'(495) 427-55-66', N'\agents\agent_108.png', N'294596, Мурманская область, город Шаховская, пр. Домодедовская, 88', 335, N'Клавдия Фёдоровна Кудряшова', N'2.81694e+009', N'7.54741e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (85, 3, N'ITСтройАлмаз', N'fokin.eduard@samoilov.com', N'8-800-185-78-91', N'\agents\agent_83.png', N'361730, Костромская область, город Волоколамск, шоссе Славы, 36', 159, N'Алексеева Валериан Андреевич', N'7.68907e+009', N'4.56613e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (86, 4, N'Асбоцемент', N'antonin19@panfilov.ru', N' 8-800-211-16-23', N'\agents\agent_34.png', N'030119, Курганская область, город Дмитров, пер. Славы, 47', 273, N'Никитинаа Антонина Андреевна', N'1.26141e+009', N'7.45922e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (87, 2, N'ТекстильУралАвтоОпт', N'hkononova@pavlova.ru', N' (35222) 98-76-54', NULL, N'028936, Магаданская область, город Видное, ул. Гагарина, 54', NULL, N'Алина Сергеевна Дьячковаа', N'3.93095e+009', N'6.78529e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (88, 4, N'Компания КрепЦемент', N'rusakov.efim@nikiforov.ru', N' (812) 963-77-87', N'\agents\agent_50.png', N'423477, Мурманская область, город Кашира, бульвар Домодедовская, 61', NULL, N'Екатерина Львовна Суворова', N'3.0251e+009', N'6.06084e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (89, 3, N'КазаньТекстиль', N'osimonova@andreeva.com', N'(35222) 86-74-21', N'\agents\agent_47.png', N'231891, Челябинская область, город Шатура, бульвар Ладыгина, 40', 156, N'Александров Бронислав Максимович', N'4.58438e+009', N'1.4968e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (90, 3, N'КазЮпитерТомск', N'tgavrilov@frolov.ru', N'+7 (922) 772-33-58', N'\agents\agent_60.png', N'393450, Тульская область, город Кашира, пр. 1905 года, 47', 244, N'Рафаил Андреевич Копылов', N'9.20175e+009', N'5.10249e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (91, 6, N'Бух', N'belova.vikentii@konstantinova.net', N' +7 (922) 375-49-21', N'\agents\agent_78.png', N'409600, Новгородская область, город Ногинск, пл. Гагарина, 68', NULL, N'Татьяна Сергеевна Королёваа', N'1.95379e+009', N'1.22906e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (92, 5, N'Радио', N'rtretykova@kozlov.ru', N'8-800-897-32-78', N'\agents\agent_43.png', N'798718, Ленинградская область, город Пушкино, бульвар Балканская, 37', NULL, N'Эмма Андреевна Колесникова', N'9.07761e+009', N'6.57691e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (93, 2, N'Креп', N'savina.dominika@belousova.com', N' (495) 217-46-29', N'\agents\agent_39.png', N'336489, Калининградская область, город Можайск, наб. Славы, 35', NULL, N'Назар Алексеевич Григорьева', N'4.88073e+009', N'2.58674e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (94, 3, N'Мобайл', N'email: dsiryev@dementeva.com', N'8-800-618-73-37', N'\agents\agent_107.png', N'606703, Амурская область, город Чехов, пл. Будапештсткая, 91', NULL, N'Екатерина Сергеевна Бобылёва', N'7.80389e+009', N'8.85703e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (95, 1, N'CибБашкирТекстиль', N'vzimina@zdanova.com', N'(495) 285-78-38', N'\agents\agent_69.png', N'429540, Мурманская область, город Воскресенск, пл. Славы, 36', 218, N'Григорий Владимирович Елисеева', N'7.39201e+009', N'5.76104e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (96, 1, N'МеталТекстильЛифтТрест', N'email: muravev.trofim@sazonov.net', N'(812) 753-96-76', N'\agents\agent_86.png', N'786287, Свердловская область, город Волоколамск, пер. Будапештсткая, 72', NULL, N'Одинцов Назар Борисович', N'2.97155e+009', N'8.21859e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (97, 5, N'ОрионТомскТех', N'faina.tikonova@veselov.com', N'+7 (922) 542-89-15', N'\agents\agent_119.png', N'738763, Курская область, город Егорьевск, спуск Чехова, 66', 73, N'Георгий Александрович Лукин', N'9.35149e+009', N'5.83042e+008')
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (98, 5, N'ЖелДорДизайнМетизТраст', N'lnikitina@kulikova.com', N'(812) 123-63-47', NULL, N'170549, Сахалинская область, город Видное, проезд Космонавтов, 89', NULL, N'Игорь Львович Агафонова', N'7.66912e+009', N'9.0639e+008')
GO
INSERT [dbo].[Agents] ([ID_Agent], [Type], [Name], [Email], [Phone], [Logo], [Adress], [Priority], [Director], [INN], [CPP]) VALUES (99, 3, N'БухМясМоторПром', N'varvara49@savin.ru', N'(35222) 83-23-59', N'\agents\agent_95.png', N'677498, Костромская область, город Зарайск, спуск Славы, 59', 158, N'Нина Дмитриевна Черноваа', N'7.37741e+009', N'5.92041e+008')
SET IDENTITY_INSERT [dbo].[Agents] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (0, N'Попрыгунчик детский красный 1289', 5, 82925345, 4, 10, 1919)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (1, N'Попрыгунчик детский желтый 6678', 3, 80007300, 2, 1, 1768)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (2, N'Попрыгунчик детский 6888', 5, 13875235, 4, 12, 1972)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (3, N'Попрыгунчик для мальчиков 3929', 5, 2158097, 1, 9, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (4, N'Попрыгунчик детский 2071', 5, 3157982, 3, 6, 275)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (5, N'Попрыгунчик для собачек 5096', 1, 67975083, 4, 9, 1465)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (6, N'Попрыгунчик для мальчиков 5389', 1, 70873532, 3, 2, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (7, N'Попрыгунчик детский розовый 5376', 5, 74291677, 4, 6, 1889)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (8, N'Попрыгунчик для мальчиков 3307', 2, 30269726, 4, 10, 1533)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (9, N'Попрыгунчик для кошечек 2604', 5, 11890154, 2, 7, 842)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (10, N'Шар 6366', 1, 25514523, 4, 4, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (11, N'Попрыгунчик детский желтый 6051', 2, 88211092, 4, 12, 727)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (12, N'Попрыгунчик для девочек 2311', 1, 25262035, 4, 1, 1308)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (13, N'Попрыгунчик для собачек 4387', 4, 89607276, 3, 8, 912)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (14, N'Попрыгун 3016', 2, 74919447, 1, 12, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (15, N'Попрыгунчик детский красный 3240', 3, 88098604, 3, 8, 882)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (16, N'Попрыгунчик детский розовый 1657', 5, 86558177, 4, 3, 662)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (17, N'Попрыгунчик детский красный 6591', 1, 79704172, 5, 7, 592)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (18, N'Попрыгунчик для девочек 1895', 2, 54983244, 4, 4, 1586)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (19, N'Попрыгунчик для кошечек 3741', 1, 43987093, 5, 4, 1668)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (20, N'Попрыгунчик детский красный 3839', 3, 26655484, 5, 2, 1921)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (21, N'Попрыгунчик детский красный 4969', 5, 10614909, 5, 12, 913)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (22, N'Попрыгунчик для собачек 5754', 2, 79018408, 2, 8, 633)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (23, N'Попрыгунчик для собачек 4485', 1, 33440129, 2, 12, 1995)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (24, N'Попрыгунчик для девочек 1656', 2, 22217580, 5, 6, 1494)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (25, N'Попрыгунчик для мальчиков 4791', 3, 45540528, 3, 11, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (26, N'Попрыгунчик для девочек 6849', 1, 10084400, 1, 11, 933)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (27, N'Попрыгунчик детский желтый 1371', 2, 85514178, 3, 7, 252)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (28, N'Попрыгунчик для девочек 3389', 1, 26434211, 3, 10, 597)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (29, N'Попрыгунчик детский розовый 5197', 2, 89612317, 1, 3, 1948)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (30, N'Попрыгунчик для собачек 3500', 3, 79994924, 2, 9, 1142)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (31, N'Попрыгун 6882', 4, 12732041, 1, 6, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (32, N'Попрыгунчик для кошечек 4740', 4, 80698285, 1, 6, 1973)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (33, N'Шар 2243', 1, 42536654, 3, 12, 1247)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (34, N'Попрыгунчик детский красный 1740', 1, 43330133, 5, 3, 1749)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (35, N'Попрыгунчик детский красный 5400', 1, 68237918, 4, 5, 1570)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (36, N'Попрыгунчик для девочек 1560', 5, 47378395, 5, 6, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (37, N'Шар 4124', 2, 39025230, 5, 8, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (38, N'Попрыгунчик детский желтый 2582', 1, 32125209, 3, 11, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (39, N'Попрыгунчик детский 6029', 3, 69184347, 3, 7, 419)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (40, N'Попрыгун 2299', 1, 34750945, 2, 2, 1688)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (41, N'Попрыгунчик детский красный 1972', 3, 59509797, 1, 7, 794)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (42, N'Попрыгунчик детский 5117', 3, 80875656, 3, 12, 338)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (43, N'Попрыгунчик детский розовый 5501', 1, 25409940, 2, 7, 652)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (44, N'Попрыгунчик детский розовый 6346', 2, 30282346, 1, 10, 1024)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (45, N'Попрыгун 6412', 3, 28152672, 2, 9, 523)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (46, N'Попрыгунчик детский 1916', 1, 73345857, 5, 8, 832)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (47, N'Попрыгунчик для собачек 4529', 3, 81713527, 3, 6, 1923)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (48, N'Попрыгунчик для собачек 4381', 2, 27301447, 2, 5, NULL)
INSERT [dbo].[Products] ([ID_Product], [Name], [Type], [Article], [Count_Of_People], [Number], [Min_Prise]) VALUES (49, N'Попрыгунчик детский розовый 2694', 3, 13340356, 4, 6, 1691)
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Productsale] ON 

INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (0, N'Попрыгунчик для кошечек 2604', N'КазаньТекстиль', CAST(N'2010-06-21T00:00:00.000' AS DateTime), 9, 89, 7)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (1, N'Попрыгунчик для собачек 5754', N'Компания ФинансСервис', CAST(N'2016-02-17T00:00:00.000' AS DateTime), 22, 69, 18)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (2, N'Попрыгунчик для собачек 4485', N'РемГаражЛифт', CAST(N'2012-11-07T00:00:00.000' AS DateTime), 23, 37, 9)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (3, N'Попрыгун 6412', N'Радио', CAST(N'2019-06-01T00:00:00.000' AS DateTime), 45, 92, 5)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (4, N'Попрыгунчик детский красный 3839', N'Орион', CAST(N'2014-06-11T00:00:00.000' AS DateTime), 20, 60, 11)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (5, N'Попрыгунчик детский красный 1289', N'РемСантехОмскБанк', CAST(N'2012-08-12T00:00:00.000' AS DateTime), 0, 28, 12)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (6, N'Попрыгунчик детский красный 1740', N'Газ', CAST(N'2012-09-26T00:00:00.000' AS DateTime), 34, 20, 16)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (7, N'Попрыгунчик детский розовый 1657', N'РемГаражЛифт', CAST(N'2018-02-28T00:00:00.000' AS DateTime), 16, 37, 3)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (8, N'Попрыгунчик детский желтый 6678', N'CибБашкирТекстиль', CAST(N'2018-09-15T00:00:00.000' AS DateTime), 1, 95, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (9, N'Попрыгунчик детский желтый 6051', N'Компания МясДизайнДизайн', CAST(N'2011-08-27T00:00:00.000' AS DateTime), 11, 32, 10)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (10, N'Попрыгунчик детский красный 1972', N'Компания Гараж', CAST(N'2011-08-19T00:00:00.000' AS DateTime), 41, 24, 2)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (11, N'Попрыгунчик детский розовый 6346', N'РемГаражЛифт', CAST(N'2015-02-02T00:00:00.000' AS DateTime), 44, 37, 20)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (12, N'Попрыгунчик для собачек 4529', N'Креп', CAST(N'2011-07-01T00:00:00.000' AS DateTime), 47, 93, 14)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (13, N'Попрыгунчик детский 1916', N'ЮпитерЛенГараж-М', CAST(N'2013-12-23T00:00:00.000' AS DateTime), 46, 39, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (14, N'Попрыгунчик для кошечек 2604', N'Тех', CAST(N'2017-11-11T00:00:00.000' AS DateTime), 9, 6, 10)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (15, N'Попрыгунчик для собачек 4485', N'МетизТехАвтоПроф', CAST(N'2014-04-15T00:00:00.000' AS DateTime), 23, 34, 14)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (16, N'Попрыгунчик для собачек 4485', N'ГазДизайнЖелДор', CAST(N'2018-06-22T00:00:00.000' AS DateTime), 23, 36, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (17, N'Попрыгунчик детский желтый 2582', N'Рем', CAST(N'2013-07-11T00:00:00.000' AS DateTime), 38, 56, 12)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (18, N'Попрыгунчик детский розовый 1657', N'МясТрансМоторЛизинг', CAST(N'2016-08-13T00:00:00.000' AS DateTime), 16, 17, 7)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (19, N'Попрыгунчик детский 1916', N'Газ', CAST(N'2014-07-28T00:00:00.000' AS DateTime), 46, 20, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (20, N'Попрыгунчик для собачек 4387', N'СтройГорНефть', CAST(N'2010-04-15T00:00:00.000' AS DateTime), 13, 61, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (21, N'Попрыгунчик для собачек 4387', N'КазХоз', CAST(N'2017-10-12T00:00:00.000' AS DateTime), 13, 41, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (22, N'Шар 4124', N'ТекстильУралАвтоОпт', CAST(N'2012-09-02T00:00:00.000' AS DateTime), 37, 87, 13)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (23, N'Попрыгунчик детский розовый 1657', N'КазЮпитерТомск', CAST(N'2015-08-08T00:00:00.000' AS DateTime), 16, 90, 14)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (24, N'Попрыгунчик для собачек 4381', N'Компания СервисРадиоГор', CAST(N'2012-05-25T00:00:00.000' AS DateTime), 48, 4, 15)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (25, N'Попрыгунчик детский красный 5400', N'ЭлектроМоторТрансСнос', CAST(N'2014-03-06T00:00:00.000' AS DateTime), 35, 29, 12)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (26, N'Попрыгунчик детский красный 3240', N'РемСантехОмскБанк', CAST(N'2016-05-18T00:00:00.000' AS DateTime), 15, 28, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (27, N'Попрыгунчик детский розовый 2694', N'Компания КрепЦемент', CAST(N'2014-07-11T00:00:00.000' AS DateTime), 49, 88, 10)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (28, N'Попрыгунчик детский розовый 6346', N'Компания Хмель', CAST(N'2016-08-18T00:00:00.000' AS DateTime), 44, 62, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (29, N'Попрыгунчик для мальчиков 3929', N'Компания СервисРадиоГор', CAST(N'2019-07-25T00:00:00.000' AS DateTime), 3, 4, 19)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (30, N'Попрыгунчик детский 6029', N'ВодГараж', CAST(N'2019-03-17T00:00:00.000' AS DateTime), 39, 52, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (31, N'Попрыгунчик для кошечек 3741', N'Строй', CAST(N'2014-08-06T00:00:00.000' AS DateTime), 19, 46, 9)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (32, N'Попрыгунчик для девочек 6849', N'Компания СервисРадиоГор', CAST(N'2011-09-12T00:00:00.000' AS DateTime), 26, 4, 18)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (33, N'Попрыгунчик для собачек 4387', N'Монтаж', CAST(N'2011-08-28T00:00:00.000' AS DateTime), 13, 18, 11)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (34, N'Попрыгун 2299', N'Компания Хмель', CAST(N'2015-12-25T00:00:00.000' AS DateTime), 40, 62, 4)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (35, N'Попрыгунчик детский красный 1289', N'МясТрансМоторЛизинг', CAST(N'2016-02-25T00:00:00.000' AS DateTime), 0, 17, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (36, N'Попрыгунчик детский розовый 5376', N'CибПивОмскСнаб', CAST(N'2017-06-07T00:00:00.000' AS DateTime), 7, 10, 1)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (37, N'Шар 4124', N'CибБашкирТекстиль', CAST(N'2016-11-27T00:00:00.000' AS DateTime), 37, 95, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (38, N'Попрыгунчик детский красный 6591', N'Тех', CAST(N'2012-03-12T00:00:00.000' AS DateTime), 17, 6, 18)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (39, N'Попрыгунчик для мальчиков 5389', N'Цемент', CAST(N'2018-06-13T00:00:00.000' AS DateTime), 6, 58, 18)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (40, N'Попрыгунчик для собачек 3500', N'ЭлектроМоторТрансСнос', CAST(N'2017-11-05T00:00:00.000' AS DateTime), 30, 29, 2)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (41, N'Шар 4124', N'Компания ТелекомХмельГаражПром', CAST(N'2016-02-26T00:00:00.000' AS DateTime), 37, 15, 1)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (42, N'Попрыгунчик для девочек 3389', N'КазаньТекстиль', CAST(N'2010-06-20T00:00:00.000' AS DateTime), 28, 89, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (43, N'Попрыгунчик детский желтый 1371', N'Тех', CAST(N'2015-06-23T00:00:00.000' AS DateTime), 27, 6, 12)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (44, N'Попрыгунчик для собачек 4387', N'Компания МясДизайнДизайн', CAST(N'2013-01-24T00:00:00.000' AS DateTime), 13, 32, 3)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (45, N'Попрыгунчик для девочек 2311', N'МясРеч', CAST(N'2015-02-28T00:00:00.000' AS DateTime), 12, 8, 5)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (46, N'Попрыгунчик детский красный 1972', N'МясТрансМоторЛизинг', CAST(N'2019-07-05T00:00:00.000' AS DateTime), 41, 17, 14)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (47, N'Попрыгунчик детский 6029', N'Бух', CAST(N'2014-03-06T00:00:00.000' AS DateTime), 39, 91, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (48, N'Попрыгунчик для собачек 3500', N'Креп', CAST(N'2017-05-01T00:00:00.000' AS DateTime), 30, 93, 5)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (49, N'Попрыгунчик для мальчиков 4791', N'Компания Монтаж', CAST(N'2015-01-17T00:00:00.000' AS DateTime), 25, 50, 15)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (50, N'Попрыгун 3016', N'ФинансТелеТверь', CAST(N'2018-04-14T00:00:00.000' AS DateTime), 14, 81, 7)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (51, N'Попрыгунчик детский красный 6591', N'Креп', CAST(N'2014-12-12T00:00:00.000' AS DateTime), 17, 93, 14)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (52, N'Попрыгунчик детский розовый 1657', N'ЮпитерЛенГараж-М', CAST(N'2015-03-28T00:00:00.000' AS DateTime), 16, 39, 16)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (53, N'Попрыгун 2299', N'ТелеГлавВекторСбыт', CAST(N'2017-11-24T00:00:00.000' AS DateTime), 40, 12, 15)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (54, N'Попрыгун 6412', N'CибПивОмскСнаб', CAST(N'2019-06-27T00:00:00.000' AS DateTime), 45, 10, 10)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (55, N'Попрыгунчик для девочек 3389', N'Асбоцемент', CAST(N'2014-06-04T00:00:00.000' AS DateTime), 28, 86, 2)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (56, N'Попрыгунчик детский 5117', N'Рем', CAST(N'2019-03-18T00:00:00.000' AS DateTime), 42, 56, 11)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (57, N'Попрыгунчик детский красный 1972', N'ТелеГлавВекторСбыт', CAST(N'2015-09-12T00:00:00.000' AS DateTime), 41, 12, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (58, N'Попрыгунчик детский 1916', N'Цемент', CAST(N'2012-01-02T00:00:00.000' AS DateTime), 46, 58, 13)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (59, N'Попрыгунчик для собачек 4485', N'МясРеч', CAST(N'2011-02-01T00:00:00.000' AS DateTime), 23, 8, 12)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (60, N'Попрыгунчик для кошечек 4740', N'Гор', CAST(N'2016-10-07T00:00:00.000' AS DateTime), 32, 23, 17)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (61, N'Попрыгунчик для мальчиков 3929', N'КазЮпитерТомск', CAST(N'2017-06-07T00:00:00.000' AS DateTime), 3, 90, 1)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (62, N'Попрыгунчик детский 2071', N'Строй', CAST(N'2016-02-26T00:00:00.000' AS DateTime), 4, 46, 14)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (63, N'Попрыгунчик детский желтый 6678', N'Строй', CAST(N'2013-11-09T00:00:00.000' AS DateTime), 1, 46, 5)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (64, N'Попрыгунчик детский 6029', N'МясРеч', CAST(N'2015-07-01T00:00:00.000' AS DateTime), 39, 8, 14)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (65, N'Попрыгун 6882', N'СантехСеверЛенМашина', CAST(N'2015-08-27T00:00:00.000' AS DateTime), 31, 57, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (66, N'Попрыгунчик для собачек 5754', N'Цемент', CAST(N'2013-08-27T00:00:00.000' AS DateTime), 22, 58, 15)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (67, N'Попрыгунчик для девочек 1895', N'Орион', CAST(N'2013-05-10T00:00:00.000' AS DateTime), 18, 60, 2)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (68, N'Попрыгунчик для собачек 4485', N'ВодГараж', CAST(N'2013-12-01T00:00:00.000' AS DateTime), 23, 52, 19)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (69, N'Попрыгун 3016', N'Компания ФинансСервис', CAST(N'2011-06-11T00:00:00.000' AS DateTime), 14, 69, 16)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (70, N'Попрыгунчик детский желтый 6678', N'Компания Гараж', CAST(N'2019-05-24T00:00:00.000' AS DateTime), 1, 24, 16)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (71, N'Попрыгун 6412', N'Строй', CAST(N'2017-04-02T00:00:00.000' AS DateTime), 45, 46, 1)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (72, N'Попрыгунчик детский 6888', N'РемСантехОмскБанк', CAST(N'2013-04-08T00:00:00.000' AS DateTime), 2, 28, 10)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (73, N'Попрыгунчик детский розовый 2694', N'Компания Монтаж', CAST(N'2019-08-16T00:00:00.000' AS DateTime), 49, 50, 20)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (74, N'Попрыгун 6412', N'РосАвтоМонтаж', CAST(N'2011-12-26T00:00:00.000' AS DateTime), 45, 79, 5)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (75, N'Попрыгунчик детский красный 3839', N'Компания Гараж', CAST(N'2016-07-19T00:00:00.000' AS DateTime), 20, 24, 19)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (76, N'Попрыгунчик детский розовый 5501', N'Монтаж', CAST(N'2014-03-17T00:00:00.000' AS DateTime), 43, 18, 1)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (77, N'Попрыгунчик детский красный 3240', N'ЦементАсбоцемент', CAST(N'2011-06-14T00:00:00.000' AS DateTime), 15, 11, 13)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (78, N'Попрыгунчик для девочек 3389', N'ЮпитерТяжОрионЭкспедиция', CAST(N'2017-05-20T00:00:00.000' AS DateTime), 28, 75, 13)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (79, N'Попрыгунчик детский красный 1289', N'ВодГараж', CAST(N'2010-04-13T00:00:00.000' AS DateTime), 0, 52, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (80, N'Попрыгунчик детский красный 1289', N'ЦементАсбоцемент', CAST(N'2019-10-15T00:00:00.000' AS DateTime), 0, 11, 9)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (81, N'Попрыгунчик детский 5117', N'БашкирЮпитерТомск', CAST(N'2019-10-08T00:00:00.000' AS DateTime), 42, 47, 20)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (82, N'Попрыгунчик детский красный 3839', N'Компания МясДизайнДизайн', CAST(N'2018-04-08T00:00:00.000' AS DateTime), 20, 32, 8)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (83, N'Шар 2243', N'ЭлектроМоторТрансСнос', CAST(N'2012-06-14T00:00:00.000' AS DateTime), 33, 29, 2)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (84, N'Попрыгунчик детский желтый 1371', N'СтройГорНефть', CAST(N'2012-04-23T00:00:00.000' AS DateTime), 27, 61, 3)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (85, N'Попрыгунчик для девочек 6849', N'Орион', CAST(N'2015-08-17T00:00:00.000' AS DateTime), 26, 60, 6)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (86, N'Попрыгунчик для девочек 3389', N'Компания Монтаж', CAST(N'2016-09-14T00:00:00.000' AS DateTime), 28, 50, 7)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (87, N'Попрыгунчик для мальчиков 3929', N'ВодТверьХозМашина', CAST(N'2012-03-23T00:00:00.000' AS DateTime), 3, 5, 15)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (88, N'Шар 4124', N'БашкирФлотМотор-H', CAST(N'2010-11-17T00:00:00.000' AS DateTime), 37, 54, 5)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (89, N'Попрыгунчик детский 6029', N'ГазДизайнЖелДор', CAST(N'2016-11-17T00:00:00.000' AS DateTime), 39, 36, 13)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (90, N'Попрыгунчик детский розовый 5501', N'Гор', CAST(N'2010-05-03T00:00:00.000' AS DateTime), 43, 23, 19)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (91, N'Попрыгунчик детский желтый 6051', N'ЭлектроРемОрионЛизинг', CAST(N'2019-03-06T00:00:00.000' AS DateTime), 11, 14, 1)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (92, N'Попрыгунчик для собачек 4485', N'Компания ТелекомХмельГаражПром', CAST(N'2017-10-14T00:00:00.000' AS DateTime), 23, 15, 20)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (93, N'Попрыгунчик детский розовый 2694', N'РосАвтоМонтаж', CAST(N'2017-02-08T00:00:00.000' AS DateTime), 49, 79, 3)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (94, N'Попрыгунчик для девочек 2311', N'Компания Гараж', CAST(N'2017-08-02T00:00:00.000' AS DateTime), 12, 24, 3)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (95, N'Попрыгунчик детский розовый 5376', N'ФинансТелеТверь', CAST(N'2017-03-09T00:00:00.000' AS DateTime), 7, 81, 18)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (96, N'Попрыгунчик детский желтый 2582', N'Компания МясДизайнДизайн', CAST(N'2017-11-13T00:00:00.000' AS DateTime), 38, 32, 18)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (97, N'Попрыгунчик детский желтый 2582', N'ЭлектроМоторТрансСнос', CAST(N'2015-12-02T00:00:00.000' AS DateTime), 38, 29, 19)
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (98, N'Попрыгунчик для мальчиков 3307', N'ГлавITФлотПроф', CAST(N'2011-06-14T00:00:00.000' AS DateTime), 8, 26, 19)
GO
INSERT [dbo].[Productsale] ([ID], [Product], [Name_Adent], [Date], [ID_Product], [ID_Agent], [Count_Of_Product]) VALUES (99, N'Попрыгунчик детский красный 1289', N'Компания Хмель', CAST(N'2014-08-14T00:00:00.000' AS DateTime), 0, 62, 16)
SET IDENTITY_INSERT [dbo].[Productsale] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeAgents] ON 

INSERT [dbo].[TypeAgents] ([ID], [Type_Agent]) VALUES (1, N'МКК')
INSERT [dbo].[TypeAgents] ([ID], [Type_Agent]) VALUES (2, N'ЗАО')
INSERT [dbo].[TypeAgents] ([ID], [Type_Agent]) VALUES (3, N'ОАО')
INSERT [dbo].[TypeAgents] ([ID], [Type_Agent]) VALUES (4, N'ООО')
INSERT [dbo].[TypeAgents] ([ID], [Type_Agent]) VALUES (5, N'ПАО')
INSERT [dbo].[TypeAgents] ([ID], [Type_Agent]) VALUES (6, N'МФО')
SET IDENTITY_INSERT [dbo].[TypeAgents] OFF
GO
SET IDENTITY_INSERT [dbo].[TypeProducts] ON 

INSERT [dbo].[TypeProducts] ([ID], [Type_Product]) VALUES (1, N'Взрослый')
INSERT [dbo].[TypeProducts] ([ID], [Type_Product]) VALUES (2, N'Цифровой')
INSERT [dbo].[TypeProducts] ([ID], [Type_Product]) VALUES (3, N' Для больших деток')
INSERT [dbo].[TypeProducts] ([ID], [Type_Product]) VALUES (4, N' Упругий')
INSERT [dbo].[TypeProducts] ([ID], [Type_Product]) VALUES (5, N' Для маленьких деток')
SET IDENTITY_INSERT [dbo].[TypeProducts] OFF
GO
ALTER TABLE [dbo].[Agents]  WITH CHECK ADD  CONSTRAINT [FK_Agents_TypeAgents] FOREIGN KEY([Type])
REFERENCES [dbo].[TypeAgents] ([ID])
GO
ALTER TABLE [dbo].[Agents] CHECK CONSTRAINT [FK_Agents_TypeAgents]
GO
ALTER TABLE [dbo].[Products]  WITH CHECK ADD  CONSTRAINT [FK_Products_TypeProducts] FOREIGN KEY([Type])
REFERENCES [dbo].[TypeProducts] ([ID])
GO
ALTER TABLE [dbo].[Products] CHECK CONSTRAINT [FK_Products_TypeProducts]
GO
ALTER TABLE [dbo].[Productsale]  WITH CHECK ADD  CONSTRAINT [FK_Productsale_Agents] FOREIGN KEY([ID_Agent])
REFERENCES [dbo].[Agents] ([ID_Agent])
GO
ALTER TABLE [dbo].[Productsale] CHECK CONSTRAINT [FK_Productsale_Agents]
GO
ALTER TABLE [dbo].[Productsale]  WITH CHECK ADD  CONSTRAINT [FK_Productsale_Products] FOREIGN KEY([ID_Product])
REFERENCES [dbo].[Products] ([ID_Product])
GO
ALTER TABLE [dbo].[Productsale] CHECK CONSTRAINT [FK_Productsale_Products]
GO
