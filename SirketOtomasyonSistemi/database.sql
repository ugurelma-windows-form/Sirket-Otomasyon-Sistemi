USE [CompanyManager]
GO
/****** Object:  Table [dbo].[ADepartmanı]    Script Date: 16.03.2025 11:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ADepartmanı](
	[TCKimlikNo] [char](11) NOT NULL,
	[EklenmeTarihi] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[TCKimlikNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Departman]    Script Date: 16.03.2025 11:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departman](
	[DepartmanIsmi] [nvarchar](20) NOT NULL,
	[DepartmanTlf] [char](10) NULL,
	[DepartmanEmail] [nvarchar](40) NULL,
	[YoneticiTC] [char](11) NOT NULL,
	[BaslamaTarihi] [smalldatetime] NULL,
 CONSTRAINT [PK_Departman] PRIMARY KEY CLUSTERED 
(
	[DepartmanIsmi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Email]    Script Date: 16.03.2025 11:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Email](
	[IslemID] [int] NOT NULL,
	[GonderenAdSoyad] [nvarchar](30) NOT NULL,
	[GonderenEmail] [nvarchar](40) NOT NULL,
	[AliciEmail] [nvarchar](40) NOT NULL,
	[Baslik] [nvarchar](30) NULL,
	[Mesaj] [nvarchar](500) NOT NULL,
	[Tarih] [smalldatetime] NOT NULL,
 CONSTRAINT [PK_Email] PRIMARY KEY CLUSTERED 
(
	[IslemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personel]    Script Date: 16.03.2025 11:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personel](
	[TCKimlikNo] [char](11) NOT NULL,
	[Sifre] [smallint] NOT NULL,
	[AdSoyad] [nvarchar](30) NOT NULL,
	[TlfNo] [char](10) NULL,
	[Email] [nvarchar](40) NULL,
	[Adresi] [nvarchar](40) NULL,
	[Cinsiyeti] [nchar](5) NOT NULL,
	[DogumTarihi] [date] NOT NULL,
	[Maasi] [int] NULL,
	[YoneticiMi] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[TCKimlikNo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projeler]    Script Date: 16.03.2025 11:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projeler](
	[ProjeID] [smallint] NOT NULL,
	[ProjeBaskaniTC] [char](11) NOT NULL,
	[ProjeIsmi] [nvarchar](50) NOT NULL,
	[ProjeTlfNo] [char](10) NULL,
	[ProjeEmail] [nvarchar](40) NULL,
	[ProjeButce] [int] NULL,
	[ProjeMaliyet] [int] NULL,
	[ProjeBaslamaTarihi] [smalldatetime] NOT NULL,
 CONSTRAINT [PK__Projeler__DDFB2A718503B325] PRIMARY KEY CLUSTERED 
(
	[ProjeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ProjePersonel]    Script Date: 16.03.2025 11:17:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProjePersonel](
	[ProjeID] [smallint] NOT NULL,
	[PersonelTC] [char](11) NOT NULL,
	[CalismaSaati] [smallint] NULL,
	[PersonelHakkinda] [nvarchar](60) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SirketHakkinda]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SirketHakkinda](
	[AdminID] [char](11) NOT NULL,
	[Sifre] [smallint] NOT NULL,
	[AdSoyad] [nvarchar](30) NOT NULL,
	[KurulusTarihi] [date] NOT NULL,
	[SirketIsmi] [nvarchar](40) NOT NULL,
	[LogoYolu] [nvarchar](200) NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Departman] ([DepartmanIsmi], [DepartmanTlf], [DepartmanEmail], [YoneticiTC], [BaslamaTarihi]) VALUES (N'A Departmanı', N'2126401010', N'adepartmani@gmail.com', N'33333333333', CAST(N'2024-03-28T11:08:00' AS SmallDateTime))
GO
INSERT [dbo].[Personel] ([TCKimlikNo], [Sifre], [AdSoyad], [TlfNo], [Email], [Adresi], [Cinsiyeti], [DogumTarihi], [Maasi], [YoneticiMi]) VALUES (N'11111111111', 1111, N'Simge Kozalak', N'5452020551', N'simgekozalak@gmail.com', N'İstanbul/Fatih', N'Kadın', CAST(N'1995-02-15' AS Date), 10000, 1)
INSERT [dbo].[Personel] ([TCKimlikNo], [Sifre], [AdSoyad], [TlfNo], [Email], [Adresi], [Cinsiyeti], [DogumTarihi], [Maasi], [YoneticiMi]) VALUES (N'22222222222', 2222, N'Buse Bulut', N'5323640540', N'busebulut@gmail.com', N'Ankara/Çankaya', N'Kadın', CAST(N'2003-10-26' AS Date), 10000, 0)
INSERT [dbo].[Personel] ([TCKimlikNo], [Sifre], [AdSoyad], [TlfNo], [Email], [Adresi], [Cinsiyeti], [DogumTarihi], [Maasi], [YoneticiMi]) VALUES (N'33333333333', 3333, N'Semih Koç', N'5338604124', N'semihkoc@gmail.com', N'İzmir/Karşıyaka', N'Erkek', CAST(N'1990-06-15' AS Date), 25000, 0)
INSERT [dbo].[Personel] ([TCKimlikNo], [Sifre], [AdSoyad], [TlfNo], [Email], [Adresi], [Cinsiyeti], [DogumTarihi], [Maasi], [YoneticiMi]) VALUES (N'55555555555', 5555, N'Kemal Solak', N'5551021544', N'kemalsolak@gmail.com', N'Muğla/Bodrum', N'Erkek', CAST(N'1984-06-22' AS Date), 24000, 0)
INSERT [dbo].[Personel] ([TCKimlikNo], [Sifre], [AdSoyad], [TlfNo], [Email], [Adresi], [Cinsiyeti], [DogumTarihi], [Maasi], [YoneticiMi]) VALUES (N'66666666666', 6666, N'Ayşe Kozalak', N'5468902011', N'aysekozalak@gmail.com', N'Bursa/Orhangazi', N'Kadın', CAST(N'2001-11-06' AS Date), 14000, 0)
GO
INSERT [dbo].[Projeler] ([ProjeID], [ProjeBaskaniTC], [ProjeIsmi], [ProjeTlfNo], [ProjeEmail], [ProjeButce], [ProjeMaliyet], [ProjeBaslamaTarihi]) VALUES (1, N'11111111111', N'A Projesi', N'5412454010', N'aporjesi@gmail.com', 250000, 275000, CAST(N'2024-03-26T14:41:00' AS SmallDateTime))
GO
INSERT [dbo].[ProjePersonel] ([ProjeID], [PersonelTC], [CalismaSaati], [PersonelHakkinda]) VALUES (1, N'55555555555', 10, N'safsdsad')
GO
INSERT [dbo].[SirketHakkinda] ([AdminID], [Sifre], [AdSoyad], [KurulusTarihi], [SirketIsmi], [LogoYolu]) VALUES (N'12345678901', 1111, N'Selim Özsoy', CAST(N'2024-03-10' AS Date), N'Özsoy Prefabrik Grup', N'C:\Users\elmau\OneDrive\Masaüstü\Dersler\Visual Studio\Proje 3\Company\Company\Resimler\logoexample.jpg')
GO
ALTER TABLE [dbo].[Personel] ADD  DEFAULT ((0)) FOR [YoneticiMi]
GO
ALTER TABLE [dbo].[ADepartmanı]  WITH CHECK ADD FOREIGN KEY([TCKimlikNo])
REFERENCES [dbo].[Personel] ([TCKimlikNo])
GO
ALTER TABLE [dbo].[Departman]  WITH CHECK ADD  CONSTRAINT [FK_Departman_Personel] FOREIGN KEY([YoneticiTC])
REFERENCES [dbo].[Personel] ([TCKimlikNo])
GO
ALTER TABLE [dbo].[Departman] CHECK CONSTRAINT [FK_Departman_Personel]
GO
ALTER TABLE [dbo].[Projeler]  WITH CHECK ADD  CONSTRAINT [FK_Projeler_Personel] FOREIGN KEY([ProjeBaskaniTC])
REFERENCES [dbo].[Personel] ([TCKimlikNo])
GO
ALTER TABLE [dbo].[Projeler] CHECK CONSTRAINT [FK_Projeler_Personel]
GO
ALTER TABLE [dbo].[ProjePersonel]  WITH CHECK ADD  CONSTRAINT [FK_ProjePersonel_Personel] FOREIGN KEY([PersonelTC])
REFERENCES [dbo].[Personel] ([TCKimlikNo])
GO
ALTER TABLE [dbo].[ProjePersonel] CHECK CONSTRAINT [FK_ProjePersonel_Personel]
GO
ALTER TABLE [dbo].[ProjePersonel]  WITH CHECK ADD  CONSTRAINT [FK_ProjePersonel_Projeler] FOREIGN KEY([ProjeID])
REFERENCES [dbo].[Projeler] ([ProjeID])
GO
ALTER TABLE [dbo].[ProjePersonel] CHECK CONSTRAINT [FK_ProjePersonel_Projeler]
GO
/****** Object:  StoredProcedure [dbo].[AddDepartman]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[AddDepartman] @table_name NVARCHAR(20) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'CREATE TABLE ' + QUOTENAME(@table_name) + ' (TCKimlikNo char(11) Primary Key, EklenmeTarihi date, FOREIGN KEY (TCKimlikNo) REFERENCES Personel(TCKimlikNo))';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[AddProject]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create Table Projeler (ProjeID smallint Primary Key, ProjeBaskaniTC char(11), ProjeIsmi nvarchar(50), ProjeTlfNo char(10), ProjeEmail nvarchar(40), ProjeButce int, ProjeMaliyet int)
CREATE Procedure [dbo].[AddProject] (@ProjeID smallint, @ProjeBaskaniTC char(11), @ProjeIsmi nvarchar(50), @ProjeTlfNo char(10), @ProjeEmail nvarchar(40), @ProjeButce int, @ProjeMaliyet int)
	as insert into Projeler values (@ProjeID, @ProjeBaskaniTC, @ProjeIsmi, @ProjeTlfNo, @ProjeEmail, @ProjeButce, @ProjeMaliyet, GETDATE());

GO
/****** Object:  StoredProcedure [dbo].[AddProjePersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[AddProjePersonel] (@number smallint, @tckimlikno char(11), @detay nvarchar(60)) as insert into ProjePersonel values (@number, @tckimlikno, 0, @detay)
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartman]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DeleteDepartman] (@DepartmanIsmi nvarchar(20)) as Delete from Departman where DepartmanIsmi = @DepartmanIsmi;
GO
/****** Object:  StoredProcedure [dbo].[DeleteDepartmanPersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteDepartmanPersonel] @tc_kimlik_no char(11), @table_name NVARCHAR(20) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'delete from ' + QUOTENAME(@table_name) + ' where TCKimlikNo = '+@tc_kimlik_no+'';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[DeleteEmail]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DeleteEmail] (@id int) as delete from Email where IslemID = @id;
GO
/****** Object:  StoredProcedure [dbo].[DeletePersonelInfo]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE DepPersonelDelete
--    @table_name NVARCHAR(20),
--    @TCKimlikNo CHAR(11)
--AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);

--    SET @sql = 'DELETE FROM ' + QUOTENAME(@table_name) + ' WHERE TCKimlikNo = ''' + @TCKimlikNo + '''';

--    EXEC sp_executesql @sql;
--END;
--Create Table Personel (TCKimlikNo char(11) Primary Key not null, Sifre smallint not null, AdSoyad nvarchar(30) not null, TlfNo char(10), Email nvarchar(40), Adresi nvarchar(40), Cinsiyeti nchar(5) not null, DogumTarihi date not null, Maasi int, YoneticiMi bit Default 0);
--insert into Personel values ('48205092932', 4455, 'Uğur Elma', '5315776809', 'elmaugur2004@gmail.com', 'Balıkesir/Bandırma/Kayacık/Toki', 'Erkek', '2004.02.29', null, 0);
Create Procedure [dbo].[DeletePersonelInfo] (@TCKimlikNo char(11)) as 
	Delete from Personel where TCKimlikNo = @TCKimlikNo;
GO
/****** Object:  StoredProcedure [dbo].[DeleteProject]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DeleteProject] (@ProjeID smallint)
	as Delete from Projeler where ProjeID = @ProjeID;

GO
/****** Object:  StoredProcedure [dbo].[DeleteProjePersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[DeleteProjePersonel] (@number smallint, @tckimlikno char(11)) as delete from ProjePersonel where ProjeID = @number and PersonelTC = @tckimlikno; 
GO
/****** Object:  StoredProcedure [dbo].[DeleteYonetici]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[DeleteYonetici] (@TCKimlikNo char(11)) as 
	update Personel set YoneticiMi = 0 where TCKimlikNo = @TCKimlikNo;
GO
/****** Object:  StoredProcedure [dbo].[DestroyDepartman]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DestroyDepartman] @table_name NVARCHAR(20) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'Drop TABLE ' + QUOTENAME(@table_name);
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[EditProject]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create Table Projeler (ProjeID smallint Primary Key, ProjeBaskaniTC char(11), ProjeIsmi nvarchar(50), ProjeTlfNo char(10), ProjeEmail nvarchar(40), ProjeButce int, ProjeMaliyet int)
Create Procedure [dbo].[EditProject] (@ProjeID smallint, @ProjeBaskaniTC char(11), @ProjeIsmi nvarchar(50), @ProjeTlfNo char(10), @ProjeEmail nvarchar(40), @ProjeButce int, @ProjeMaliyet int)
	as update Projeler set ProjeBaskaniTC = @ProjeBaskaniTC, ProjeIsmi = @ProjeIsmi, ProjeTlfNo = @ProjeTlfNo, ProjeEmail = @ProjeEmail, ProjeButce = @ProjeButce, ProjeMaliyet = @ProjeMaliyet where ProjeID = @ProjeID;

GO
/****** Object:  StoredProcedure [dbo].[EditProjePersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[EditProjePersonel] (@number smallint, @tckimlikno char(11), @saat smallint, @detay nvarchar(60)) as update ProjePersonel set CalismaSaati = @saat, PersonelHakkinda = @detay where ProjeID = @number and PersonelTC = @tckimlikno; 
GO
/****** Object:  StoredProcedure [dbo].[EmailKontrol]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[EmailKontrol] @email nvarchar(40), @table_name NVARCHAR(9), @column NVARCHAR(15) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'Select ' + @column + ' from ' + @table_name + ' where ' + @column + ' = ''' + @email + ''';'
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[FindPersonelInfo]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE DepPersonelDelete
--    @table_name NVARCHAR(20),
--    @TCKimlikNo CHAR(11)
--AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);

--    SET @sql = 'DELETE FROM ' + QUOTENAME(@table_name) + ' WHERE TCKimlikNo = ''' + @TCKimlikNo + '''';

--    EXEC sp_executesql @sql;
--END;
--Create Table Personel (TCKimlikNo char(11) Primary Key not null, Sifre smallint not null, AdSoyad nvarchar(30) not null, TlfNo char(10), Email nvarchar(40), Adresi nvarchar(40), Cinsiyeti nchar(5) not null, DogumTarihi date not null, Maasi int, YoneticiMi bit Default 0);
--insert into Personel values ('48205092932', 4455, 'Uğur Elma', '5315776809', 'elmaugur2004@gmail.com', 'Balıkesir/Bandırma/Kayacık/Toki', 'Erkek', '2004.02.29', null, 0);
Create Procedure [dbo].[FindPersonelInfo] (@TCKimlikNo char(11)) as 
	Select * from Personel where TCKimlikNo = @TCKimlikNo;
GO
/****** Object:  StoredProcedure [dbo].[FindProject]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[FindProject] (@ProjeID smallint)
	as Select * from Projeler where ProjeID = @ProjeID;

GO
/****** Object:  StoredProcedure [dbo].[FindProjePersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[FindProjePersonel] (@number smallint, @tckimlikno char(11)) as select * from ProjePersonel where ProjeID = @number and PersonelTC = @tckimlikno; 
GO
/****** Object:  StoredProcedure [dbo].[GetCaptainName]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetCaptainName] (@id smallint) as select AdSoyad from Personel where TCKimlikNo in (Select ProjeBaskaniTC from Projeler where ProjeID = @id)
GO
/****** Object:  StoredProcedure [dbo].[GetDepartman]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetDepartman] (@DepartmanIsmi nvarchar(20)) as Select * from Departman where DepartmanIsmi = @DepartmanIsmi;
GO
/****** Object:  StoredProcedure [dbo].[GetDepartmanName]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDepartmanName] @row int, @column nvarchar(13), @table nvarchar(9) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'SELECT ' + @column + ' FROM  ' + @table + '  ORDER BY ' + @column + ' OFFSET ' + CAST(@row AS NVARCHAR(10)) + ' ROW FETCH NEXT 1 ROW ONLY;';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetDepartmanPersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetDepartmanPersonel] @table_name NVARCHAR(20) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'Select A.TCKimlikNo, A.AdSoyad, A.TlfNo, A.Email, A.Adresi, b.EklenmeTarihi from Personel as A inner join ' + @table_name + ' as B on A.TCKimlikNo = B.TCKimlikNo';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetDepartmanTable]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE AddDepartman @table_name NVARCHAR(20) AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);
--    SET @sql = 'CREATE TABLE ' + QUOTENAME(@table_name) + ' (TCKimlikNo char(11) Primary Key, EklenmeTarihi date, CalismaSaati smallint)';
--    EXEC sp_executesql @sql;
--END;
Create Procedure [dbo].[GetDepartmanTable] as Select * from Departman
GO
/****** Object:  StoredProcedure [dbo].[GetEmailandDepartman]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetEmailandDepartman] @row int,@tckimlikno char(11), @column nvarchar(15), @table nvarchar(20) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'Select * from ' + @table + ' where ' + @column + ' = ''' + @tckimlikno + ''' Order by '+ @column +' Offset ' + CAST(@row AS NVARCHAR(10)) + ' Row fetch next 1 row only;';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetEmailTable]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[GetEmailTable] (@aliciEmail nvarchar(40)) as Select IslemID, GonderenEmail, AliciEmail, Baslik, Tarih from Email where AliciEmail = @aliciEmail;
GO
/****** Object:  StoredProcedure [dbo].[GetManagerName]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetManagerName] @table_name NVARCHAR(20) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'Select AdSoyad from Personel where TCKimlikNo in (Select YoneticiTC from Departman where DepartmanIsmi = '''+@table_name+''');';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetMyProjects]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetMyProjects] (@tckimlikno char(11)) as Select A.ProjeID, B.ProjeIsmi, B.ProjeEmail, A.CalismaSaati, A.PersonelHakkinda from ProjePersonel as A inner join Projeler as B on A.ProjeID = B.ProjeID where A.PersonelTC = @tckimlikno
GO
/****** Object:  StoredProcedure [dbo].[GetPersonelCount]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPersonelCount] @table_name NVARCHAR(20) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'Select Count(*) from ' + @table_name + ';';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetPersonelInfos]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE DepPersonelDelete
--    @table_name NVARCHAR(20),
--    @TCKimlikNo CHAR(11)
--AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);

--    SET @sql = 'DELETE FROM ' + QUOTENAME(@table_name) + ' WHERE TCKimlikNo = ''' + @TCKimlikNo + '''';

--    EXEC sp_executesql @sql;
--END;
Create Procedure [dbo].[GetPersonelInfos] as Select * from Personel
GO
/****** Object:  StoredProcedure [dbo].[GetPersonelIstatistik]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetPersonelIstatistik] as
	Select Count(TCKimlikNo), (Select Count(TCKimlikNo) from Personel where Cinsiyeti = 'Erkek'), (Select Count(TCKimlikNo) from Personel where Cinsiyeti = 'Kadın'), Sum(Maasi), (Select Sum(Maasi) from Personel where Cinsiyeti = 'Erkek'), (Select Sum(Maasi) from Personel where Cinsiyeti = 'Kadın') from Personel
GO
/****** Object:  StoredProcedure [dbo].[GetProjectCount]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetProjectCount] (@id smallint) as select COUNT(PersonelTC) from ProjePersonel where ProjeID = @id;
GO
/****** Object:  StoredProcedure [dbo].[GetProjectPersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[GetProjectPersonel] (@id smallint) as select A.PersonelTC,B.AdSoyad,B.TlfNo,B.Email,A.CalismaSaati,a.PersonelHakkinda from ProjePersonel as A inner join Personel as B on A.PersonelTC = B.TCKimlikNo where A.ProjeID = @id;
GO
/****** Object:  StoredProcedure [dbo].[GetProjects]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[GetProjects] @row int AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'SELECT * FROM Projeler ORDER BY ProjeID OFFSET ' + CAST(@row AS NVARCHAR(10)) + ' ROW FETCH NEXT 1 ROW ONLY;';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[GetSirketHakkinda]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE DepPersonelDelete
--    @table_name NVARCHAR(20),
--    @TCKimlikNo CHAR(11)
--AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);

--    SET @sql = 'DELETE FROM ' + QUOTENAME(@table_name) + ' WHERE TCKimlikNo = ''' + @TCKimlikNo + '''';

--    EXEC sp_executesql @sql;
--END;
--EXEC DepPersonelAdd 'İnsanKaynakları', '48205092932', 1;
--Select AdSoyad, TlfNo, Email, Maasi from Personel where TCKimlikNo in (Select TCKimlikNo from İnsanKaynakları);
Create Procedure [dbo].[GetSirketHakkinda] as Select * from SirketHakkinda;
GO
/****** Object:  StoredProcedure [dbo].[ReadEmail]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure [dbo].[ReadEmail] (@id int) as select * from Email where IslemID = @id;
GO
/****** Object:  StoredProcedure [dbo].[SelectProjectTable]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Create Table Projeler (ProjeID smallint Primary Key, ProjeBaskaniTC char(11), ProjeIsmi nvarchar(50), ProjeTlfNo char(10), ProjeEmail nvarchar(40), ProjeButce int, ProjeMaliyet int)
Create Procedure [dbo].[SelectProjectTable]
	as Select * from Projeler;

GO
/****** Object:  StoredProcedure [dbo].[SendEmail]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SendEmail] (@id int, @adSoyad nvarchar(30), @gonderen nvarchar(40), @alici nvarchar(40), @baslik nvarchar(30), @mesaj nvarchar(500)) as
	insert into Email values(@id, @adSoyad, @gonderen, @alici, @baslik, @mesaj, GETDATE());
GO
/****** Object:  StoredProcedure [dbo].[SetDepartman]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SetDepartman] (@DepartmanIsmi nvarchar(20), @DepartmanTlf char(10), @DepartmanEmail nvarchar(40), @YoneticiTC char(11), @BaslamaTarihi smalldatetime) as insert into Departman values(@DepartmanIsmi, @DepartmanTlf, @DepartmanEmail, @YoneticiTC, @BaslamaTarihi);
GO
/****** Object:  StoredProcedure [dbo].[SetDepartmanPersonel]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[SetDepartmanPersonel] (@tc_kimlik_no CHAR(11), @table_name NVARCHAR(20)) AS
BEGIN
    DECLARE @sql NVARCHAR(MAX);
    SET @sql = 'insert into ' + QUOTENAME(@table_name) + ' values ('+@tc_kimlik_no+', GetDate())';
    EXEC sp_executesql @sql;
END;
GO
/****** Object:  StoredProcedure [dbo].[SetPersonelInfo]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE DepPersonelDelete
--    @table_name NVARCHAR(20),
--    @TCKimlikNo CHAR(11)
--AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);

--    SET @sql = 'DELETE FROM ' + QUOTENAME(@table_name) + ' WHERE TCKimlikNo = ''' + @TCKimlikNo + '''';

--    EXEC sp_executesql @sql;
--END;
--Create Table Personel (TCKimlikNo char(11) Primary Key not null, Sifre smallint not null, AdSoyad nvarchar(30) not null, TlfNo char(10), Email nvarchar(40), Adresi nvarchar(40), Cinsiyeti nchar(5) not null, DogumTarihi date not null, Maasi int, YoneticiMi bit Default 0);
--insert into Personel values ('48205092932', 4455, 'Uğur Elma', '5315776809', 'elmaugur2004@gmail.com', 'Balıkesir/Bandırma/Kayacık/Toki', 'Erkek', '2004.02.29', null, 0);
Create Procedure [dbo].[SetPersonelInfo] (@TCKimlikNo char(11), @Sifre smallint, @AdSoyad nvarchar(30), @TlfNo char(10), @Email nvarchar(40), @Adresi nvarchar(40), @Cinsiyeti nchar(5), @DogumTarihi date, @Maasi int) as 
	insert into Personel values (@TCKimlikNo, @Sifre, @AdSoyad, @TlfNo, @Email, @Adresi, @Cinsiyeti, @DogumTarihi, @Maasi, 0);
GO
/****** Object:  StoredProcedure [dbo].[SetSirketHakkinda]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[SetSirketHakkinda] @adminID char(11), @adminAdSoyad nvarchar(30), @sirketIsmi nvarchar(40), @logoYolu nvarchar(200) as Update SirketHakkinda set AdSoyad = @adminAdSoyad, SirketIsmi = @sirketIsmi, LogoYolu = @logoYolu where AdminID = @adminID; 
GO
/****** Object:  StoredProcedure [dbo].[SetYonetici]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE DepPersonelDelete
--    @table_name NVARCHAR(20),
--    @TCKimlikNo CHAR(11)
--AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);

--    SET @sql = 'DELETE FROM ' + QUOTENAME(@table_name) + ' WHERE TCKimlikNo = ''' + @TCKimlikNo + '''';

--    EXEC sp_executesql @sql;
--END;
Create Procedure [dbo].[SetYonetici] (@TCKimlikNo char(11)) as 
	update Personel set YoneticiMi = 1 where TCKimlikNo = @TCKimlikNo;
GO
/****** Object:  StoredProcedure [dbo].[UpdateDepartman]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[UpdateDepartman] (@DepartmanIsmi nvarchar(20), @DepartmanTlf char(10), @DepartmanEmail nvarchar(40), @YoneticiTC char(11), @BaslamaTarihi smalldatetime) as update Departman set DepartmanTlf = @DepartmanTlf, DepartmanEmail = @DepartmanEmail, YoneticiTC = @YoneticiTC, BaslamaTarihi = @BaslamaTarihi where DepartmanIsmi = @DepartmanIsmi;
GO
/****** Object:  StoredProcedure [dbo].[UpdatePersonelInfo]    Script Date: 16.03.2025 11:17:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--CREATE PROCEDURE DepPersonelDelete
--    @table_name NVARCHAR(20),
--    @TCKimlikNo CHAR(11)
--AS
--BEGIN
--    DECLARE @sql NVARCHAR(MAX);

--    SET @sql = 'DELETE FROM ' + QUOTENAME(@table_name) + ' WHERE TCKimlikNo = ''' + @TCKimlikNo + '''';

--    EXEC sp_executesql @sql;
--END;
--Create Table Personel (TCKimlikNo char(11) Primary Key not null, Sifre smallint not null, AdSoyad nvarchar(30) not null, TlfNo char(10), Email nvarchar(40), Adresi nvarchar(40), Cinsiyeti nchar(5) not null, DogumTarihi date not null, Maasi int, YoneticiMi bit Default 0);
--insert into Personel values ('48205092932', 4455, 'Uğur Elma', '5315776809', 'elmaugur2004@gmail.com', 'Balıkesir/Bandırma/Kayacık/Toki', 'Erkek', '2004.02.29', null, 0);
Create Procedure [dbo].[UpdatePersonelInfo] (@TCKimlikNo char(11), @Sifre smallint, @AdSoyad nvarchar(30), @TlfNo char(10), @Email nvarchar(40), @Adresi nvarchar(40), @Cinsiyeti nchar(5), @DogumTarihi date, @Maasi int) as 
	update Personel set Sifre = @Sifre, AdSoyad = @AdSoyad, TlfNo = @TlfNo, Email = @Email, Adresi = @Adresi, Cinsiyeti = @Cinsiyeti, DogumTarihi = @DogumTarihi, Maasi = @Maasi where TCKimlikNo = @TCKimlikNo;
GO
