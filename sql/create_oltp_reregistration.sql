USE [OLTP_Reregistration]
GO
/****** Object:  Table [dbo].[Admissions] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admissions](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Admissions] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ApplicantDocuments] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantDocuments](
	[ApplicantID] [varchar](32) NOT NULL,
	[DocumentID] [int] NOT NULL,
	[URL] [varchar](255) NOT NULL,
 CONSTRAINT [PK_ApplicantDocuments] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC,
	[DocumentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Applicants] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Applicants](
	[ID] [varchar](32) NOT NULL,
	[NIK] [char](16) NOT NULL,
	[NISN] [char](11) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[Gender] [bit] NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[BirthRegencyID] [int] NOT NULL,
	[Religion] [int] NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[Email] [varchar](64) NOT NULL,
	[Photo] [varchar](512) NOT NULL,
	[Address] [varchar](512) NOT NULL,
	[NationalityID] [int] NOT NULL,
	[ProvinceID] [int] NOT NULL,
	[RegencyID] [int] NOT NULL,
	[SubdistrictID] [int] NOT NULL,
	[PostalCode] [varchar](8) NOT NULL,
	[SchoolID] [int] NOT NULL,
	[SchoolMajorID] [int] NOT NULL,
	[GraduationYear] [int] NOT NULL,
	[AdmissionID] [int] NOT NULL,
	[PartnerID] [int] NULL,
	[MajorID] [int] NULL,
	[Timestamp] [datetime] NOT NULL,
 CONSTRAINT [PK_Applicants] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Countries] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DocumentTypes] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DocumentTypes](
	[ID] [int] NOT NULL,
	[Name] [varchar](128) NOT NULL,
 CONSTRAINT [PK_DocumentTypes] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Faculties] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculties](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Abbreviation] [varchar](8) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Faculties] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Majors] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Majors](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[FacultyID] [int] NOT NULL,
	[StartDate] [date] NOT NULL,
	[EndDate] [date] NULL,
 CONSTRAINT [PK_Majors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Parents] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Parents](
	[ID] [int] NOT NULL,
	[Status] [varchar](4) NOT NULL,
	[FullName] [varchar](128) NOT NULL,
	[Job] [varchar](64) NOT NULL,
	[Income] [decimal](19, 4) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
	[ApplicantID] [varchar](32) NOT NULL,
 CONSTRAINT [PK_Parents] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Partners] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Partners](
	[ID] [int] NOT NULL,
	[Name] [varchar](255) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Partners] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provinces] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provinces](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
 CONSTRAINT [PK_Provinces] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Regencies] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Regencies](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[ProvinceID] [int] NOT NULL,
 CONSTRAINT [PK_Regencies] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolMajors] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolMajors](
	[ID] [int] NOT NULL,
	[Name] [varchar](128) NOT NULL,
 CONSTRAINT [PK_SchoolMajors] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Schools] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Schools](
	[ID] [int] NOT NULL,
	[NPSN] [varchar](10) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[ProvinceID] [int] NOT NULL,
	[RegencyID] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_Schools] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ReRegistrationAccounts] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ReRegistrationAccounts](
	[ID] [varchar](32) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[MajorID] [int] NOT NULL,
	[AdmissionID] [int] NOT NULL,
	[PartnerID] [int] NULL,
	[SchoolID] [int] NOT NULL,
	[ModifiedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_ReRegistrationAccounts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subdistricts] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subdistricts](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[RegencyID] [int] NOT NULL,
 CONSTRAINT [PK_Subdistricts] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ApplicantDocuments]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[ApplicantDocuments]  WITH NOCHECK ADD FOREIGN KEY([DocumentID])
REFERENCES [dbo].[DocumentTypes] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([AdmissionID])
REFERENCES [dbo].[Admissions] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([BirthRegencyID])
REFERENCES [dbo].[Regencies] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([NationalityID])
REFERENCES [dbo].[Countries] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([RegencyID])
REFERENCES [dbo].[Regencies] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([SchoolID])
REFERENCES [dbo].[Schools] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([SchoolMajorID])
REFERENCES [dbo].[SchoolMajors] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([SubdistrictID])
REFERENCES [dbo].[Subdistricts] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([ID])
REFERENCES [dbo].[ReRegistrationAccounts] ([ID])
GO
ALTER TABLE [dbo].[Majors]  WITH NOCHECK ADD FOREIGN KEY([FacultyID])
REFERENCES [dbo].[Faculties] ([ID])
GO
ALTER TABLE [dbo].[Parents]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[Regencies]  WITH NOCHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ID])
GO
ALTER TABLE [dbo].[Schools]  WITH NOCHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ID])
GO
ALTER TABLE [dbo].[Schools]  WITH NOCHECK ADD FOREIGN KEY([RegencyID])
REFERENCES [dbo].[Regencies] ([ID])
GO
ALTER TABLE [dbo].[ReRegistrationAccounts]  WITH NOCHECK ADD FOREIGN KEY([AdmissionID])
REFERENCES [dbo].[Admissions] ([ID])
GO
ALTER TABLE [dbo].[ReRegistrationAccounts]  WITH NOCHECK ADD FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([ID])
GO
ALTER TABLE [dbo].[ReRegistrationAccounts]  WITH NOCHECK ADD FOREIGN KEY([PartnerID])
REFERENCES [dbo].[Partners] ([ID])
GO
ALTER TABLE [dbo].[ReRegistrationAccounts]  WITH NOCHECK ADD FOREIGN KEY([SchoolID])
REFERENCES [dbo].[Schools] ([ID])
GO
ALTER TABLE [dbo].[Subdistricts]  WITH NOCHECK ADD FOREIGN KEY([RegencyID])
REFERENCES [dbo].[Regencies] ([ID])
GO
