USE [OLAP_New_Students]
GO
/****** Object:  Table [dbo].[DimAdmissions] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimAdmissions](
	[AdmissionDimID] [int] NOT NULL,
	[AdmissionID] [int] NOT NULL,
	[Admission] [varchar](64) NOT NULL,
	[RowEffectiveDate] [datetime] NOT NULL,
	[RowExpirationDate] [datetime] NOT NULL,
	[RowVersion] [int] NOT NULL,
	[Checksum] [bigint] NOT NULL,
 CONSTRAINT [PK_DimAdmissions] PRIMARY KEY CLUSTERED 
(
	[AdmissionDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimApplicants] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimApplicants](
	[ApplicantDimID] [int] NOT NULL,
	[ApplicantID] [varchar](16) NOT NULL,
	[NIK] [varchar](20) NOT NULL,
	[NISN] [varchar](16) NOT NULL,
	[Name] [varchar](128) NOT NULL,
	[Gender] [varchar](10) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[PhoneNumber] [varchar](16) NOT NULL,
	[Email] [varchar](128) NOT NULL,
	[Religion] [varchar](10) NOT NULL,
	[Nationality] [varchar](64) NOT NULL,
	[Province] [varchar](32) NOT NULL,
	[Regency] [varchar](32) NOT NULL,
	[Subdistrict] [varchar](32) NOT NULL,
	[PostalCode] [varchar](10) NOT NULL,
	[Address] [varchar](255) NOT NULL,
	[RowEffectiveDate] [datetime] NOT NULL,
	[RowExpirationDate] [datetime] NOT NULL,
	[RowVersion] [int] NOT NULL,
	[Checksum] [bigint] NOT NULL,
 CONSTRAINT [PK_DimApplicants] PRIMARY KEY CLUSTERED 
(
	[ApplicantDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDates] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDates](
	[DateDimID] [int] NOT NULL,
	[Date] [date] NOT NULL,
	[DayName] [varchar](10) NOT NULL,
	[DayOfMonth] [int] NOT NULL,
	[DayOfYear] [int] NOT NULL,
	[Week] [int] NOT NULL,
	[Month] [int] NOT NULL,
	[MonthName] [varchar](10) NOT NULL,
	[Quarter] [int] NOT NULL,
	[Year] [int] NOT NULL,
 CONSTRAINT [PK_DimDates] PRIMARY KEY CLUSTERED 
(
	[DateDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimMajors] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimMajors](
	[MajorDimID] [int] NOT NULL,
	[MajorID] [int] NOT NULL,
	[Major] [varchar](64) NOT NULL,
	[Faculty] [varchar](8) NOT NULL,
	[RowEffectiveDate] [datetime] NOT NULL,
	[RowExpirationDate] [datetime] NOT NULL,
	[RowVersion] [int] NOT NULL,
	[Checksum] [bigint] NOT NULL,
 CONSTRAINT [PK_DimMajors] PRIMARY KEY CLUSTERED 
(
	[MajorDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimPartners] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimPartners](
	[PartnerDimID] [int] NOT NULL,
	[PartnerID] [int] NOT NULL,
	[Partner] [varchar](255) NOT NULL,
	[RowEffectiveDate] [datetime] NOT NULL,
	[RowExpirationDate] [datetime] NOT NULL,
	[RowVersion] [int] NOT NULL,
	[Checksum] [bigint] NOT NULL,
 CONSTRAINT [PK_DimPartners] PRIMARY KEY CLUSTERED 
(
	[PartnerDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimSchools] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimSchools](
	[SchoolDimID] [int] NOT NULL,
	[SchoolID] [int] NOT NULL,
	[NPSN] [varchar](10) NOT NULL,
	[School] [varchar](64) NOT NULL,
	[Province] [varchar](64) NOT NULL,
	[Regency] [varchar](64) NOT NULL,
	[RowEffectiveDate] [datetime] NOT NULL,
	[RowExpirationDate] [datetime] NOT NULL,
	[RowVersion] [int] NOT NULL,
	[Checksum] [bigint] NOT NULL,
 CONSTRAINT [PK_DimSchools] PRIMARY KEY CLUSTERED 
(
	[SchoolDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactMajorQuotas] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactMajorQuotas](
	[MajorDimID] [int] NOT NULL,
	[AdmissionDimID] [int] NOT NULL,
	[DateDimID] [int] NOT NULL,
	[Quota] [int] NOT NULL,
 CONSTRAINT [PK_FactMajorQuotas] PRIMARY KEY CLUSTERED 
(
	[MajorDimID] ASC,
	[AdmissionDimID] ASC,
	[DateDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactNewStudentReregistrations] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactNewStudentReregistrations](
	[ApplicantDimID] [int] NOT NULL,
	[AdmissionDimID] [int] NOT NULL,
	[MajorDimID] [int] NOT NULL,
	[PartnerDimID] [int] NOT NULL,
	[SchoolDimID] [int] NOT NULL,
	[DateDimID] [int] NOT NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_FactNewStudentReregistrations] PRIMARY KEY CLUSTERED 
(
	[ApplicantDimID] ASC,
	[AdmissionDimID] ASC,
	[MajorDimID] ASC,
	[PartnerDimID] ASC,
	[SchoolDimID] ASC,
	[DateDimID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactNewStudentSelections] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactNewStudentSelections](
	[ApplicantDimID] [int] NOT NULL,
	[AdmissionDimID] [int] NOT NULL,
	[MajorDimID] [int] NOT NULL,
	[PartnerDimID] [int] NOT NULL,
	[SchoolDimID] [int] NOT NULL,
	[DateDimID] [int] NOT NULL,
	[SchoolReportScore] [int] NOT NULL,
	[TKAScore] [int] NOT NULL,
	[ExternalTestScore] [int] NOT NULL,
	[AchievementScore] [int] NOT NULL,
	[EPTScore] [int] NOT NULL,
	[Status] [bit] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FactMajorQuotas]  WITH CHECK ADD FOREIGN KEY([AdmissionDimID])
REFERENCES [dbo].[DimAdmissions] ([AdmissionDimID])
GO
ALTER TABLE [dbo].[FactMajorQuotas]  WITH CHECK ADD FOREIGN KEY([DateDimID])
REFERENCES [dbo].[DimDates] ([DateDimID])
GO
ALTER TABLE [dbo].[FactMajorQuotas]  WITH CHECK ADD FOREIGN KEY([MajorDimID])
REFERENCES [dbo].[DimMajors] ([MajorDimID])
GO
ALTER TABLE [dbo].[FactNewStudentReregistrations]  WITH CHECK ADD FOREIGN KEY([AdmissionDimID])
REFERENCES [dbo].[DimAdmissions] ([AdmissionDimID])
GO
ALTER TABLE [dbo].[FactNewStudentReregistrations]  WITH CHECK ADD  CONSTRAINT [FK__FactNewSt__Appli__245D67DE] FOREIGN KEY([ApplicantDimID])
REFERENCES [dbo].[DimApplicants] ([ApplicantDimID])
GO
ALTER TABLE [dbo].[FactNewStudentReregistrations] CHECK CONSTRAINT [FK__FactNewSt__Appli__245D67DE]
GO
ALTER TABLE [dbo].[FactNewStudentReregistrations]  WITH CHECK ADD FOREIGN KEY([DateDimID])
REFERENCES [dbo].[DimDates] ([DateDimID])
GO
ALTER TABLE [dbo].[FactNewStudentReregistrations]  WITH CHECK ADD FOREIGN KEY([MajorDimID])
REFERENCES [dbo].[DimMajors] ([MajorDimID])
GO
ALTER TABLE [dbo].[FactNewStudentReregistrations]  WITH CHECK ADD FOREIGN KEY([PartnerDimID])
REFERENCES [dbo].[DimPartners] ([PartnerDimID])
GO
ALTER TABLE [dbo].[FactNewStudentReregistrations]  WITH CHECK ADD FOREIGN KEY([SchoolDimID])
REFERENCES [dbo].[DimSchools] ([SchoolDimID])
GO
ALTER TABLE [dbo].[FactNewStudentSelections]  WITH CHECK ADD FOREIGN KEY([AdmissionDimID])
REFERENCES [dbo].[DimAdmissions] ([AdmissionDimID])
GO
ALTER TABLE [dbo].[FactNewStudentSelections]  WITH CHECK ADD  CONSTRAINT [FK__FactNewSt__Appli__42E1EEFE] FOREIGN KEY([ApplicantDimID])
REFERENCES [dbo].[DimApplicants] ([ApplicantDimID])
GO
ALTER TABLE [dbo].[FactNewStudentSelections] CHECK CONSTRAINT [FK__FactNewSt__Appli__42E1EEFE]
GO
ALTER TABLE [dbo].[FactNewStudentSelections]  WITH CHECK ADD FOREIGN KEY([DateDimID])
REFERENCES [dbo].[DimDates] ([DateDimID])
GO
ALTER TABLE [dbo].[FactNewStudentSelections]  WITH CHECK ADD FOREIGN KEY([MajorDimID])
REFERENCES [dbo].[DimMajors] ([MajorDimID])
GO
ALTER TABLE [dbo].[FactNewStudentSelections]  WITH CHECK ADD FOREIGN KEY([PartnerDimID])
REFERENCES [dbo].[DimPartners] ([PartnerDimID])
GO
ALTER TABLE [dbo].[FactNewStudentSelections]  WITH CHECK ADD FOREIGN KEY([SchoolDimID])
REFERENCES [dbo].[DimSchools] ([SchoolDimID])
GO
