USE [YzmSinama]
GO
/****** Object:  UserDefinedFunction [dbo].[fnc_DemirbasKodOlustur]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Function [dbo].[fnc_DemirbasKodOlustur](@sirketId int ,@demirbasId int)
RETURNS nvarchar(50)
AS
BEGIN

	DECLARE @demirbasKod nvarchar(50)

	SET @demirbasKod= (SELECT CAST(@demirbasId as nvarchar)+'.'+CAST(@sirketId as nvarchar))
	Return @demirbasKod

END


GO
/****** Object:  Table [dbo].[DemirbasDepartman]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DemirbasDepartman](
	[DemirbasDepartmanId] [int] IDENTITY(1,1) NOT NULL,
	[DemirbasId] [int] NOT NULL,
	[ZimmetId] [int] NOT NULL,
	[Adet] [int] NULL,
 CONSTRAINT [PK_DemirbasDepartman] PRIMARY KEY CLUSTERED 
(
	[DemirbasDepartmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Demirbaslar]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Demirbaslar](
	[DemirbasNo] [int] IDENTITY(1,1) NOT NULL,
	[UrunId] [int] NULL,
	[DemirbasKodu] [nvarchar](50) NULL,
	[DemirbasAdi] [nvarchar](50) NULL,
	[DemirbasAdedi] [int] NULL,
	[DemirbasOzellikleri] [nvarchar](50) NULL,
 CONSTRAINT [PK_Demirbaslar] PRIMARY KEY CLUSTERED 
(
	[DemirbasNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Departmanlar]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departmanlar](
	[DepartmanId] [int] IDENTITY(1,1) NOT NULL,
	[DepartmanAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Departmanlar] PRIMARY KEY CLUSTERED 
(
	[DepartmanId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Kullanicilar]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kullanicilar](
	[KullaniciId] [int] NOT NULL,
	[KullaniciAdi] [nvarchar](50) NOT NULL,
	[Sifre] [nvarchar](50) NOT NULL,
	[SonGirisTarihi] [smalldatetime] NULL CONSTRAINT [DF_Kullanicilar_SonGirisTarihi]  DEFAULT (getdate()),
	[Silindi] [bit] NULL CONSTRAINT [DF_Kullanicilar_Silindi]  DEFAULT ((0)),
 CONSTRAINT [PK_Kullanicilar] PRIMARY KEY CLUSTERED 
(
	[KullaniciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KullaniciRol]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciRol](
	[KullaniciRolId] [int] IDENTITY(1,1) NOT NULL,
	[KullaniciId] [int] NOT NULL,
	[RolId] [int] NOT NULL,
 CONSTRAINT [PK_KullaniciRol] PRIMARY KEY CLUSTERED 
(
	[KullaniciRolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Personeller]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personeller](
	[PersonelId] [int] IDENTITY(1,1) NOT NULL,
	[Ad] [nvarchar](50) NOT NULL,
	[Soyad] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Personeller] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Roller]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Roller](
	[RolId] [int] IDENTITY(1,1) NOT NULL,
	[RolAdi] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Roller] PRIMARY KEY CLUSTERED 
(
	[RolId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sirketler]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sirketler](
	[SirketId] [int] IDENTITY(1,1) NOT NULL,
	[SirketAdi] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Sirketler] PRIMARY KEY CLUSTERED 
(
	[SirketId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Urun_Stok]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urun_Stok](
	[StokId] [int] IDENTITY(1,1) NOT NULL,
	[UrunId] [int] NOT NULL,
	[Stok] [int] NOT NULL,
 CONSTRAINT [PK_Urun_Stok] PRIMARY KEY CLUSTERED 
(
	[StokId] ASC,
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Urunler]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Urunler](
	[UrunId] [int] IDENTITY(1,1) NOT NULL,
	[UrunAdi] [nvarchar](50) NOT NULL,
	[UrunBirimFiyati] [money] NOT NULL,
	[SatinAlinmaTarihi] [smalldatetime] NULL,
	[UrunToptanFiyati] [money] NOT NULL,
	[SatinAlinilanKurum] [nvarchar](50) NOT NULL,
	[Silindi] [bit] NULL CONSTRAINT [DF_Urunler_Silindi]  DEFAULT ((0)),
 CONSTRAINT [PK_Urunler] PRIMARY KEY CLUSTERED 
(
	[UrunId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Zimmetler]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zimmetler](
	[ZimmetId] [int] IDENTITY(1,1) NOT NULL,
	[PersonelId] [int] NULL,
	[DepartmanId] [int] NULL,
 CONSTRAINT [PK_Zimmetler] PRIMARY KEY CLUSTERED 
(
	[ZimmetId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  View [dbo].[PersonelDepartman]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[PersonelDepartman]
as
Select p.PersonelId,p.Ad,p.Soyad,do.DemirbasDepartmanId,de.DepartmanAdi from Personeller p inner join Zimmetler z on p.PersonelId=z.PersonelId inner join DemirbasDepartman do on z.DepartmanId=do.DemirbasDepartmanId inner join Departmanlar de on de.DepartmanId=do.DemirbasDepartmanId group by do.DemirbasDepartmanId,p.PersonelId,p.Ad,p.Soyad,de.DepartmanAdi


GO
SET IDENTITY_INSERT [dbo].[DemirbasDepartman] ON 

INSERT [dbo].[DemirbasDepartman] ([DemirbasDepartmanId], [DemirbasId], [ZimmetId], [Adet]) VALUES (1, 1, 1, 50)
INSERT [dbo].[DemirbasDepartman] ([DemirbasDepartmanId], [DemirbasId], [ZimmetId], [Adet]) VALUES (2, 2, 1, 5)
INSERT [dbo].[DemirbasDepartman] ([DemirbasDepartmanId], [DemirbasId], [ZimmetId], [Adet]) VALUES (3, 3, 1, 50)
SET IDENTITY_INSERT [dbo].[DemirbasDepartman] OFF
SET IDENTITY_INSERT [dbo].[Demirbaslar] ON 

INSERT [dbo].[Demirbaslar] ([DemirbasNo], [UrunId], [DemirbasKodu], [DemirbasAdi], [DemirbasAdedi], [DemirbasOzellikleri]) VALUES (1, 1, N'1.1.1.1', N'Bilgisayar', 50, N'Bilgisayar')
INSERT [dbo].[Demirbaslar] ([DemirbasNo], [UrunId], [DemirbasKodu], [DemirbasAdi], [DemirbasAdedi], [DemirbasOzellikleri]) VALUES (2, 2, N'1.1.4.2', N'Ofis Tİpi Sandalye', 0, N'asdasdasd')
INSERT [dbo].[Demirbaslar] ([DemirbasNo], [UrunId], [DemirbasKodu], [DemirbasAdi], [DemirbasAdedi], [DemirbasOzellikleri]) VALUES (3, 3, N'1.1.1.3', N'Projeksiyon', 1, N'Demirbas projection')
INSERT [dbo].[Demirbaslar] ([DemirbasNo], [UrunId], [DemirbasKodu], [DemirbasAdi], [DemirbasAdedi], [DemirbasOzellikleri]) VALUES (4, 4, N'1.1.1.4', N'Fare', 20, N'')
INSERT [dbo].[Demirbaslar] ([DemirbasNo], [UrunId], [DemirbasKodu], [DemirbasAdi], [DemirbasAdedi], [DemirbasOzellikleri]) VALUES (5, 4, N'1.1.1.5', N'Fare', 20, N'')
SET IDENTITY_INSERT [dbo].[Demirbaslar] OFF
SET IDENTITY_INSERT [dbo].[Departmanlar] ON 

INSERT [dbo].[Departmanlar] ([DepartmanId], [DepartmanAdi]) VALUES (1, N'Uretim')
INSERT [dbo].[Departmanlar] ([DepartmanId], [DepartmanAdi]) VALUES (2, N'AR-GE')
INSERT [dbo].[Departmanlar] ([DepartmanId], [DepartmanAdi]) VALUES (3, N'Yonetim')
INSERT [dbo].[Departmanlar] ([DepartmanId], [DepartmanAdi]) VALUES (4, N'Halkla Iliskiler')
INSERT [dbo].[Departmanlar] ([DepartmanId], [DepartmanAdi]) VALUES (5, N'Lojistik')
SET IDENTITY_INSERT [dbo].[Departmanlar] OFF
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [Sifre], [SonGirisTarihi], [Silindi]) VALUES (1, N'mineyaman', N'81dc9bdb52d04dc20036dbd8313ed055', CAST(N'2017-12-25 18:35:00' AS SmallDateTime), 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [Sifre], [SonGirisTarihi], [Silindi]) VALUES (2, N'selennurdilsiz', N'827ccb0eea8a706c4c34a16891f84e7b', CAST(N'2017-12-25 18:31:00' AS SmallDateTime), 0)
INSERT [dbo].[Kullanicilar] ([KullaniciId], [KullaniciAdi], [Sifre], [SonGirisTarihi], [Silindi]) VALUES (3, N'edademir', N'E10ADC3949BA59ABBE56E057F20F883E', CAST(N'2018-12-26 21:30:00' AS SmallDateTime), 0)
SET IDENTITY_INSERT [dbo].[KullaniciRol] ON 

INSERT [dbo].[KullaniciRol] ([KullaniciRolId], [KullaniciId], [RolId]) VALUES (15, 1, 1)
INSERT [dbo].[KullaniciRol] ([KullaniciRolId], [KullaniciId], [RolId]) VALUES (16, 2, 2)
INSERT [dbo].[KullaniciRol] ([KullaniciRolId], [KullaniciId], [RolId]) VALUES (17, 3, 3)
SET IDENTITY_INSERT [dbo].[KullaniciRol] OFF
SET IDENTITY_INSERT [dbo].[Personeller] ON 

INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (1, N'MİNE', N'YAMAN')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (2, N'SELENNUR', N'DİLSİZ')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (3, N'AHMET', N'YILMAZ')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (4, N'ESRA', N'ÖZDEMİR')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (5, N'BERKAY', N'GENÇ')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (6, N'ONUR', N'KARA')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (7, N'SİBEL', N'KAYA')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (8, N'ALEYNA', N'YALÇIN')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (9, N'EREN', N'TÜRK')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (10, N'SELİM', N'ÖZTÜRK')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (11, N'TUĞBA', N'KESKİN')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (12, N'EDA', N'DEMİR')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (13, N'BURAK', N'GÜZEL')
INSERT [dbo].[Personeller] ([PersonelId], [Ad], [Soyad]) VALUES (14, N'SERKAN', N'BULUT')
SET IDENTITY_INSERT [dbo].[Personeller] OFF
SET IDENTITY_INSERT [dbo].[Roller] ON 

INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (1, N'Admin')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (2, N'SatisSorumlusu')
INSERT [dbo].[Roller] ([RolId], [RolAdi]) VALUES (3, N'DepartmanYetkilisi')
SET IDENTITY_INSERT [dbo].[Roller] OFF
SET IDENTITY_INSERT [dbo].[Sirketler] ON 

INSERT [dbo].[Sirketler] ([SirketId], [SirketAdi]) VALUES (1, N'MİNSEL')
SET IDENTITY_INSERT [dbo].[Sirketler] OFF
SET IDENTITY_INSERT [dbo].[Urun_Stok] ON 

INSERT [dbo].[Urun_Stok] ([StokId], [UrunId], [Stok]) VALUES (1, 1, 0)
INSERT [dbo].[Urun_Stok] ([StokId], [UrunId], [Stok]) VALUES (2, 2, 0)
INSERT [dbo].[Urun_Stok] ([StokId], [UrunId], [Stok]) VALUES (3, 3, 159)
INSERT [dbo].[Urun_Stok] ([StokId], [UrunId], [Stok]) VALUES (4, 4, 60)
SET IDENTITY_INSERT [dbo].[Urun_Stok] OFF
SET IDENTITY_INSERT [dbo].[Urunler] ON 

INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [UrunBirimFiyati], [SatinAlinmaTarihi], [UrunToptanFiyati], [SatinAlinilanKurum], [Silindi]) VALUES (1, N'Bilgisayar', 24.0000, CAST(N'2017-12-19 00:00:00' AS SmallDateTime), 90.0000, N'Teknosa', 0)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [UrunBirimFiyati], [SatinAlinmaTarihi], [UrunToptanFiyati], [SatinAlinilanKurum], [Silindi]) VALUES (2, N'Ofis Tİpi Sandalye', 12.0000, CAST(N'2017-12-19 00:00:00' AS SmallDateTime), 100.0000, N'Tekzen', 0)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [UrunBirimFiyati], [SatinAlinmaTarihi], [UrunToptanFiyati], [SatinAlinilanKurum], [Silindi]) VALUES (3, N'Projeksiyon', 250.0000, CAST(N'2017-12-25 00:00:00' AS SmallDateTime), 600.0000, N'Yansıt Projeksiyon', 0)
INSERT [dbo].[Urunler] ([UrunId], [UrunAdi], [UrunBirimFiyati], [SatinAlinmaTarihi], [UrunToptanFiyati], [SatinAlinilanKurum], [Silindi]) VALUES (4, N'Fare', 5.0000, CAST(N'2017-12-25 00:00:00' AS SmallDateTime), 20.0000, N'Vatan Computer', 0)
SET IDENTITY_INSERT [dbo].[Urunler] OFF
SET IDENTITY_INSERT [dbo].[Zimmetler] ON 

INSERT [dbo].[Zimmetler] ([ZimmetId], [PersonelId], [DepartmanId]) VALUES (1, 1, 1)
INSERT [dbo].[Zimmetler] ([ZimmetId], [PersonelId], [DepartmanId]) VALUES (2, 2, 2)
SET IDENTITY_INSERT [dbo].[Zimmetler] OFF
ALTER TABLE [dbo].[DemirbasDepartman]  WITH NOCHECK ADD  CONSTRAINT [FK_Demirbas_Departman_Demirbaslar] FOREIGN KEY([DemirbasId])
REFERENCES [dbo].[Demirbaslar] ([DemirbasNo])
GO
ALTER TABLE [dbo].[DemirbasDepartman] CHECK CONSTRAINT [FK_Demirbas_Departman_Demirbaslar]
GO
ALTER TABLE [dbo].[DemirbasDepartman]  WITH NOCHECK ADD  CONSTRAINT [FK_Demirbas_Departman_Zimmetler] FOREIGN KEY([ZimmetId])
REFERENCES [dbo].[Zimmetler] ([ZimmetId])
GO
ALTER TABLE [dbo].[DemirbasDepartman] CHECK CONSTRAINT [FK_Demirbas_Departman_Zimmetler]
GO
ALTER TABLE [dbo].[Demirbaslar]  WITH NOCHECK ADD  CONSTRAINT [FK_Demirbaslar_Urunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Demirbaslar] CHECK CONSTRAINT [FK_Demirbaslar_Urunler]
GO
ALTER TABLE [dbo].[Departmanlar]  WITH NOCHECK ADD  CONSTRAINT [FK_Departmanlar_Sirketler] FOREIGN KEY([DepartmanId])
REFERENCES [dbo].[Sirketler] ([SirketId])
GO
ALTER TABLE [dbo].[Departmanlar] CHECK CONSTRAINT [FK_Departmanlar_Sirketler]
GO
ALTER TABLE [dbo].[Kullanicilar]  WITH NOCHECK ADD  CONSTRAINT [FK_Kullanicilar_Personeller] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Personeller] ([PersonelId])
GO
ALTER TABLE [dbo].[Kullanicilar] CHECK CONSTRAINT [FK_Kullanicilar_Personeller]
GO
ALTER TABLE [dbo].[KullaniciRol]  WITH NOCHECK ADD  CONSTRAINT [FK_Kullanici_Rol_Kullanicilar] FOREIGN KEY([KullaniciId])
REFERENCES [dbo].[Kullanicilar] ([KullaniciId])
GO
ALTER TABLE [dbo].[KullaniciRol] CHECK CONSTRAINT [FK_Kullanici_Rol_Kullanicilar]
GO
ALTER TABLE [dbo].[KullaniciRol]  WITH NOCHECK ADD  CONSTRAINT [FK_Kullanici_Rol_Roller] FOREIGN KEY([RolId])
REFERENCES [dbo].[Roller] ([RolId])
GO
ALTER TABLE [dbo].[KullaniciRol] CHECK CONSTRAINT [FK_Kullanici_Rol_Roller]
GO
ALTER TABLE [dbo].[Urun_Stok]  WITH NOCHECK ADD  CONSTRAINT [FK_Urun_Stok_Urunler] FOREIGN KEY([UrunId])
REFERENCES [dbo].[Urunler] ([UrunId])
GO
ALTER TABLE [dbo].[Urun_Stok] CHECK CONSTRAINT [FK_Urun_Stok_Urunler]
GO
ALTER TABLE [dbo].[Zimmetler]  WITH NOCHECK ADD  CONSTRAINT [FK_Zimmetler_Departmanlar] FOREIGN KEY([DepartmanId])
REFERENCES [dbo].[Departmanlar] ([DepartmanId])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Zimmetler] CHECK CONSTRAINT [FK_Zimmetler_Departmanlar]
GO
ALTER TABLE [dbo].[Zimmetler]  WITH NOCHECK ADD  CONSTRAINT [FK_Zimmetler_Personeller] FOREIGN KEY([PersonelId])
REFERENCES [dbo].[Personeller] ([PersonelId])
GO
ALTER TABLE [dbo].[Zimmetler] CHECK CONSTRAINT [FK_Zimmetler_Personeller]
GO
/****** Object:  StoredProcedure [dbo].[sp_DemirbasDuzenle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DemirbasDuzenle]
(
@demirbasNo int,
@sirketid int,
@departmanId int,
@demirbasAdedi int,
@demirbasOzellikleri text
)
AS
DECLARE @demirbasKod nvarchar(50)
Update Demirbaslar Set DemirbasAdedi=@demirbasAdedi,DemirbasOzellikleri=@demirbasOzellikleri WHERE DemirbasNo=@demirbasNo


DECLARE @demirbasId int
SET @demirbasKod = (SELECT [dbo].[fnc_DemirbasKodOlustur](@departmanId,@demirbasNo))
UPDATE Demirbaslar SET DemirbasKodu = @demirbasKod WHERE DemirbasNo = @demirbasNo


GO
/****** Object:  StoredProcedure [dbo].[sp_DemirbasEkle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_DemirbasEkle]
(
@departmanId int,
@sirketid int,
@urunId int,
@demirbasAdedi int,
@demirbasOzellikler text
)
AS
DECLARE @demirbasKod nvarchar(50)
DECLARE @urunAdi nvarchar(250)

SET @urunAdi=(SELECT u.UrunAdi FROM urunler u where UrunId=@urunId)

INSERT INTO Demirbaslar(DemirbasAdi,DemirbasAdedi,DemirbasOzellikleri,UrunId) VALUES(@urunAdi,@demirbasAdedi,@demirbasOzellikler,@urunId)


DECLARE @demirbasId int
SET @demirbasId = (SELECT TOP(1) DemirbasNo FROM Demirbaslar ORDER BY DemirbasNo DESC)
SET @demirbasKod = (SELECT [dbo].[fnc_DemirbasKodOlustur](@departmanId,@demirbasId))
UPDATE Demirbaslar SET DemirbasKodu = @demirbasKod WHERE DemirbasNo = @demirbasId


GO
/****** Object:  StoredProcedure [dbo].[sp_Deparmandaki_Demirbaslar01]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Deparmandaki_Demirbaslar01](@DepartmanId int)
as

Select do.DemirbasDepartmanId,d.DemirbasKodu,d.DemirbasAdi,do.Adet FROM Zimmetler z inner join Departmanlar de on z.DepartmanId = de.DepartmanId inner join DemirbasDepartman do on z.ZimmetId=do.ZimmetId inner join Personeller p  on p.PersonelId=z.PersonelId inner join Demirbaslar d on do.DemirbasId=d.DemirbasNo where z.DepartmanId=@DepartmanId


GO
/****** Object:  StoredProcedure [dbo].[sp_DepartmanaDemirbasEkle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_DepartmanaDemirbasEkle](@DemirbasId int,@DepartmanId int,@Adet int)
as
Declare @ZimmetId int 
Set @ZimmetId = (Select top(1) ZimmetId from Zimmetler where DepartmanId=@DepartmanId)
Insert into DemirbasDepartman(DemirbasId,Adet,ZimmetId) Values(@DemirbasId,@Adet,@ZimmetId)
Declare @DemirbasDepartmanId int
SET @DemirbasDepartmanId = (SELECT TOP(1) DemirbasDepartmanId From DemirbasDepartman Order by DemirbasDepartmanId desc )


GO
/****** Object:  StoredProcedure [dbo].[sp_Departmandaki_Demirbaslar02]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_Departmandaki_Demirbaslar02](@DepartmanId int)
as

Select do.DemirbasDepartmanId,d.DemirbasKodu,d.DemirbasAdi,do.Adet FROM Zimmetler z inner join Departmanlar de on z.DepartmanId = de.DepartmanId inner join DemirbasDepartman do on z.ZimmetId=do.ZimmetId inner join Personeller p  on p.PersonelId = z.PersonelId inner join Demirbaslar d on do.DemirbasId=d.DemirbasNo where z.DepartmanId=@DepartmanId


GO
/****** Object:  StoredProcedure [dbo].[sp_DepartmanEkle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_DepartmanEkle](@DepartmanAdi nvarchar(50),@SirketId int)
as
Insert into Departmanlar Values(@DepartmanAdi)
DECLARE @DepartmanId int 
SET @DepartmanId=(Select Top(1) departmanId From Departmanlar order by DepartmanId Desc)
Insert into Sirketler(SirketId) Values(@SirketId)


GO
/****** Object:  StoredProcedure [dbo].[sp_DepartmanGuncelle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[sp_DepartmanGuncelle](@DepartmanId int, @DepartmanAdi nvarchar(50),@PersonelId int)
as
Update Departmanlar set DepartmanAdi=@DepartmanAdi where DepartmanId=@DepartmanId
Update Zimmetler Set PersonelId=@PersonelId where DepartmanId=@DepartmanId


GO
/****** Object:  StoredProcedure [dbo].[sp_personel_Demirbaslar]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_personel_Demirbaslar](@PersonelId int)
as

Select do.DemirbasDepartmanId,d.DemirbasKodu,d.DemirbasAdi,do.Adet FROM Zimmetler z inner join Departmanlar de on z.DepartmanId = de.DepartmanId inner join DemirbasDepartman do on z.ZimmetId=do.ZimmetId inner join Personeller p  on p.PersonelId=z.PersonelId inner join Demirbaslar d on do.DemirbasId=d.DemirbasNo where p.PersonelId=@PersonelId


GO
/****** Object:  StoredProcedure [dbo].[sp_personel_Demirbaslar1]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[sp_personel_Demirbaslar1](@PersonelId int)
as

Select do.DemirbasDepartmanId,d.DemirbasKodu,d.DemirbasAdi,do.Adet FROM Zimmetler z inner join Departmanlar de on z.DepartmanId = de.DepartmanId inner join DemirbasDepartman do on z.ZimmetId=do.ZimmetId inner join Personeller p   on p.PersonelId=z.PersonelId inner join Demirbaslar d on do.DemirbasId=d.DemirbasNo where p.PersonelId=@PersonelId


GO
/****** Object:  StoredProcedure [dbo].[sp_PersonelEkle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sp_PersonelEkle]
(
@personelSoyad nvarchar(50)
)
AS
DECLARE @personelId nvarchar(50)
DECLARE @personelAdi nvarchar(250)

SET @personelAdi=(SELECT p.Ad FROM Personeller p where PersonelId=@personelId)

INSERT INTO Personeller(PersonelId,Ad) VALUES(@personelId,@personelAdi)


GO
/****** Object:  StoredProcedure [dbo].[sp_UrunEkle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_UrunEkle](@UrunAdi nvarchar(50),@UrunBirimFiyati money,@Stok int,@SatinAlinmaTarihi datetime,@UrunToptanFiyati money,@SatinAlinilanKurum nvarchar(50))
As
INSERT INTO [dbo].[Urunler]
           ([UrunAdi],
		   [UrunBirimFiyati],
		   [SatinAlinmaTarihi],
		   [UrunToptanFiyati],
		   [SatinAlinilanKurum]
           )
     VALUES
           (@UrunAdi
           ,@UrunBirimFiyati,
		   @SatinAlinmaTarihi,
		   @UrunToptanFiyati
		   ,@SatinAlinilanKurum
           )
DECLARE @UrunId int
SET @UrunId=(Select TOP(1) UrunId from Urunler order by UrunId desc)
INSERT INTO Urun_Stok (Stok,UrunId) values(@Stok,@UrunId)


GO
/****** Object:  StoredProcedure [dbo].[sp_UrunGuncelle]    Script Date: 27.12.2018 12:26:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create procedure [dbo].[sp_UrunGuncelle](@UrunId int,@UrunAdi nvarchar(50),@UrunBirimFiyati money,@Stok int,@SatinAlinmaTarihi datetime,@UrunToptanFiyati money,@SatinAlinilanKurum nvarchar(50))
As
Update [dbo].[Urunler]
           Set [UrunAdi] =@UrunAdi,[UrunBirimFiyati]=@UrunBirimFiyati,[SatinAlinmaTarihi]=@SatinAlinmaTarihi, [UrunToptanFiyati]= @UrunToptanFiyati,
		   [SatinAlinilanKurum]= @SatinAlinilanKurum WHERE UrunId=@UrunId
           
     
Update Urun_Stok SET Stok=@Stok where UrunId=@UrunId


GO
