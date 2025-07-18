USE [OLTP_Selection]
GO
/****** Object:  Table [dbo].[Achievements] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Achievements](
	[ID] [int] NOT NULL,
	[ApplicantID] [varchar](32) NOT NULL,
	[Name] [varchar](64) NOT NULL,
	[Type] [int] NOT NULL,
	[Output] [int] NOT NULL,
	[Scale] [int] NOT NULL,
	[Organizer] [varchar](64) NOT NULL,
	[WebURL] [varchar](255) NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_Achievement] PRIMARY KEY CLUSTERED 
(
	[ID] ASC,
	[ApplicantID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
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
/****** Object:  Table [dbo].[ApplicantAccounts] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ApplicantAccounts](
	[ID] [int] NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[Email] [varchar](64) NOT NULL,
	[PhoneNumber] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ApplicantAccounts] PRIMARY KEY CLUSTERED 
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
	[AccountID] [int] NOT NULL,
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
	[UTBKID] [int] NULL,
	[AdmissionID] [int] NOT NULL,
	[PartnerID] [int] NULL,
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
/****** Object:  Table [dbo].[EPTTests] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EPTTests](
	[ID] [int] NOT NULL,
	[Name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_EPTTest] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EPTTestScores] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EPTTestScores](
	[ApplicantID] [varchar](32) NOT NULL,
	[EPTTestID] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_EPTTestScore] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC,
	[EPTTestID] ASC
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
/****** Object:  Table [dbo].[GlobalAcademicTests] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalAcademicTests](
	[ID] [int] NOT NULL,
	[Name] [varchar](64) NOT NULL,
 CONSTRAINT [PK_GlocalAcademicTests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GlobalAcademicTestScores] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GlobalAcademicTestScores](
	[ApplicantID] [varchar](32) NOT NULL,
	[GlobalAcademicTestID] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_GlocalAcademicTestScores] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC,
	[GlobalAcademicTestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MajorQuotas] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MajorQuotas](
	[MajorID] [int] NOT NULL,
	[AdmissionID] [int] NOT NULL,
	[Quota] [int] NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NOT NULL,
 CONSTRAINT [PK_MajorQuotas] PRIMARY KEY CLUSTERED 
(
	[MajorID] ASC,
	[AdmissionID] ASC,
	[StartDate] ASC
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
/****** Object:  Table [dbo].[SchoolMajorSubjects] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolMajorSubjects](
	[SchoolMajorID] [int] NOT NULL,
	[SchoolSubjectID] [int] NOT NULL,
 CONSTRAINT [PK_SchoolMajorSubjects] PRIMARY KEY CLUSTERED 
(
	[SchoolMajorID] ASC,
	[SchoolSubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SchoolReports] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolReports](
	[ApplicantID] [varchar](32) NOT NULL,
	[SchoolMajorID] [int] NOT NULL,
	[SchoolSubjectID] [int] NOT NULL,
	[Semester] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_SchoolReports] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC,
	[SchoolMajorID] ASC,
	[SchoolSubjectID] ASC,
	[Semester] ASC
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
/****** Object:  Table [dbo].[SchoolSubjects] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SchoolSubjects](
	[ID] [int] NOT NULL,
	[Name] [varchar](128) NOT NULL,
 CONSTRAINT [PK_SchoolSubject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SelectedMajors] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SelectedMajors](
	[ApplicantID] [varchar](32) NOT NULL,
	[MajorID] [int] NOT NULL,
	[SelectionStatus] [bit] NULL
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
/****** Object:  Table [dbo].[TKATests] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKATests](
	[ID] [int] NOT NULL,
	[Name] [varchar](32) NOT NULL,
 CONSTRAINT [PK_TKATests] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TKATestScores] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TKATestScores](
	[ApplicantID] [varchar](32) NOT NULL,
	[TKATestID] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_TKATestScores] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC,
	[TKATestID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTBKScores] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTBKScores](
	[ApplicantID] [varchar](32) NOT NULL,
	[UTBKSubjectID] [int] NOT NULL,
	[Score] [int] NOT NULL,
 CONSTRAINT [PK_UTBKScores] PRIMARY KEY CLUSTERED 
(
	[ApplicantID] ASC,
	[UTBKSubjectID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UTBKSubjects] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UTBKSubjects](
	[ID] [int] NOT NULL,
	[Name] [varchar](32) NOT NULL,
	[StartDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
 CONSTRAINT [PK_UTBKSubject] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Achievements]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[ApplicantDocuments]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[ApplicantDocuments]  WITH NOCHECK ADD FOREIGN KEY([DocumentID])
REFERENCES [dbo].[DocumentTypes] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[ApplicantAccounts] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([AdmissionID])
REFERENCES [dbo].[Admissions] ([ID])
GO
ALTER TABLE [dbo].[Applicants]  WITH NOCHECK ADD FOREIGN KEY([BirthRegencyID])
REFERENCES [dbo].[Regencies] ([ID])
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
ALTER TABLE [dbo].[EPTTestScores]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[EPTTestScores]  WITH NOCHECK ADD FOREIGN KEY([EPTTestID])
REFERENCES [dbo].[EPTTests] ([ID])
GO
ALTER TABLE [dbo].[GlobalAcademicTestScores]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[GlobalAcademicTestScores]  WITH NOCHECK ADD FOREIGN KEY([GlobalAcademicTestID])
REFERENCES [dbo].[GlobalAcademicTests] ([ID])
GO
ALTER TABLE [dbo].[MajorQuotas]  WITH NOCHECK ADD FOREIGN KEY([AdmissionID])
REFERENCES [dbo].[Admissions] ([ID])
GO
ALTER TABLE [dbo].[MajorQuotas]  WITH NOCHECK ADD FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([ID])
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
ALTER TABLE [dbo].[SchoolMajorSubjects]  WITH NOCHECK ADD FOREIGN KEY([SchoolMajorID])
REFERENCES [dbo].[SchoolMajors] ([ID])
GO
ALTER TABLE [dbo].[SchoolMajorSubjects]  WITH NOCHECK ADD FOREIGN KEY([SchoolSubjectID])
REFERENCES [dbo].[SchoolSubjects] ([ID])
GO
ALTER TABLE [dbo].[SchoolReports]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[SchoolReports]  WITH NOCHECK ADD FOREIGN KEY([SchoolMajorID])
REFERENCES [dbo].[SchoolMajors] ([ID])
GO
ALTER TABLE [dbo].[SchoolReports]  WITH NOCHECK ADD FOREIGN KEY([SchoolSubjectID])
REFERENCES [dbo].[SchoolSubjects] ([ID])
GO
ALTER TABLE [dbo].[Schools]  WITH NOCHECK ADD FOREIGN KEY([ProvinceID])
REFERENCES [dbo].[Provinces] ([ID])
GO
ALTER TABLE [dbo].[Schools]  WITH NOCHECK ADD FOREIGN KEY([RegencyID])
REFERENCES [dbo].[Regencies] ([ID])
GO
ALTER TABLE [dbo].[SelectedMajors]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[SelectedMajors]  WITH NOCHECK ADD FOREIGN KEY([MajorID])
REFERENCES [dbo].[Majors] ([ID])
GO
ALTER TABLE [dbo].[Subdistricts]  WITH NOCHECK ADD FOREIGN KEY([RegencyID])
REFERENCES [dbo].[Regencies] ([ID])
GO
ALTER TABLE [dbo].[TKATestScores]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[TKATestScores]  WITH NOCHECK ADD FOREIGN KEY([TKATestID])
REFERENCES [dbo].[TKATests] ([ID])
GO
ALTER TABLE [dbo].[UTBKScores]  WITH NOCHECK ADD FOREIGN KEY([ApplicantID])
REFERENCES [dbo].[Applicants] ([ID])
GO
ALTER TABLE [dbo].[UTBKScores]  WITH NOCHECK ADD FOREIGN KEY([UTBKSubjectID])
REFERENCES [dbo].[UTBKSubjects] ([ID])
GO
