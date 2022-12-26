USE [master]
GO
/****** Object:  Database [ONESTOPRECRUITMENT_DBCOPY]    Script Date: 2022-12-27 05:13:31 ******/
CREATE DATABASE [ONESTOPRECRUITMENT_DBCOPY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ONESTOPRECRUITMENT_DBCOPY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ONESTOPRECRUITMENT_DBCOPY.mdf' , SIZE = 73728KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ONESTOPRECRUITMENT_DBCOPY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ONESTOPRECRUITMENT_DBCOPY_log.ldf' , SIZE = 204800KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ONESTOPRECRUITMENT_DBCOPY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET ARITHABORT OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET RECOVERY FULL 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET  MULTI_USER 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ONESTOPRECRUITMENT_DBCOPY', N'ON'
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET QUERY_STORE = OFF
GO
USE [ONESTOPRECRUITMENT_DBCOPY]
GO
/****** Object:  Table [dbo].[MsAssignment]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsAssignment](
	[IDAssignment] [int] IDENTITY(1,1) NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDStage] [int] NOT NULL,
	[IDSubStage] [int] NOT NULL,
	[DeadlineStart] [datetime] NOT NULL,
	[DeadlineEnd] [datetime] NOT NULL,
	[Notes] [nvarchar](max) NOT NULL,
	[FilePath] [varchar](max) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDAssignment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsBook]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsBook](
	[BookID] [varchar](6) NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[PublishYear] [date] NULL,
	[Synopsis] [varchar](255) NOT NULL,
	[Author] [varchar](100) NOT NULL,
	[Avaible] [bit] NULL,
	[GenreID] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsCandidate]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsCandidate](
	[IDCandidate] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDRole] [int] NOT NULL,
	[IDStage] [int] NOT NULL,
	[IDPosition] [varchar](10) NOT NULL,
	[NIM] [varchar](10) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[IsAccepted] [int] NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCandidate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsCustomer]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsCustomer](
	[CustomerID] [varchar](6) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[City] [varchar](100) NOT NULL,
	[PostalCode] [varchar](6) NOT NULL,
	[Street] [varchar](255) NOT NULL,
	[Phone] [varchar](50) NULL,
	[Gender] [char](3) NOT NULL,
	[DateOfBirth] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsEmailTemplate]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsEmailTemplate](
	[IDEmailTemplate] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDStage] [int] NOT NULL,
	[Template] [varchar](1000) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDEmailTemplate] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsGenre]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsGenre](
	[GenreID] [varchar](6) NOT NULL,
	[GenreName] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsLogicTestQuestion]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsLogicTestQuestion](
	[IDLogicTestQuestion] [uniqueidentifier] NOT NULL,
	[IDLogicTestQuestionType] [int] NOT NULL,
	[QuestionText] [varchar](1500) NULL,
	[QuestionImage] [varchar](100) NULL,
	[FirstChoiceText] [varchar](1000) NULL,
	[FirstChoiceImage] [varchar](100) NULL,
	[SecondChoiceText] [varchar](1000) NULL,
	[SecondChoiceImage] [varchar](100) NULL,
	[ThirdChoiceText] [varchar](1000) NULL,
	[ThirdChoiceImage] [varchar](100) NULL,
	[FourthChoiceText] [varchar](1000) NULL,
	[FourthChoiceImage] [varchar](100) NULL,
	[CorrectChoice] [varchar](100) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLogicTestQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsLogicTestQuestionType]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsLogicTestQuestionType](
	[IDLogicTestQuestionType] [int] IDENTITY(1,1) NOT NULL,
	[LogicTestQuestionType] [varchar](100) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLogicTestQuestionType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsMinimumScore]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsMinimumScore](
	[IDMinimumScore] [int] IDENTITY(1,1) NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDStage] [int] NOT NULL,
	[IDSubStage] [int] NOT NULL,
	[MinimumScore] [decimal](10, 2) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMinimumScore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsPeriod]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsPeriod](
	[IDPeriod] [int] IDENTITY(1,1) NOT NULL,
	[IDStage] [int] NOT NULL,
	[PeriodName] [varchar](100) NOT NULL,
	[IsActive] [int] NOT NULL,
	[DeadlineStart] [datetime] NOT NULL,
	[DeadlineEnd] [datetime] NOT NULL,
	[IsComplete] [int] NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPeriod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsPosition]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsPosition](
	[IDPosition] [varchar](50) NOT NULL,
	[PositionName] [varchar](50) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDPosition] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsRole]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsRole](
	[IDRole] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [varchar](50) NOT NULL,
	[RoleLevel] [int] NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsSchedule]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsSchedule](
	[IDSchedule] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDStage] [int] NOT NULL,
	[IDSubStage] [int] NOT NULL,
	[IDPosition] [varchar](100) NOT NULL,
	[Date] [date] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[EndTime] [time](7) NOT NULL,
	[Room] [varchar](100) NOT NULL,
	[Limit] [int] NOT NULL,
	[IDReviewer] [uniqueidentifier] NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSchedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsScoringComponent]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsScoringComponent](
	[IDScoringComponent] [uniqueidentifier] NOT NULL,
	[IDScoringComponentType] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDStage] [int] NOT NULL,
	[IDSubStage] [int] NOT NULL,
	[IDPosition] [varchar](100) NOT NULL,
	[ScoringComponent] [varchar](500) NOT NULL,
	[MinScore] [decimal](18, 0) NOT NULL,
	[MaxScore] [decimal](18, 0) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDScoringComponent] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsScoringComponentType]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsScoringComponentType](
	[IDScoringComponentType] [uniqueidentifier] NOT NULL,
	[ScoringComponentType] [varchar](200) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDScoringComponentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsStaff]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsStaff](
	[StaffID] [varchar](6) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Address] [varchar](100) NOT NULL,
	[Email] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Active] [bit] NULL,
	[Gender] [char](3) NOT NULL,
	[DateOfBirth] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsStage]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsStage](
	[IDStage] [int] IDENTITY(1,1) NOT NULL,
	[StageName] [varchar](200) NOT NULL,
	[StageLevel] [int] NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDStage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsSubStage]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsSubStage](
	[IDSubStage] [int] IDENTITY(1,1) NOT NULL,
	[IDStage] [int] NOT NULL,
	[SubStageName] [varchar](200) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSubStage] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsUser]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsUser](
	[IDUser] [uniqueidentifier] NOT NULL,
	[IDRole] [int] NOT NULL,
	[Username] [varchar](50) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[Name] [varchar](100) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrBlastEmail]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrBlastEmail](
	[IDBlastEmail] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[Subject] [varchar](500) NOT NULL,
	[Description] [varchar](max) NOT NULL,
	[BlastDateTime] [datetime] NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDBlastEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrCandidateDraft]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrCandidateDraft](
	[IDCandidateDraft] [uniqueidentifier] NOT NULL,
	[IDCandidate] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDPosition] [varchar](10) NOT NULL,
	[IDStage] [int] NOT NULL,
	[IsPass] [int] NOT NULL,
	[Note] [varchar](200) NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCandidateDraft] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrCandidateScore]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrCandidateScore](
	[IDCandidateScore] [uniqueidentifier] NOT NULL,
	[IDCandidate] [uniqueidentifier] NOT NULL,
	[IDScoringComponent] [uniqueidentifier] NOT NULL,
	[Score] [decimal](18, 0) NOT NULL,
	[Note] [varchar](200) NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDCandidateScore] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrLogicTestAnswer]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrLogicTestAnswer](
	[IDLogicTestAnswer] [uniqueidentifier] NOT NULL,
	[IDLogicTestQuestion] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[IDCandidate] [uniqueidentifier] NOT NULL,
	[Answer] [char](1) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDLogicTestAnswer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrLogicTestQuestion]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrLogicTestQuestion](
	[IDMappingQuestion] [uniqueidentifier] NOT NULL,
	[IDLogicTestQuestion] [uniqueidentifier] NOT NULL,
	[IDPeriod] [int] NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMappingQuestion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrModule]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrModule](
	[IDModule] [uniqueidentifier] NOT NULL,
	[IDRole] [int] NOT NULL,
	[ModuleName] [varchar](100) NOT NULL,
	[ModuleLevel] [int] NOT NULL,
	[Route] [varchar](max) NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDModule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrOrder]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrOrder](
	[OrderID] [varchar](6) NOT NULL,
	[OrderDate] [datetime] NOT NULL,
	[CustomerID] [varchar](6) NULL,
	[StaffID] [varchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrOrderDetail]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrOrderDetail](
	[OrderDetailID] [varchar](6) NOT NULL,
	[OrderID] [varchar](6) NULL,
	[BookID] [varchar](6) NULL,
	[Qty] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrSchedule]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrSchedule](
	[IDMappingSchedule] [uniqueidentifier] NOT NULL,
	[IDSchedule] [uniqueidentifier] NOT NULL,
	[IDUser] [uniqueidentifier] NOT NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDMappingSchedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrSubmission]    Script Date: 2022-12-27 05:13:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrSubmission](
	[IDSubmission] [uniqueidentifier] NOT NULL,
	[IDAssignment] [int] NOT NULL,
	[IDUser] [uniqueidentifier] NOT NULL,
	[Notes] [varchar](200) NULL,
	[FilePath] [varchar](100) NULL,
	[StsRc] [char](1) NOT NULL,
	[UserIn] [varchar](30) NOT NULL,
	[DateIn] [datetime] NOT NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[IDSubmission] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MsBook]  WITH CHECK ADD FOREIGN KEY([GenreID])
REFERENCES [dbo].[MsGenre] ([GenreID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TrOrder]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[MsCustomer] ([CustomerID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TrOrder]  WITH CHECK ADD FOREIGN KEY([StaffID])
REFERENCES [dbo].[MsStaff] ([StaffID])
ON UPDATE CASCADE
ON DELETE SET NULL
GO
ALTER TABLE [dbo].[TrOrderDetail]  WITH CHECK ADD FOREIGN KEY([BookID])
REFERENCES [dbo].[MsBook] ([BookID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TrOrderDetail]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[TrOrder] ([OrderID])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MsBook]  WITH CHECK ADD  CONSTRAINT [CheckMsci1] CHECK  ((len([BookID])=(5)))
GO
ALTER TABLE [dbo].[MsBook] CHECK CONSTRAINT [CheckMsci1]
GO
ALTER TABLE [dbo].[MsBook]  WITH CHECK ADD  CONSTRAINT [CheckMsci2] CHECK  (([BookID] like 'MB[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[MsBook] CHECK CONSTRAINT [CheckMsci2]
GO
ALTER TABLE [dbo].[MsCustomer]  WITH CHECK ADD  CONSTRAINT [CheckEmpl1] CHECK  ((len([CustomerID])=(5)))
GO
ALTER TABLE [dbo].[MsCustomer] CHECK CONSTRAINT [CheckEmpl1]
GO
ALTER TABLE [dbo].[MsCustomer]  WITH CHECK ADD  CONSTRAINT [CheckEmpl2] CHECK  (([CustomerID] like 'MC[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[MsCustomer] CHECK CONSTRAINT [CheckEmpl2]
GO
ALTER TABLE [dbo].[MsCustomer]  WITH CHECK ADD  CONSTRAINT [CheckEmpl3] CHECK  (([Gender]='F' OR [Gender]='M'))
GO
ALTER TABLE [dbo].[MsCustomer] CHECK CONSTRAINT [CheckEmpl3]
GO
ALTER TABLE [dbo].[MsGenre]  WITH CHECK ADD  CONSTRAINT [CheckMsct1] CHECK  ((len([GenreID])=(5)))
GO
ALTER TABLE [dbo].[MsGenre] CHECK CONSTRAINT [CheckMsct1]
GO
ALTER TABLE [dbo].[MsGenre]  WITH CHECK ADD  CONSTRAINT [CheckMsct2] CHECK  (([GenreID] like 'MG[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[MsGenre] CHECK CONSTRAINT [CheckMsct2]
GO
ALTER TABLE [dbo].[MsStaff]  WITH CHECK ADD  CONSTRAINT [CheckStaff1] CHECK  ((len([StaffID])=(5)))
GO
ALTER TABLE [dbo].[MsStaff] CHECK CONSTRAINT [CheckStaff1]
GO
ALTER TABLE [dbo].[MsStaff]  WITH CHECK ADD  CONSTRAINT [CheckStaff2] CHECK  (([StaffID] like 'MS[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[MsStaff] CHECK CONSTRAINT [CheckStaff2]
GO
ALTER TABLE [dbo].[MsStaff]  WITH CHECK ADD  CONSTRAINT [CheckStaff3] CHECK  (([Gender]='F' OR [Gender]='M'))
GO
ALTER TABLE [dbo].[MsStaff] CHECK CONSTRAINT [CheckStaff3]
GO
ALTER TABLE [dbo].[TrOrder]  WITH CHECK ADD  CONSTRAINT [CheckHead1] CHECK  ((len([OrderID])=(5)))
GO
ALTER TABLE [dbo].[TrOrder] CHECK CONSTRAINT [CheckHead1]
GO
ALTER TABLE [dbo].[TrOrder]  WITH CHECK ADD  CONSTRAINT [CheckHead2] CHECK  (([OrderID] like 'TO[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[TrOrder] CHECK CONSTRAINT [CheckHead2]
GO
ALTER TABLE [dbo].[TrOrderDetail]  WITH CHECK ADD  CONSTRAINT [CheckOderDetail1] CHECK  ((len([OrderDetailID])=(5)))
GO
ALTER TABLE [dbo].[TrOrderDetail] CHECK CONSTRAINT [CheckOderDetail1]
GO
ALTER TABLE [dbo].[TrOrderDetail]  WITH CHECK ADD  CONSTRAINT [CheckOderDetail2] CHECK  (([OrderDetailID] like 'OD[0-9][0-9][0-9]'))
GO
ALTER TABLE [dbo].[TrOrderDetail] CHECK CONSTRAINT [CheckOderDetail2]
GO
USE [master]
GO
ALTER DATABASE [ONESTOPRECRUITMENT_DBCOPY] SET  READ_WRITE 
GO
