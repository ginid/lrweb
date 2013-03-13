USE [l_r]
GO
/****** Object:  Table [dbo].[UserJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserJSP](
  [Name] [varchar](50) NOT NULL,
	[DateofBirth] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[UserType] [varchar](10) NULL,
 CONSTRAINT [PK_UserJSP] PRIMARY KEY CLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RegistrationRenewalJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RegistrationRenewalJSP](
	[ApplicationNo] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[Name] [varchar](50) NULL,
	[RegistrationNumber] [varchar](50) NULL,
	[DateOfIssue] [date] NULL,
	[DateOfExpiry] [date] NULL,
	[PresentAddress] [varchar](200) NULL,
	[ClassOfVehicle] [varchar](50) NULL,
	[VehicleType] [varchar](100) NULL,
	[TypeOfBody] [varchar](50) NULL,
	[MakersName] [varchar](50) NULL,
	[YearOfManufacture] [int] NULL,
	[NoOfCylinders] [int] NULL,
	[CubicCapacity] [int] NULL,
	[MakersClassfication] [varchar](50) NULL,
	[EngineNumber] [varchar](50) NULL,
	[SeatingCapacity] [int] NULL,
	[UnladenWeight] [float] NULL,
	[FuelUsed] [varchar](50) NULL,
 CONSTRAINT [PK_RegistrationRenewalJSP] PRIMARY KEY CLUSTERED 
(
	[ApplicationNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PermanentLicenseJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PermanentLicenseJSP](
	[ApplicationNo] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[PermanentLicenseNo] [int] NULL,
	[VehicleType] [varchar](100) NULL,
	[LearningLicenseNo] [int] NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[BirthDate] [date] NULL,
	[PermanentAddress] [varchar](200) NULL,
	[TemporaryAddress] [varchar](200) NULL,
	[Qualification] [varchar](50) NULL,
	[ContactNumber] [varchar](50) NULL,
	[EmailAddress] [varchar](50) NULL,
	[IdentificationMark] [varchar](100) NULL,
	[Gender] [varchar](50) NULL,
	[BloodGroup] [varchar](3) NULL,
	[DateofTest] [date] NULL,
	[TestingAuthority] [varchar](100) NULL,
	[ResultOfTest] [varchar](100) NULL,
	[FailedDrivingTestBefore] [varchar](50) NULL,
	[LearningLicenseByRTO] [varchar](50) NULL,
 CONSTRAINT [PK_PermanetLicenseJSP] PRIMARY KEY CLUSTERED 
(
	[ApplicationNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewRegistrationJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewRegistrationJSP](
	[ApplicationNo] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[RegistrationNo] [int] NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[Age] [int] NULL,
	[PermanentAddress] [varchar](200) NULL,
	[TemporaryAddress] [varchar](200) NULL,
	[NameOfVehicle] [varchar](50) NULL,
	[VehicleNumber] [varchar](50) NULL,
	[EngineNumber] [varchar](50) NULL,
	[FuelType] [varchar](50) NULL,
	[UnladenWeight] [int] NULL,
	[ManufacturerName] [varchar](50) NULL,
	[YearOfManufacture] [int] NULL,
	[NoOfCylinders] [int] NULL,
	[SeatingCapacity] [int] NULL,
	[BodyType] [varchar](50) NULL,
	[Horsepower] [int] NULL,
 CONSTRAINT [PK_NewRegistrationJSP] PRIMARY KEY CLUSTERED 
(
	[ApplicationNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NewClassVehicleAdditionJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NewClassVehicleAdditionJSP](
	[ApplicationNo] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[LicenseNumber] [int] NULL,
	[NewVehicleType] [varchar](300) NULL,
	[MedicalCertificateProvided] [varchar](50) NULL,
	[OldDrivingLicenseProvided] [varchar](50) NULL,
 CONSTRAINT [PK_NewClassVehicleAdditionJSP] PRIMARY KEY CLUSTERED 
(
	[ApplicationNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LicenseRenewalJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LicenseRenewalJSP](
	[RenewalID] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[LicenseNumber] [int] NULL,
	[IssueDate] [date] NULL,
	[VehicleType] [varchar](200) NULL,
	[PresentAddress] [varchar](200) NULL,
 CONSTRAINT [PK_LicenseRenewalJSP] PRIMARY KEY CLUSTERED 
(
	[RenewalID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LearningLicenseJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LearningLicenseJSP](
	[ApplicationNo] [int] NOT NULL,
	[ApplicationDate] [date] NOT NULL,
	[LearningLicenseNo] [int] NULL,
	[Name] [varchar](25) NOT NULL,
	[FathersName] [varchar](25) NOT NULL,
	[BirthDate] [date] NULL,
	[PermanentAddress] [varchar](100) NOT NULL,
	[TemporaryAddress] [varchar](100) NULL,
	[Qualification] [varchar](20) NOT NULL,
	[ContactNumber] [varchar](10) NOT NULL,
	[EmailAddress] [varchar](20) NOT NULL,
	[IdentificationMark] [varchar](55) NOT NULL,
	[BloodGroup] [varchar](3) NOT NULL,
	[VehicleType] [varchar](70) NOT NULL,
	[MedicalCertificateIssueDate] [date] NOT NULL,
	[IssuingDoctorName] [varchar](25) NOT NULL,
	[ResidenceProof] [varchar](50) NOT NULL,
	[AgeProof] [varchar](50) NOT NULL,
 CONSTRAINT [PK_LearningLicenseJSP_1] PRIMARY KEY CLUSTERED 
(
	[ApplicationNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DuplicateRegistrationJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DuplicateRegistrationJSP](
	[ApplicationNo] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[MakeOfVehicle] [varchar](200) NULL,
	[Circumstances] [varchar](500) NULL,
	[CircumstancesDeclaration] [varchar](50) NULL,
	[duplicateRegistrationApply] [varchar](50) NULL,
	[policeReportDate] [date] NULL,
	[name] [varchar](50) NULL,
	[PermanentAddress] [varchar](200) NULL,
 CONSTRAINT [PK_DuplicateRegistrationJSP] PRIMARY KEY CLUSTERED 
(
	[ApplicationNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DuplicateLicenseJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DuplicateLicenseJSP](
	[ApplicationNo] [int] NOT NULL,
	[ApplicationDate] [date] NULL,
	[Name] [varchar](50) NULL,
	[FatherName] [varchar](50) NULL,
	[PermanentAddress] [varchar](200) NULL,
	[LosingDate] [date] NULL,
	[LosingCircumstances] [varchar](200) NULL,
 CONSTRAINT [PK_DuplicateLicenseJSP] PRIMARY KEY CLUSTERED 
(
	[ApplicationNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ComplaintJSP]    Script Date: 01/10/2013 22:34:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ComplaintJSP](
	[ComplaintNo] [int] NOT NULL,
	[Subject] [varchar](4096) NULL,
	[Detail] [varchar](4096) NULL,
	[ContactNo] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Response] [varchar](4096) NULL,
 CONSTRAINT [PK_ComplaintJSP] PRIMARY KEY CLUSTERED 
(
	[ComplaintNo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_PermanetLicenseJSP_PermanetLicenseJSP]    Script Date: 01/10/2013 22:34:17 ******/
ALTER TABLE [dbo].[PermanentLicenseJSP]  WITH CHECK ADD  CONSTRAINT [FK_PermanetLicenseJSP_PermanetLicenseJSP] FOREIGN KEY([ApplicationNo])
REFERENCES [dbo].[PermanentLicenseJSP] ([ApplicationNo])
GO
ALTER TABLE [dbo].[PermanentLicenseJSP] CHECK CONSTRAINT [FK_PermanetLicenseJSP_PermanetLicenseJSP]
GO
