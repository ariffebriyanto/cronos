USE [master]
GO
/****** Object:  Database [ORACLECOPY]    Script Date: 2022-12-27 05:15:11 ******/
CREATE DATABASE [ORACLECOPY]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ORACLECOPY', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ORACLECOPY.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ORACLECOPY_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ORACLECOPY_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ORACLECOPY] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ORACLECOPY].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ORACLECOPY] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ORACLECOPY] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ORACLECOPY] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ORACLECOPY] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ORACLECOPY] SET ARITHABORT OFF 
GO
ALTER DATABASE [ORACLECOPY] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ORACLECOPY] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ORACLECOPY] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ORACLECOPY] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ORACLECOPY] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ORACLECOPY] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ORACLECOPY] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ORACLECOPY] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ORACLECOPY] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ORACLECOPY] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ORACLECOPY] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ORACLECOPY] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ORACLECOPY] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ORACLECOPY] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ORACLECOPY] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ORACLECOPY] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ORACLECOPY] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ORACLECOPY] SET RECOVERY FULL 
GO
ALTER DATABASE [ORACLECOPY] SET  MULTI_USER 
GO
ALTER DATABASE [ORACLECOPY] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ORACLECOPY] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ORACLECOPY] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ORACLECOPY] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ORACLECOPY] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ORACLECOPY] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ORACLECOPY', N'ON'
GO
ALTER DATABASE [ORACLECOPY] SET QUERY_STORE = OFF
GO
USE [ORACLECOPY]
GO
/****** Object:  Table [dbo].[MsJobPosition]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsJobPosition](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [nvarchar](1) NULL,
	[JobId] [int] NULL,
	[PartnerId] [int] NULL,
	[JobTypeId] [int] NULL,
	[LocationId] [int] NULL,
	[Strm] [nvarchar](30) NULL,
	[JobPosition] [nvarchar](max) NULL,
	[JobDesc] [nvarchar](max) NULL,
	[JobQuota] [int] NULL,
	[JobDuration] [nvarchar](50) NULL,
	[JobStartDate] [datetime] NULL,
	[JobEndDate] [datetime] NULL,
	[JobAttachmentPath] [nvarchar](max) NULL,
	[JobAddress] [nvarchar](max) NULL,
	[JobSubDistrict] [nvarchar](max) NULL,
	[JobDistrict] [nvarchar](max) NULL,
	[JobZipCode] [nvarchar](20) NULL,
	[JobCity] [nvarchar](max) NULL,
	[JobProvince] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[JobAvailable] [int] NULL,
	[WorkStatusId] [int] NULL,
	[StartSalary] [int] NULL,
	[EndSalary] [int] NULL,
	[IsMinimalGPA] [int] NULL,
	[HasRenew] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsJobPositionComDev]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsJobPositionComDev](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[JobId] [int] NULL,
	[PartnerId] [int] NULL,
	[JobTypeId] [int] NULL,
	[LocationId] [int] NULL,
	[Strm] [varchar](30) NULL,
	[JobPosition] [nvarchar](max) NULL,
	[JobDesc] [nvarchar](max) NULL,
	[JobQuota] [int] NULL,
	[JobDuration] [varchar](50) NULL,
	[JobStartDate] [datetime] NULL,
	[JobEndDate] [datetime] NULL,
	[JobAttachmentPath] [varchar](max) NULL,
	[JobAddress] [nvarchar](max) NULL,
	[JobSubDistrict] [nvarchar](max) NULL,
	[JobDistrict] [nvarchar](max) NULL,
	[JobZipCode] [varchar](20) NULL,
	[JobCity] [nvarchar](max) NULL,
	[JobProvince] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[JobAvailable] [int] NULL,
	[WorkStatusId] [int] NULL,
	[StartSalary] [int] NULL,
	[EndSalary] [int] NULL,
	[HasRenew] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsJobPositionResearch]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsJobPositionResearch](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[JobId] [int] NULL,
	[LecturerEmplid] [nvarchar](20) NULL,
	[JobTypeId] [int] NULL,
	[LocationId] [int] NULL,
	[Strm] [varchar](30) NULL,
	[JobPosition] [nvarchar](max) NULL,
	[JobDesc] [nvarchar](max) NULL,
	[JobQuota] [int] NULL,
	[JobDuration] [varchar](50) NULL,
	[JobStartDate] [datetime] NULL,
	[JobEndDate] [datetime] NULL,
	[JobAttachmentPath] [varchar](max) NULL,
	[JobAddress] [nvarchar](max) NULL,
	[JobSubDistrict] [nvarchar](max) NULL,
	[JobDistrict] [nvarchar](max) NULL,
	[JobZipCode] [varchar](20) NULL,
	[JobCity] [nvarchar](max) NULL,
	[JobProvince] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[JobAvailable] [int] NULL,
	[WorkStatusId] [int] NULL,
	[StartSalary] [int] NULL,
	[EndSalary] [int] NULL,
	[HasRenew] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsPartnerAccount]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsPartnerAccount](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [nvarchar](1) NULL,
	[PartnerAccountId] [int] NULL,
	[PartnerId] [int] NULL,
	[PartnerName] [nvarchar](max) NULL,
	[PartnerUsername] [nvarchar](max) NULL,
	[PartnerEmail] [nvarchar](100) NULL,
	[PartnerPassword] [nvarchar](max) NULL,
	[UpdateProfile] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsPartnerAccountComDev]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsPartnerAccountComDev](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[PartnerAccountId] [int] NULL,
	[PartnerId] [int] NULL,
	[PartnerName] [nvarchar](max) NULL,
	[PartnerUsername] [varchar](max) NULL,
	[PartnerEmail] [varchar](100) NULL,
	[PartnerPassword] [varchar](max) NULL,
	[UpdateProfile] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MsStudentAccount]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MsStudentAccount](
	[StrSc] [nvarchar](1) NULL,
	[Emplid] [nvarchar](30) NULL,
	[StudentEmail] [nvarchar](100) NULL,
	[StudentPhone] [nvarchar](50) NULL,
	[StudentInstitutionId] [nvarchar](50) NULL,
	[StudentAcadCareerId] [nvarchar](50) NULL,
	[StudentTrackRegistrationId] [nvarchar](10) NULL,
	[StudentTrackRegistrationDesc] [nvarchar](100) NULL,
	[STRM] [nvarchar](5) NULL,
	[ExternalSystemId] [nvarchar](30) NULL,
	[StudentName] [nvarchar](max) NULL,
	[StudentAcadGroupDesc] [nvarchar](max) NULL,
	[StudentAcadProgId] [nvarchar](50) NULL,
	[StudentAcadProgDesc] [nvarchar](max) NULL,
	[StudentAcadPlanId] [nvarchar](50) NULL,
	[StudentAcadPlanDesc] [nvarchar](max) NULL,
	[StudentCampusDesc] [nvarchar](max) NULL,
	[StudentCumGPA] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[N_L_LEC_PERSONAL_DATA]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[N_L_LEC_PERSONAL_DATA](
	[Emplid] [varchar](11) NULL,
	[INSTR_TYPE] [varchar](4) NOT NULL,
	[Kddsn] [varchar](20) NULL,
	[INSTR_NAME] [varchar](61) NULL,
	[INSTR_OFFICIAL_NM] [varchar](100) NULL,
	[Address] [varchar](223) NOT NULL,
	[Sex] [varchar](1) NULL,
	[Birthplace] [varchar](30) NULL,
	[Birthdate] [date] NULL,
	[RELIGION] [varchar](4) NULL,
	[RELIGION_DESCR] [varchar](30) NULL,
	[PHONE] [varchar](24) NULL,
	[EMAIL_ADDR] [varchar](70) NULL,
	[ACAD_ORG] [varchar](10) NOT NULL,
	[ACAD_ORG_DESCR] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_ACAD_GROUP_TBL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_ACAD_GROUP_TBL](
	[INSTITUTION] [varchar](5) NOT NULL,
	[ACAD_GROUP] [varchar](5) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EFF_STATUS] [varchar](1) NOT NULL,
	[DESCR] [varchar](30) NOT NULL,
	[DESCRSHORT] [varchar](10) NOT NULL,
	[STDNT_SPEC_PERM] [varchar](1) NOT NULL,
	[AUTO_ENRL_WAITLIST] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_ACAD_GROUP_TBL_TEMP]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_ACAD_GROUP_TBL_TEMP](
	[INSTITUTION] [varchar](5) NOT NULL,
	[ACAD_GROUP] [varchar](5) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EFF_STATUS] [varchar](1) NOT NULL,
	[DESCR] [varchar](30) NOT NULL,
	[DESCRSHORT] [varchar](10) NOT NULL,
	[STDNT_SPEC_PERM] [varchar](1) NOT NULL,
	[AUTO_ENRL_WAITLIST] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_ACAD_ORG_TBL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_ACAD_ORG_TBL](
	[ACAD_ORG] [varchar](10) NOT NULL,
	[EFFDT] [datetime] NOT NULL,
	[EFF_STATUS] [varchar](1) NOT NULL,
	[DESCR] [varchar](30) NOT NULL,
	[DESCRSHORT] [varchar](10) NOT NULL,
	[DESCRFORMAL] [varchar](50) NOT NULL,
	[INSTITUTION] [varchar](5) NOT NULL,
	[CAMPUS] [varchar](5) NOT NULL,
	[MANAGER_ID] [varchar](11) NOT NULL,
	[INSTR_EDIT] [varchar](1) NOT NULL,
	[CAMPUS_EDIT] [varchar](1) NOT NULL,
	[SUBJECT_EDIT] [varchar](1) NOT NULL,
	[COURSE_EDIT] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_ACAD_PROG_TBL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_ACAD_PROG_TBL](
	[INSTITUTION] [varchar](5) NOT NULL,
	[ACAD_PROG] [varchar](5) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EFF_STATUS] [varchar](1) NOT NULL,
	[DESCR] [varchar](30) NOT NULL,
	[DESCRSHORT] [varchar](10) NOT NULL,
	[ACAD_CAREER] [varchar](4) NOT NULL,
	[ACAD_CALENDAR_ID] [varchar](4) NOT NULL,
	[ADVISOR_EDIT] [varchar](1) NOT NULL,
	[LEVEL_LOAD_RULE] [varchar](5) NOT NULL,
	[ACAD_GROUP] [varchar](5) NOT NULL,
	[ACAD_PLAN] [varchar](10) NOT NULL,
	[CAMPUS] [varchar](5) NOT NULL,
	[FIRST_TERM_VALID] [varchar](4) NOT NULL,
	[CAR_PTR_EXC_RULE] [varchar](10) NOT NULL,
	[CAR_PTR_EXC_FG] [varchar](1) NOT NULL,
	[FA_PRIMACY_NBR] [decimal](38, 0) NOT NULL,
	[FA_ELIGIBILITY] [varchar](1) NOT NULL,
	[PROG_NORM_COMPLTN] [decimal](38, 0) NOT NULL,
	[RESIDENCY_REQ] [varchar](1) NOT NULL,
	[CIP_CODE] [varchar](13) NOT NULL,
	[HEGIS_CODE] [varchar](8) NOT NULL,
	[CRSE_COUNT_ENRL] [varchar](1) NOT NULL,
	[CRSE_COUNT_MIN] [decimal](4, 2) NOT NULL,
	[ACAD_ORG] [varchar](10) NOT NULL,
	[SPLIT_OWNER] [varchar](1) NOT NULL,
	[ACAD_PROG_DUAL] [varchar](5) NOT NULL,
	[GRADING_SCHEME] [varchar](3) NOT NULL,
	[GRADING_BASIS] [varchar](3) NOT NULL,
	[GRADE_TRANSFER] [varchar](3) NOT NULL,
	[TRANSCRIPT_LEVEL] [varchar](2) NOT NULL,
	[ACAD_STDNG_RULE] [varchar](10) NOT NULL,
	[ASSOC_PROG_AS] [varchar](1) NOT NULL,
	[CALC_AS_BATCH_ONLY] [varchar](1) NOT NULL,
	[OBEY_FULLY_GRD_AS] [varchar](1) NOT NULL,
	[EXCL_TRM_CAT_AS_1] [varchar](1) NOT NULL,
	[EXCL_TRM_CAT_AS_2] [varchar](1) NOT NULL,
	[EXCL_TRM_CAT_AS_3] [varchar](1) NOT NULL,
	[HONOR_AWARD_RULE] [varchar](10) NOT NULL,
	[ASSOC_PROG_HA] [varchar](1) NOT NULL,
	[CALC_HA_BATCH_ONLY] [varchar](1) NOT NULL,
	[OBEY_FULLY_GRD_HA] [varchar](1) NOT NULL,
	[EXCL_TRM_CAT_HA_1] [varchar](1) NOT NULL,
	[EXCL_TRM_CAT_HA_2] [varchar](1) NOT NULL,
	[EXCL_TRM_CAT_HA_3] [varchar](1) NOT NULL,
	[HONOR_DT_FG] [varchar](4) NOT NULL,
	[INCOMPLETE_GRADE] [varchar](3) NOT NULL,
	[LAPSE_GRADE] [varchar](1) NOT NULL,
	[LAPSE_TO_GRADE] [varchar](3) NOT NULL,
	[LAPSE_DAYS] [decimal](38, 0) NOT NULL,
	[LAPSE_NOTE_ID] [varchar](4) NOT NULL,
	[PRINT_LAPSE_DATE] [varchar](1) NOT NULL,
	[CMPLTD_NOTE_ID] [varchar](4) NOT NULL,
	[PRINT_CMPLTD_DATE] [varchar](1) NOT NULL,
	[REPEAT_RULE] [varchar](10) NOT NULL,
	[REPEAT_GRD_CK] [varchar](1) NOT NULL,
	[CANCEL_REASON] [varchar](4) NOT NULL,
	[WD_WO_PEN_REASON] [varchar](4) NOT NULL,
	[WD_W_PEN_GRD_BAS] [varchar](3) NOT NULL,
	[WD_W_PEN_GRADE] [varchar](3) NOT NULL,
	[WD_W_PEN2_GRADE] [varchar](3) NOT NULL,
	[WD_W_PEN2_GRD_BAS] [varchar](3) NOT NULL,
	[DROP_RET_RSN] [varchar](4) NOT NULL,
	[DROP_PEN_GRADE] [varchar](3) NOT NULL,
	[DROP_PEN_GRADE_2] [varchar](3) NOT NULL,
	[DROP_PEN_GRD_BAS] [varchar](3) NOT NULL,
	[DROP_PEN_GRD_BAS_2] [varchar](3) NOT NULL,
	[OEE_IND] [varchar](1) NOT NULL,
	[REPEAT_ENRL_CTL] [varchar](1) NOT NULL,
	[REPEAT_ENRL_SUSP] [varchar](1) NOT NULL,
	[REPEAT_GRD_SUSP] [varchar](1) NOT NULL,
	[REPEAT_CRSE_ERROR] [varchar](1) NOT NULL,
	[SSR_LAST_PRS_DT] [date] NULL,
	[SSR_LAST_ADM_TERM] [varchar](4) NOT NULL,
	[SSR_GRAD_SETP_OVRD] [varchar](1) NOT NULL,
	[SSR_GRAD_CHRG_FEE] [varchar](1) NOT NULL,
	[SSR_GRAD_PAY_REQ] [varchar](1) NOT NULL,
	[FEE_CODE] [varchar](6) NOT NULL,
	[PROG_REASON] [varchar](4) NOT NULL,
	[SSR_USE_GRAD_TRACK] [varchar](1) NOT NULL,
	[SSR_GRAD_STATUS] [varchar](4) NOT NULL,
	[SAA_WHIF_DISP_ADVR] [varchar](1) NOT NULL,
	[SAA_WHIF_DISP_PREM] [varchar](1) NOT NULL,
	[SAA_WHIF_DISP_STD] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_class_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_class_tbl](
	[CRSE_ID] [varchar](6) NULL,
	[CRSE_OFFER_NBR] [int] NULL,
	[STRM] [varchar](4) NULL,
	[SESSION_CODE] [varchar](3) NULL,
	[CLASS_SECTION] [varchar](4) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_GROUP] [varchar](5) NULL,
	[SUBJECT] [varchar](8) NULL,
	[CATALOG_NBR] [varchar](10) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[DESCR] [varchar](30) NULL,
	[CLASS_NBR] [int] NULL,
	[SSR_COMPONENT] [varchar](3) NULL,
	[ENRL_STAT] [varchar](1) NULL,
	[CLASS_STAT] [varchar](1) NULL,
	[CLASS_TYPE] [varchar](1) NULL,
	[ASSOCIATED_CLASS] [int] NULL,
	[WAITLIST_DAEMON] [varchar](2) NULL,
	[AUTO_ENRL_WAITLIST] [varchar](1) NULL,
	[STDNT_SPEC_PERM] [varchar](1) NULL,
	[AUTO_ENROLL_SECT_1] [varchar](4) NULL,
	[AUTO_ENROLL_SECT_2] [varchar](4) NULL,
	[RESECTION] [varchar](4) NULL,
	[SCHEDULE_PRINT] [varchar](1) NULL,
	[CONSENT] [varchar](1) NULL,
	[ENRL_CAP] [int] NULL,
	[WAIT_CAP] [int] NULL,
	[MIN_ENRL] [int] NULL,
	[ENRL_TOT] [int] NULL,
	[WAIT_TOT] [int] NULL,
	[CRS_TOPIC_ID] [int] NULL,
	[PRINT_TOPIC] [varchar](1) NULL,
	[ACAD_ORG] [varchar](10) NULL,
	[NEXT_STDNT_POSITIN] [int] NULL,
	[EMPLID] [varchar](11) NULL,
	[CAMPUS] [varchar](5) NULL,
	[LOCATION] [varchar](10) NULL,
	[CAMPUS_EVENT_NBR] [varchar](9) NULL,
	[INSTRUCTION_MODE] [varchar](2) NULL,
	[EQUIV_CRSE_ID] [varchar](5) NULL,
	[OVRD_CRSE_EQUIV_ID] [varchar](1) NULL,
	[ROOM_CAP_REQUEST] [int] NULL,
	[START_DT] [date] NULL,
	[END_DT] [date] NULL,
	[CANCEL_DT] [date] NULL,
	[PRIM_INSTR_SECT] [varchar](4) NULL,
	[COMBINED_SECTION] [varchar](1) NULL,
	[HOLIDAY_SCHEDULE] [varchar](6) NULL,
	[EXAM_SEAT_SPACING] [int] NULL,
	[DYN_DT_INCLUDE] [varchar](1) NULL,
	[DYN_DT_CALC_REQ] [varchar](1) NULL,
	[ATTEND_GENERATE] [varchar](1) NULL,
	[ATTEND_SYNC_REQD] [varchar](1) NULL,
	[FEES_EXIST] [varchar](1) NULL,
	[CNCL_IF_STUD_ENRLD] [varchar](1) NULL,
	[RCV_FROM_ITEM_TYPE] [varchar](1) NULL,
	[AP_BUS_UNIT] [varchar](5) NULL,
	[AP_LEDGER] [varchar](10) NULL,
	[AP_ACCOUNT] [varchar](10) NULL,
	[AP_DEPTID] [varchar](10) NULL,
	[AP_PROJ_ID] [varchar](15) NULL,
	[AP_PRODUCT] [varchar](6) NULL,
	[AP_FUND_CODE] [varchar](5) NULL,
	[AP_PROG_CODE] [varchar](5) NULL,
	[AP_CLASS_FLD] [varchar](5) NULL,
	[AP_AFFILIATE] [varchar](5) NULL,
	[AP_OP_UNIT] [varchar](8) NULL,
	[AP_ALTACCT] [varchar](10) NULL,
	[AP_BUD_REF] [varchar](8) NULL,
	[AP_CF1] [varchar](10) NULL,
	[AP_CF2] [varchar](10) NULL,
	[AP_CF3] [varchar](10) NULL,
	[AP_AFF_INT1] [varchar](10) NULL,
	[AP_AFF_INT2] [varchar](10) NULL,
	[WRITEOFF_BUS_UNIT] [varchar](5) NULL,
	[WRITEOFF_LEDGER] [varchar](10) NULL,
	[WRITEOFF_ACCOUNT] [varchar](10) NULL,
	[WRITEOFF_DEPTID] [varchar](10) NULL,
	[WRITEOFF_PROJ_ID] [varchar](15) NULL,
	[WRITEOFF_PRODUCT] [varchar](6) NULL,
	[WRITEOFF_FUND_CODE] [varchar](5) NULL,
	[WRITEOFF_PROG_CODE] [varchar](5) NULL,
	[WRITEOFF_CLASS_FLD] [varchar](5) NULL,
	[WRITEOFF_AFFILIATE] [varchar](5) NULL,
	[WRITEOFF_OP_UNIT] [varchar](8) NULL,
	[WRITEOFF_ALTACCT] [varchar](10) NULL,
	[WRITEOFF_BUD_REF] [varchar](8) NULL,
	[WRITEOFF_CF1] [varchar](10) NULL,
	[WRITEOFF_CF2] [varchar](10) NULL,
	[WRITEOFF_CF3] [varchar](10) NULL,
	[WRITEOFF_AFF_INT1] [varchar](10) NULL,
	[WRITEOFF_AFF_INT2] [varchar](10) NULL,
	[EXT_WRITEOFF] [varchar](50) NULL,
	[GL_INTERFACE_REQ] [varchar](1) NULL,
	[LMS_FILE_TYPE] [varchar](3) NULL,
	[LMS_GROUP_ID] [varchar](50) NULL,
	[LMS_URL] [varchar](254) NULL,
	[LMS_CLASS_EXT_DTTM] [datetime] NULL,
	[LMS_ENRL_EXT_DTTM] [datetime] NULL,
	[LMS_PROVIDER] [varchar](30) NULL,
	[SSR_DROP_CONSENT] [varchar](1) NULL,
	[ACAD_CALENDAR_ID] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_CRSE_ATTR_Value]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_CRSE_ATTR_Value](
	[CRSE_ATTR] [varchar](4) NULL,
	[EFFDT] [date] NULL,
	[CRSE_ATTR_VALUE] [varchar](10) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRFORMAL] [varchar](50) NULL,
	[CATALOG_PRINT] [varchar](1) NULL,
	[SCHEDULE_PRINT] [varchar](1) NULL,
	[SSR_SHOW_CLSRCH] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_crse_attributes]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_crse_attributes](
	[CRSE_ID] [varchar](6) NULL,
	[EFFDT] [date] NULL,
	[CRSE_ATTR] [varchar](4) NULL,
	[CRSE_ATTR_VALUE] [varchar](10) NULL,
	[SCC_ROW_ADD_OPRID] [varchar](30) NULL,
	[SCC_ROW_ADD_DTTM] [datetime2](6) NULL,
	[SCC_ROW_UPD_OPRID] [varchar](30) NULL,
	[SCC_ROW_UPD_DTTM] [datetime2](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_INSTITUTION_TBL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_INSTITUTION_TBL](
	[INSTITUTION] [varchar](5) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EFF_STATUS] [varchar](1) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRSHORT] [varchar](10) NULL,
	[DESCRFORMAL] [varchar](50) NULL,
	[COUNTRY] [varchar](3) NULL,
	[ADDRESS1] [varchar](55) NULL,
	[ADDRESS2] [varchar](55) NULL,
	[ADDRESS3] [varchar](55) NULL,
	[ADDRESS4] [varchar](55) NULL,
	[CITY] [varchar](30) NULL,
	[NUM1] [varchar](6) NULL,
	[NUM2] [varchar](6) NULL,
	[HOUSE_TYPE] [varchar](2) NULL,
	[ADDR_FIELD1] [varchar](2) NULL,
	[ADDR_FIELD2] [varchar](4) NULL,
	[ADDR_FIELD3] [varchar](4) NULL,
	[COUNTY] [varchar](30) NULL,
	[STATE] [varchar](6) NULL,
	[POSTAL] [varchar](12) NULL,
	[GEO_CODE] [varchar](11) NULL,
	[IN_CITY_LIMIT] [varchar](1) NULL,
	[GRADING_SCHEME] [varchar](3) NULL,
	[GRADING_BASIS] [varchar](3) NULL,
	[GRADING_BASIS_SCH] [varchar](3) NULL,
	[CAMPUS] [varchar](5) NULL,
	[STDNT_SPEC_PERM] [varchar](1) NULL,
	[AUTO_ENRL_WAITLIST] [varchar](1) NULL,
	[RESIDENCY_REQ] [varchar](1) NULL,
	[FA_WDCAN_RSN] [varchar](3) NULL,
	[ENRL_ACTION_REASON] [varchar](4) NULL,
	[FACILITY_CONFLICT] [varchar](1) NULL,
	[NSLC_AGD_RULE] [varchar](1) NULL,
	[NSLC_MONTH_FACTOR] [decimal](38, 0) NULL,
	[STDNT_ATTR_COHORT] [varchar](4) NULL,
	[CLASS_MTG_ATND_TYP] [varchar](4) NULL,
	[FICE_CD] [varchar](6) NULL,
	[LOAD_CALC_APPLY] [varchar](1) NULL,
	[FULLTIME_LIMIT_PCT] [decimal](5, 2) NULL,
	[FULLTIM_LIMIT_WARN] [decimal](5, 2) NULL,
	[PARTTIME_LIMIT_PCT] [decimal](5, 2) NULL,
	[PARTTIM_LIMIT_WARN] [decimal](5, 2) NULL,
	[ASSIGN_TYPE] [varchar](3) NULL,
	[INSTRUCTOR_CLASS] [varchar](6) NULL,
	[CRSE_CNTCT_HRS_PCT] [decimal](38, 0) NULL,
	[UNITS_ACAD_PRG_PCT] [decimal](38, 0) NULL,
	[LMS_FILE_TYPE] [varchar](3) NULL,
	[PHONE_TYPE] [varchar](4) NULL,
	[ADDR_USAGE] [varchar](10) NULL,
	[REPEAT_ENRL_CTL] [varchar](1) NULL,
	[REPEAT_ENRL_SUSP] [varchar](1) NULL,
	[REPEAT_GRD_CK] [varchar](1) NULL,
	[REPEAT_GRD_SUSP] [varchar](1) NULL,
	[GRAD_NAME_CHG] [varchar](1) NULL,
	[PRINT_NID] [varchar](1) NULL,
	[REPEAT_CHK_TOPIC] [varchar](1) NULL,
	[SCC_AUS_DEST] [varchar](1) NULL,
	[SCC_CAN_GOV_RPT] [varchar](1) NULL,
	[SCC_NZL_ENR] [varchar](1) NULL,
	[SCC_NZL_NZQA] [varchar](1) NULL,
	[SSR_USE_WEEKS] [varchar](1) NULL,
	[SSR_ENBL_ACAD_PROG] [varchar](1) NULL,
	[SSR_CLASS_CANC_ENR] [varchar](1) NULL,
	[SSR_CLASS_CANC_NON] [varchar](1) NULL,
	[EXT_USERID_OPT] [varchar](1) NULL,
	[LMS_PROVIDER] [varchar](30) NULL,
	[E_ADDR_TYPE] [varchar](4) NULL,
	[SCC_HE_USED_NLD] [varchar](1) NULL,
	[SSR_RPT_MATCH_OPT] [varchar](1) NULL,
	[SSR_RPT_TRF_OPT] [varchar](1) NULL,
	[SAD_SL_PARTICIPANT] [varchar](1) NULL,
	[SAA_AARPT_TYPE] [varchar](5) NULL,
	[SAA_PLNRRPT_TYPE] [varchar](5) NULL,
	[SAA_WHIFRPT_TYPE] [varchar](5) NULL,
	[SAA_WHRPT_TYP_PREM] [varchar](5) NULL,
	[SAA_WHRPT_TYP_ADVR] [varchar](5) NULL,
	[SAA_WHIFXFR_TYPE] [varchar](5) NULL,
	[SAA_WHXFR_TYP_PREM] [varchar](5) NULL,
	[SSR_RPT_DATE_ENRL] [varchar](1) NULL,
	[SSR_RPT_DATE_PROC] [varchar](1) NULL,
	[SAD_UC_HESA_UCAS] [varchar](1) NULL,
	[SAD_PB_PBI] [varchar](1) NULL,
	[SSR_GRAD_CHRG_FEE] [varchar](1) NULL,
	[SSR_GRAD_ELIG_ONLY] [varchar](1) NULL,
	[SSR_GRAD_PAY_REQ] [varchar](1) NULL,
	[FEE_CODE] [varchar](6) NULL,
	[PROG_REASON] [varchar](4) NULL,
	[SSR_USE_GRAD_TRACK] [varchar](1) NULL,
	[SSR_GRAD_ALWADUPD] [varchar](1) NULL,
	[SSR_GRAD_ALWNMUPD] [varchar](1) NULL,
	[SSR_GRAD_STATUS] [varchar](4) NULL,
	[SSR_GRAD_SHOW_HONR] [varchar](1) NULL,
	[SSR_GRAD_SHOW_MLST] [varchar](1) NULL,
	[SSR_GRAD_SHOW_NOTE] [varchar](1) NULL,
	[SSR_GRAD_SHOW_OTCR] [varchar](1) NULL,
	[SSR_GRAD_SHOW_SGPA] [varchar](1) NULL,
	[SSR_GRAD_SHOW_STAT] [varchar](1) NULL,
	[SSR_GRAD_SHOW_TRCR] [varchar](1) NULL,
	[SSR_GRAD_SHOW_TSCR] [varchar](1) NULL,
	[SSR_GRAD_UPDMSG] [varchar](254) NULL,
	[SSR_GRAD_UPDNAME] [varchar](1) NULL,
	[SSR_GRAD_NAME_LBL] [varchar](30) NULL,
	[SSR_GRAD_NDT] [varchar](30) NULL,
	[SSR_GRAD_NAME_TYPE] [varchar](3) NULL,
	[SSR_GRAD_UPDADDR] [varchar](1) NULL,
	[SSR_GRAD_ADDR_LBL] [varchar](30) NULL,
	[SSR_GRAD_ADDRUSAGE] [varchar](10) NULL,
	[SSR_GRAD_STAT_AG] [varchar](50) NULL,
	[SSR_GRAD_STAT_AP] [varchar](50) NULL,
	[SSR_GRAD_STAT_AW] [varchar](50) NULL,
	[SSR_GRAD_STAT_DN] [varchar](50) NULL,
	[SSR_GRAD_STAT_EG] [varchar](50) NULL,
	[SSR_GRAD_STAT_IR] [varchar](50) NULL,
	[SSR_GRAD_STAT_PN] [varchar](50) NULL,
	[SSR_GRAD_STAT_WD] [varchar](50) NULL,
	[SSR_APT_LVL] [varchar](1) NULL,
	[SAD_BR_USE_NLD] [varchar](1) NULL,
	[SSR_ENRL_CRS_MLSTN] [varchar](1) NULL,
	[SSR_AM_ENABLE] [varchar](1) NULL,
	[SSR_ACM_DEFACTV] [varchar](1) NULL,
	[SSR_AC_DFLT_LVL] [varchar](1) NULL,
	[SSR_BRON_HO_NLD] [varchar](1) NULL,
	[SSR_RSLT_TYPE] [varchar](20) NULL,
	[SSR_IAM_ENEVNT_OPT] [varchar](1) NULL,
	[SSR_IAM_BTCRTE_OPT] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_INSTITUTION_TBL_TEMP]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_INSTITUTION_TBL_TEMP](
	[INSTITUTION] [varchar](5) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EFF_STATUS] [varchar](1) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRSHORT] [varchar](10) NULL,
	[DESCRFORMAL] [varchar](50) NULL,
	[COUNTRY] [varchar](3) NULL,
	[ADDRESS1] [varchar](55) NULL,
	[ADDRESS2] [varchar](55) NULL,
	[ADDRESS3] [varchar](55) NULL,
	[ADDRESS4] [varchar](55) NULL,
	[CITY] [varchar](30) NULL,
	[NUM1] [varchar](6) NULL,
	[NUM2] [varchar](6) NULL,
	[HOUSE_TYPE] [varchar](2) NULL,
	[ADDR_FIELD1] [varchar](2) NULL,
	[ADDR_FIELD2] [varchar](4) NULL,
	[ADDR_FIELD3] [varchar](4) NULL,
	[COUNTY] [varchar](30) NULL,
	[STATE] [varchar](6) NULL,
	[POSTAL] [varchar](12) NULL,
	[GEO_CODE] [varchar](11) NULL,
	[IN_CITY_LIMIT] [varchar](1) NULL,
	[GRADING_SCHEME] [varchar](3) NULL,
	[GRADING_BASIS] [varchar](3) NULL,
	[GRADING_BASIS_SCH] [varchar](3) NULL,
	[CAMPUS] [varchar](5) NULL,
	[STDNT_SPEC_PERM] [varchar](1) NULL,
	[AUTO_ENRL_WAITLIST] [varchar](1) NULL,
	[RESIDENCY_REQ] [varchar](1) NULL,
	[FA_WDCAN_RSN] [varchar](3) NULL,
	[ENRL_ACTION_REASON] [varchar](4) NULL,
	[FACILITY_CONFLICT] [varchar](1) NULL,
	[NSLC_AGD_RULE] [varchar](1) NULL,
	[NSLC_MONTH_FACTOR] [decimal](38, 0) NULL,
	[STDNT_ATTR_COHORT] [varchar](4) NULL,
	[CLASS_MTG_ATND_TYP] [varchar](4) NULL,
	[FICE_CD] [varchar](6) NULL,
	[LOAD_CALC_APPLY] [varchar](1) NULL,
	[FULLTIME_LIMIT_PCT] [decimal](5, 2) NULL,
	[FULLTIM_LIMIT_WARN] [decimal](5, 2) NULL,
	[PARTTIME_LIMIT_PCT] [decimal](5, 2) NULL,
	[PARTTIM_LIMIT_WARN] [decimal](5, 2) NULL,
	[ASSIGN_TYPE] [varchar](3) NULL,
	[INSTRUCTOR_CLASS] [varchar](6) NULL,
	[CRSE_CNTCT_HRS_PCT] [decimal](38, 0) NULL,
	[UNITS_ACAD_PRG_PCT] [decimal](38, 0) NULL,
	[LMS_FILE_TYPE] [varchar](3) NULL,
	[PHONE_TYPE] [varchar](4) NULL,
	[ADDR_USAGE] [varchar](10) NULL,
	[REPEAT_ENRL_CTL] [varchar](1) NULL,
	[REPEAT_ENRL_SUSP] [varchar](1) NULL,
	[REPEAT_GRD_CK] [varchar](1) NULL,
	[REPEAT_GRD_SUSP] [varchar](1) NULL,
	[GRAD_NAME_CHG] [varchar](1) NULL,
	[PRINT_NID] [varchar](1) NULL,
	[REPEAT_CHK_TOPIC] [varchar](1) NULL,
	[SCC_AUS_DEST] [varchar](1) NULL,
	[SCC_CAN_GOV_RPT] [varchar](1) NULL,
	[SCC_NZL_ENR] [varchar](1) NULL,
	[SCC_NZL_NZQA] [varchar](1) NULL,
	[SSR_USE_WEEKS] [varchar](1) NULL,
	[SSR_ENBL_ACAD_PROG] [varchar](1) NULL,
	[SSR_CLASS_CANC_ENR] [varchar](1) NULL,
	[SSR_CLASS_CANC_NON] [varchar](1) NULL,
	[EXT_USERID_OPT] [varchar](1) NULL,
	[LMS_PROVIDER] [varchar](30) NULL,
	[E_ADDR_TYPE] [varchar](4) NULL,
	[SCC_HE_USED_NLD] [varchar](1) NULL,
	[SSR_RPT_MATCH_OPT] [varchar](1) NULL,
	[SSR_RPT_TRF_OPT] [varchar](1) NULL,
	[SAD_SL_PARTICIPANT] [varchar](1) NULL,
	[SAA_AARPT_TYPE] [varchar](5) NULL,
	[SAA_PLNRRPT_TYPE] [varchar](5) NULL,
	[SAA_WHIFRPT_TYPE] [varchar](5) NULL,
	[SAA_WHRPT_TYP_PREM] [varchar](5) NULL,
	[SAA_WHRPT_TYP_ADVR] [varchar](5) NULL,
	[SAA_WHIFXFR_TYPE] [varchar](5) NULL,
	[SAA_WHXFR_TYP_PREM] [varchar](5) NULL,
	[SSR_RPT_DATE_ENRL] [varchar](1) NULL,
	[SSR_RPT_DATE_PROC] [varchar](1) NULL,
	[SAD_UC_HESA_UCAS] [varchar](1) NULL,
	[SAD_PB_PBI] [varchar](1) NULL,
	[SSR_GRAD_CHRG_FEE] [varchar](1) NULL,
	[SSR_GRAD_ELIG_ONLY] [varchar](1) NULL,
	[SSR_GRAD_PAY_REQ] [varchar](1) NULL,
	[FEE_CODE] [varchar](6) NULL,
	[PROG_REASON] [varchar](4) NULL,
	[SSR_USE_GRAD_TRACK] [varchar](1) NULL,
	[SSR_GRAD_ALWADUPD] [varchar](1) NULL,
	[SSR_GRAD_ALWNMUPD] [varchar](1) NULL,
	[SSR_GRAD_STATUS] [varchar](4) NULL,
	[SSR_GRAD_SHOW_HONR] [varchar](1) NULL,
	[SSR_GRAD_SHOW_MLST] [varchar](1) NULL,
	[SSR_GRAD_SHOW_NOTE] [varchar](1) NULL,
	[SSR_GRAD_SHOW_OTCR] [varchar](1) NULL,
	[SSR_GRAD_SHOW_SGPA] [varchar](1) NULL,
	[SSR_GRAD_SHOW_STAT] [varchar](1) NULL,
	[SSR_GRAD_SHOW_TRCR] [varchar](1) NULL,
	[SSR_GRAD_SHOW_TSCR] [varchar](1) NULL,
	[SSR_GRAD_UPDMSG] [varchar](254) NULL,
	[SSR_GRAD_UPDNAME] [varchar](1) NULL,
	[SSR_GRAD_NAME_LBL] [varchar](30) NULL,
	[SSR_GRAD_NDT] [varchar](30) NULL,
	[SSR_GRAD_NAME_TYPE] [varchar](3) NULL,
	[SSR_GRAD_UPDADDR] [varchar](1) NULL,
	[SSR_GRAD_ADDR_LBL] [varchar](30) NULL,
	[SSR_GRAD_ADDRUSAGE] [varchar](10) NULL,
	[SSR_GRAD_STAT_AG] [varchar](50) NULL,
	[SSR_GRAD_STAT_AP] [varchar](50) NULL,
	[SSR_GRAD_STAT_AW] [varchar](50) NULL,
	[SSR_GRAD_STAT_DN] [varchar](50) NULL,
	[SSR_GRAD_STAT_EG] [varchar](50) NULL,
	[SSR_GRAD_STAT_IR] [varchar](50) NULL,
	[SSR_GRAD_STAT_PN] [varchar](50) NULL,
	[SSR_GRAD_STAT_WD] [varchar](50) NULL,
	[SSR_APT_LVL] [varchar](1) NULL,
	[SAD_BR_USE_NLD] [varchar](1) NULL,
	[SSR_ENRL_CRS_MLSTN] [varchar](1) NULL,
	[SSR_AM_ENABLE] [varchar](1) NULL,
	[SSR_ACM_DEFACTV] [varchar](1) NULL,
	[SSR_AC_DFLT_LVL] [varchar](1) NULL,
	[SSR_BRON_HO_NLD] [varchar](1) NULL,
	[SSR_RSLT_TYPE] [varchar](20) NULL,
	[SSR_IAM_ENEVNT_OPT] [varchar](1) NULL,
	[SSR_IAM_BTCRTE_OPT] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ps_Item_Due_Sf]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ps_Item_Due_Sf](
	[BUSINESS_UNIT] [nvarchar](5) NULL,
	[COMMON_ID] [nvarchar](11) NULL,
	[SA_ID_TYPE] [nvarchar](1) NULL,
	[ITEM_NBR] [nvarchar](15) NULL,
	[DUE_DT] [datetime] NULL,
	[EMPLID] [nvarchar](11) NULL,
	[EXT_ORG_ID] [nvarchar](11) NULL,
	[AV_ID] [nvarchar](11) NULL,
	[DUE_AMT] [numeric](16, 2) NULL,
	[APPLIED_AMT] [numeric](16, 2) NULL,
	[SCC_ROW_ADD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_ADD_DTTM] [datetime2](6) NULL,
	[SCC_ROW_UPD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_UPD_DTTM] [datetime2](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_ITEM_SF]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_ITEM_SF](
	[BUSINESS_UNIT] [nvarchar](5) NULL,
	[COMMON_ID] [nvarchar](11) NULL,
	[SA_ID_TYPE] [nvarchar](1) NULL,
	[ITEM_NBR] [nvarchar](15) NULL,
	[EMPLID] [nvarchar](11) NULL,
	[ACCOUNT_NBR] [nvarchar](10) NULL,
	[ACCOUNT_TERM] [nvarchar](4) NULL,
	[ACAD_YEAR] [nvarchar](4) NULL,
	[ITEM_TYPE] [nvarchar](12) NULL,
	[ITEM_AMT] [numeric](16, 2) NULL,
	[APPLIED_AMT] [numeric](16, 2) NULL,
	[ENCUMBERED_AMT] [numeric](16, 2) NULL,
	[REF1_DESCR] [nvarchar](30) NULL,
	[ITEM_BALANCE] [numeric](16, 2) NULL,
	[ACAD_CAREER] [nvarchar](4) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[SESSION_CODE] [nvarchar](3) NULL,
	[CLASS_NBR] [numeric](38, 0) NULL,
	[FEE_CD] [nvarchar](6) NULL,
	[SEL_GROUP] [nvarchar](10) NULL,
	[ADM_APPL_NBR] [nvarchar](8) NULL,
	[GL_SATISFIED_AMT] [numeric](14, 2) NULL,
	[GL_ASSESSED_AMT] [numeric](14, 2) NULL,
	[PAYMENT_ID_NBR] [bigint] NULL,
	[ITEM_TERM] [nvarchar](4) NULL,
	[ORIGINAL_ACCT_TERM] [nvarchar](4) NULL,
	[BILLING_CAREER] [nvarchar](4) NULL,
	[DEPOSIT_NBR] [bigint] NULL,
	[REFUND_NBR] [bigint] NULL,
	[EXT_ORG_ID] [nvarchar](11) NULL,
	[REFUND_EMPLID] [nvarchar](11) NULL,
	[CONTRACT_NUM] [nvarchar](25) NULL,
	[COLLECTION_ID] [bigint] NULL,
	[RECEIPT_NBR] [bigint] NULL,
	[ACCOUNT_TYPE_SF] [nvarchar](3) NULL,
	[ITEM_TYPE_CD] [nvarchar](1) NULL,
	[CONTRACT_EMPLID] [nvarchar](11) NULL,
	[CHARGE_PRIORITY] [nvarchar](8) NULL,
	[COURSE_LIST] [nvarchar](9) NULL,
	[CRSE_ID] [nvarchar](6) NULL,
	[WAIVER_CODE] [nvarchar](6) NULL,
	[PRIORITY] [numeric](38, 0) NULL,
	[PRIORITY_PMT_FLG] [nvarchar](1) NULL,
	[NRA_TAXATION_SWTCH] [nvarchar](1) NULL,
	[GL_BALANCED_AMT] [numeric](14, 2) NULL,
	[STATE_TAX_RT] [numeric](6, 6) NULL,
	[LOCAL_TAX_RT] [numeric](6, 6) NULL,
	[FEDERAL_TAX_RT] [numeric](6, 6) NULL,
	[BILLING_DT] [date] NULL,
	[DUE_DT] [date] NULL,
	[ACTUAL_BILLING_DT] [date] NULL,
	[CALENDAR_YEAR] [numeric](38, 0) NULL,
	[SRVC_IND_DTTM] [datetime2](6) NULL,
	[TAX_ADJ_WHOLDINGS] [numeric](10, 2) NULL,
	[TRANS_FEE_CD] [nvarchar](8) NULL,
	[LATE_FEE_CODE] [nvarchar](6) NULL,
	[CUR_RT_TYPE] [nvarchar](5) NULL,
	[RATE_MULT] [numeric](15, 8) NULL,
	[RATE_DIV] [numeric](15, 8) NULL,
	[CURRENCY_CD] [nvarchar](3) NULL,
	[ORIGNL_CURRENCY_CD] [nvarchar](3) NULL,
	[ORIGNL_ITEM_AMT] [numeric](16, 2) NULL,
	[ITEM_STATUS] [nvarchar](1) NULL,
	[TRANSFER_DT] [date] NULL,
	[TRANSFER_STATUS] [nvarchar](1) NULL,
	[TRANSFER_PAYMNT_ID] [nvarchar](15) NULL,
	[TRANSFER_AMT] [numeric](16, 2) NULL,
	[ITEM_NBR_SOURCE] [nvarchar](15) NULL,
	[TAX_AUTHORITY_CD] [nvarchar](3) NULL,
	[CONTRACT_AMT] [numeric](16, 2) NULL,
	[INTEREST_DT] [date] NULL,
	[T4_SENT_AMT] [numeric](10, 2) NULL,
	[GL_FROM_SUBFEE] [nvarchar](1) NULL,
	[ITEM_EFFECTIVE_DT] [date] NULL,
	[TRACER_NBR] [nvarchar](30) NULL,
	[AID_YEAR] [nvarchar](4) NULL,
	[DISBURSEMENT_DATE] [date] NULL,
	[ORIG_EFF_DT] [date] NULL,
	[SF_DEPOSIT_ID] [nvarchar](10) NULL,
	[LAST_ACTIVITY_DATE] [date] NULL,
	[REFUND_EXT_ORG_ID] [nvarchar](11) NULL,
	[REFUND_ORG_CONTACT] [numeric](38, 0) NULL,
	[TAX_CD] [nvarchar](8) NULL,
	[SF_PMT_REF_NBR] [nvarchar](12) NULL,
	[SF_ADM_APPL_DEL] [nvarchar](1) NULL,
	[CLASS_CRSE_FEE_IND] [nvarchar](1) NULL,
	[SSF_BILLED_AMOUNT] [numeric](16, 2) NULL,
	[SSF_INSTMNT_ID] [numeric](38, 0) NULL,
	[SCC_ROW_ADD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_ADD_DTTM] [datetime2](6) NULL,
	[SCC_ROW_UPD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_UPD_DTTM] [datetime2](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_item_type_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_item_type_tbl](
	[SETID] [varchar](5) NULL,
	[ITEM_TYPE] [varchar](12) NULL,
	[EFFDT] [date] NULL,
	[EFF_STATUS] [varchar](1) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRSHORT] [varchar](10) NULL,
	[CURRENCY_CD] [varchar](3) NULL,
	[MINIMUM_AMT] [numeric](16, 2) NULL,
	[MAXIMUM_AMT] [numeric](16, 2) NULL,
	[ITEM_TYPE_CD] [varchar](1) NULL,
	[SECURITY_GROUP] [varchar](8) NULL,
	[ADJUSTMENT_CAL_SF] [varchar](8) NULL,
	[PAYMENT_TERMS] [varchar](8) NULL,
	[PAYMENT_PRIORITY] [varchar](8) NULL,
	[CHARGE_PRIORITY] [varchar](8) NULL,
	[ENCUMBRANCE_DAYS] [numeric](38, 0) NULL,
	[ENCUMBRANCE_PCT] [numeric](9, 6) NULL,
	[SSF_STATE_FLAG] [varchar](1) NULL,
	[TENDER_SPEC] [varchar](1) NULL,
	[TENDER_CATEGORY] [varchar](3) NULL,
	[ALL_OR_NONE] [varchar](1) NULL,
	[ENROL_FLAG] [varchar](1) NULL,
	[KEYWORD1] [varchar](10) NULL,
	[KEYWORD2] [varchar](10) NULL,
	[KEYWORD3] [varchar](10) NULL,
	[DAYS_SINCE_EFFDT] [numeric](38, 0) NULL,
	[DAYS_TO_EFFDT] [numeric](38, 0) NULL,
	[DUEDAYS_PAST_EFFDT] [numeric](38, 0) NULL,
	[DUEDAYS_PRIOR_EFFD] [numeric](38, 0) NULL,
	[TERM_ENROLL_REQ] [varchar](1) NULL,
	[REFUNDABLE_IND] [varchar](1) NULL,
	[ERNCD] [varchar](3) NULL,
	[TAXABLE_Y_N] [varchar](1) NULL,
	[TUITION_DEPOSIT] [varchar](1) NULL,
	[GL_INTERFACE_REQ] [varchar](1) NULL,
	[DEFAULT_AMT] [numeric](16, 2) NULL,
	[ERNCD_NOTAX] [varchar](3) NULL,
	[RECVABLE_FROM_CHRG] [varchar](1) NULL,
	[PRIORITY] [numeric](38, 0) NULL,
	[PRIORITY_PMT_FLG] [varchar](1) NULL,
	[NRA_CREDIT_TAX_FLG] [varchar](1) NULL,
	[NRA_DEBIT_TAX_FLG] [varchar](1) NULL,
	[MATCH_WRITEOFF] [varchar](1) NULL,
	[LOCAL_TAX_OFFSET] [varchar](1) NULL,
	[LOCAL_TAX_PMT] [varchar](1) NULL,
	[STATE_TAX_OFFSET] [varchar](1) NULL,
	[STATE_TAX_PMT] [varchar](1) NULL,
	[GL_CRSE_CLASS_SPC] [varchar](1) NULL,
	[TAX_CD] [varchar](8) NULL,
	[T4_INCOME] [varchar](1) NULL,
	[WAGE_LOSS_PLAN] [varchar](3) NULL,
	[T2202A_FLG] [varchar](1) NULL,
	[T2202A_PCT] [numeric](5, 3) NULL,
	[T2202A_OFFSET_FLG] [varchar](1) NULL,
	[PAY_PRIORITY_ID] [varchar](8) NULL,
	[ACCTG_DT_CNTL] [varchar](1) NULL,
	[SSF_ACCTG_DT_ID] [varchar](3) NULL,
	[SF_1098_FLG] [varchar](1) NULL,
	[SSF_DEST_TUT_TYPE] [varchar](1) NULL,
	[SFA_EA_TYPE] [varchar](3) NULL,
	[SFA_EA_SOURCE] [varchar](3) NULL,
	[SFA_EA_PROGRAM_CD] [varchar](3) NULL,
	[SSF_BILL_GBL_INV] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ps_keyword_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ps_keyword_tbl](
	[SETID] [nvarchar](5) NULL,
	[KEYWORD1] [nvarchar](10) NULL,
	[KEYWORD_STATUS] [nvarchar](1) NULL,
	[DESCR] [nvarchar](30) NULL,
	[DESCRSHORT] [nvarchar](10) NULL,
	[KEYWORD_NUM] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_ACAD_ORG_TBL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_ACAD_ORG_TBL](
	[ACAD_ORG] [varchar](10) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EFF_STATUS] [varchar](1) NOT NULL,
	[DESCR_ENG] [varchar](100) NOT NULL,
	[DESCR_IND] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_ACAD_PROG_DET]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_ACAD_PROG_DET](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[ACAD_PROG] [varchar](5) NULL,
	[DESCR] [varchar](30) NULL,
	[EFFDT] [date] NULL,
	[DESCR_ENG] [varchar](100) NULL,
	[DESCR_IND] [varchar](100) NULL,
	[N_INITIAL] [varchar](4) NULL,
	[ACAD_ORG] [varchar](10) NULL,
	[DESCR100] [varchar](100) NULL,
	[ACAD_ORG1] [varchar](10) NULL,
	[DESCR100_3] [varchar](100) NULL,
	[ACAD_GROUP] [varchar](5) NULL,
	[DESCR100_2] [varchar](100) NULL,
	[ACAD_GROUP_SRCH] [varchar](20) NULL,
	[DESCR100_4] [varchar](100) NULL,
	[CAMPUS] [varchar](5) NULL,
	[GRADING_SCHEME] [varchar](3) NULL,
	[N_DOUBLE_DEG_PRG] [varchar](1) NULL,
	[BN_PROG_GRP] [varchar](10) NULL,
	[N_DESCR_ENG] [varchar](100) NULL,
	[EMPLID] [varchar](11) NULL,
	[N_OFFICIAL_NM] [varchar](100) NULL,
	[N_TITLE_ENG] [varchar](116) NULL,
	[N_TITLE_IND] [varchar](114) NULL,
	[N_CERTIF_PROG_CODE] [varchar](10) NULL,
	[N_EXTENSION_PROG] [varchar](4) NULL,
	[N_GLOBAL_PROG] [varchar](4) NULL,
	[N_GRP_PROG_ENG] [varchar](100) NULL,
	[N_OFFC_DESCR_ENG] [varchar](100) NULL,
	[N_MAX_STUDY_GRAD] [varchar](100) NULL,
	[N_MASTER_TRACK] [varchar](4) NULL,
	[N_PJJ_CITY] [varchar](100) NULL,
	[N_INSTR_LANG_ENG] [varchar](100) NULL,
	[N_LEN_STUDY_ENG] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Ps_N_Enr_Rules]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ps_N_Enr_Rules](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[REQ_TERM] [varchar](4) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[ACAD_PROG] [varchar](5) NULL,
	[ACAD_PLAN] [varchar](10) NULL,
	[N_ENRCHMT_TRCK_TRM] [varchar](3) NULL,
	[STRM] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_n_enr_track]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_n_enr_track](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[EFFDT] [date] NULL,
	[EFF_STATUS] [varchar](1) NULL,
	[N_DESCR_ENG] [varchar](100) NULL,
	[N_DESCR_IND] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_ENRSTG_LECT_H]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_ENRSTG_LECT_H](
	[EMPLID] [varchar](11) NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NULL,
	[N_OFFICIAL_NM] [varchar](100) NULL,
	[EMAIL_ADDR] [varchar](70) NULL,
	[PHONE] [varchar](24) NULL,
	[INSTR_AVAILABLE] [varchar](2) NULL,
	[DESCR] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_ENRSTG_STD_BD]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_ENRSTG_STD_BD](
	[EMPLID] [varchar](11) NULL,
	[N_NAME1] [varchar](60) NULL,
	[SEX] [varchar](1) NULL,
	[BIRTHDATE] [datetime] NULL,
	[N_ADDRESS1] [varchar](300) NULL,
	[EMAIL_ADDR] [varchar](70) NULL,
	[PHONE] [varchar](24) NULL,
	[N_LINE_ID] [varchar](100) NULL,
	[N_FACEBOOK_ID] [varchar](100) NULL,
	[N_LINKEDIN_ID] [varchar](100) NULL,
	[DESCR50] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_ENRSTG_STD_EG]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_ENRSTG_STD_EG](
	[EMPLID] [varchar](11) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[STRM] [varchar](4) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[N_DESCR_ENG] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_ENRSTG_STD_PG]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_ENRSTG_STD_PG](
	[EMPLID] [varchar](11) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[N_DESCR_ENG] [varchar](100) NULL,
	[CAMPUS] [varchar](5) NULL,
	[CAMPUS_DESCR] [varchar](100) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[N_ACAD_CAREER_ENG] [varchar](100) NULL,
	[ACAD_GROUP] [varchar](5) NULL,
	[N_ACAD_GROUP_ENG] [varchar](100) NULL,
	[N_ACAD_GROUP2] [varchar](5) NULL,
	[N_ACAD_GROUP2_ENG] [varchar](100) NULL,
	[ACAD_ORG] [varchar](10) NULL,
	[N_ACAD_ORG_DES_ENG] [varchar](100) NULL,
	[N_ACAD_ORG2] [varchar](10) NULL,
	[N_ACAD_ORG2_ENG] [varchar](150) NULL,
	[ACAD_PROG] [varchar](5) NULL,
	[N_ACAD_PROG_ENG] [varchar](100) NULL,
	[ACAD_PLAN] [varchar](10) NULL,
	[N_ACAD_PLAN_ENG] [varchar](100) NULL,
	[ACAD_LEVEL_BOT] [varchar](3) NULL,
	[DESCR] [varchar](30) NULL,
	[REQ_TERM] [varchar](4) NULL,
	[CUM_GPA] [numeric](8, 3) NULL,
	[TOT_CUMULATIVE] [numeric](8, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_LC_JOB_INFO]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_LC_JOB_INFO](
	[EMPLID] [varchar](11) NOT NULL,
	[EFFDT] [datetime] NOT NULL,
	[EFFSEQ] [decimal](38, 0) NOT NULL,
	[N_ACTION_CODE] [varchar](10) NOT NULL,
	[N_ACTION_REASON] [varchar](20) NOT NULL,
	[DESCR254] [varchar](254) NOT NULL,
	[HIRE_DT] [date] NULL,
	[N_LEC_STATUS] [varchar](1) NOT NULL,
	[N_TEACH_STATUS] [varchar](1) NOT NULL,
	[N_TEACH_START] [date] NULL,
	[INSTITUTION] [varchar](5) NOT NULL,
	[N_TIPE_DOSEN] [varchar](10) NOT NULL,
	[N_TIPE_DOSEN_DTL] [varchar](10) NOT NULL,
	[FROM_DATE] [date] NULL,
	[TO_DATE] [date] NULL,
	[ACAD_GROUP] [varchar](5) NOT NULL,
	[ACAD_CAREER] [varchar](4) NOT NULL,
	[ACAD_ORG] [varchar](10) NOT NULL,
	[DEPARTMENT] [varchar](10) NOT NULL,
	[N_CRSE_ATTR_FOS] [varchar](10) NOT NULL,
	[N_CRSE_ATTR_SFS] [varchar](10) NOT NULL,
	[CAMPUS] [varchar](5) NOT NULL,
	[LOCATION] [varchar](10) NOT NULL,
	[ATTACHSYSFILENAME] [varchar](128) NOT NULL,
	[ATTACHUSERFILE] [varchar](64) NOT NULL,
	[N_JOB_MOVED_REASON] [varchar](1) NOT NULL,
	[CREATEDTTM] [datetime2](6) NULL,
	[CREATEOPRID] [varchar](30) NOT NULL,
	[LASTUPDDTTM] [datetime2](6) NULL,
	[LASTUPDOPRID] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_LC_PERSONAL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_LC_PERSONAL](
	[EMPLID] [varchar](11) NOT NULL,
	[N_LC_TYPE_DATA] [varchar](2) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NOT NULL,
	[NAME_PREFIX] [varchar](4) NOT NULL,
	[FULL_NAME] [varchar](120) NOT NULL,
	[N_NATIONAL_ID1] [varchar](35) NOT NULL,
	[BIRTHPLACE] [varchar](30) NOT NULL,
	[BIRTHDATE] [date] NULL,
	[SEX] [varchar](1) NOT NULL,
	[COUNTRY_CD] [varchar](3) NOT NULL,
	[NATIONALITY] [varchar](30) NOT NULL,
	[N_RELIGION_CD] [varchar](4) NOT NULL,
	[MAR_STATUS] [varchar](1) NOT NULL,
	[MAR_STATUS_DT] [date] NULL,
	[NAME_AC] [varchar](50) NOT NULL,
	[CREATEDTTM] [datetime2](6) NULL,
	[CREATEOPRID] [varchar](30) NOT NULL,
	[LASTUPDDTTM] [datetime2](6) NULL,
	[LASTUPDOPRID] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_LC_PERSONAL_TEMP]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_LC_PERSONAL_TEMP](
	[EMPLID] [varchar](11) NOT NULL,
	[N_LC_TYPE_DATA] [varchar](2) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NOT NULL,
	[NAME_PREFIX] [varchar](4) NOT NULL,
	[FULL_NAME] [varchar](120) NOT NULL,
	[N_NATIONAL_ID1] [varchar](35) NOT NULL,
	[BIRTHPLACE] [varchar](30) NOT NULL,
	[BIRTHDATE] [date] NULL,
	[SEX] [varchar](1) NOT NULL,
	[COUNTRY_CD] [varchar](3) NOT NULL,
	[NATIONALITY] [varchar](30) NOT NULL,
	[N_RELIGION_CD] [varchar](4) NOT NULL,
	[MAR_STATUS] [varchar](1) NOT NULL,
	[MAR_STATUS_DT] [date] NULL,
	[NAME_AC] [varchar](50) NOT NULL,
	[CREATEDTTM] [datetime2](6) NULL,
	[CREATEOPRID] [varchar](30) NOT NULL,
	[LASTUPDDTTM] [datetime2](6) NULL,
	[LASTUPDOPRID] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_LC_PRF_HI_EDU]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_LC_PRF_HI_EDU](
	[EMPLID] [varchar](11) NOT NULL,
	[EFFDT] [date] NULL,
	[SEQNBR] [decimal](38, 0) NOT NULL,
	[EDUCATION_LVL] [varchar](2) NOT NULL,
	[DEGREE_CD] [varchar](8) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_LC_PRF_JJA]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_LC_PRF_JJA](
	[EMPLID] [varchar](11) NOT NULL,
	[EFFDT] [datetime] NOT NULL,
	[EFF_STATUS] [varchar](1) NOT NULL,
	[N_KOPERTIS_ID] [varchar](4) NOT NULL,
	[N_JJA_ID] [varchar](10) NOT NULL,
	[N_PRODI_DESC] [varchar](150) NOT NULL,
	[N_NOSK] [varchar](50) NOT NULL,
	[N_SK_RELEASE] [datetime] NOT NULL,
	[N_SK_EFFDT] [datetime] NOT NULL,
	[N_SK_GIVEN] [datetime] NULL,
	[N_HOMEBASE] [varchar](2) NOT NULL,
	[N_UNIV_CODE] [varchar](10) NOT NULL,
	[N_JJA_PROGRESS] [varchar](50) NOT NULL,
	[N_JJA_TARGET] [varchar](50) NOT NULL,
	[CREATEDTTM] [datetime2](6) NULL,
	[CREATEOPRID] [varchar](30) NOT NULL,
	[LASTUPDDTTM] [datetime2](6) NULL,
	[LASTUPDOPRID] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_LC_TYPE]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_LC_TYPE](
	[N_TIPE_DOSEN] [varchar](10) NOT NULL,
	[EFFDT] [date] NOT NULL,
	[EFF_STATUS] [varchar](1) NOT NULL,
	[DESCR50] [varchar](50) NOT NULL,
	[DESCR254] [varchar](254) NOT NULL,
	[CREATEDTTM] [datetime2](6) NULL,
	[CREATEOPRID] [varchar](30) NOT NULL,
	[LASTUPDDTTM] [datetime2](6) NULL,
	[LASTUPDOPRID] [varchar](30) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_n_personcar_dtl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_n_personcar_dtl](
	[INSTITUTION] [varchar](5) NULL,
	[EMPLID] [varchar](11) NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NULL,
	[N_STDNT_ID2] [varchar](20) NULL,
	[N_NAME1] [varchar](60) NULL,
	[N_ADDRESS1] [varchar](300) NULL,
	[CITY50] [varchar](50) NULL,
	[SEX] [varchar](1) NULL,
	[POSTAL] [varchar](12) NULL,
	[PHONE] [varchar](24) NULL,
	[MAR_STATUS] [varchar](1) NULL,
	[N_STATUS_SIPIL] [varchar](25) NULL,
	[BIRTHDATE] [date] NULL,
	[BIRTHPLACE] [varchar](30) NULL,
	[BIRTHCOUNTRY] [varchar](3) NULL,
	[COUNTRY_DESCR] [varchar](30) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[N_ACAD_CAREER_ENG] [varchar](100) NULL,
	[ACAD_GROUP] [varchar](5) NULL,
	[N_ACAD_GROUP_ENG] [varchar](100) NULL,
	[N_ACAD_GROUP_IND] [varchar](100) NULL,
	[N_ACAD_GROUP2] [varchar](5) NULL,
	[N_ACAD_GROUP2_ENG] [varchar](100) NULL,
	[N_ACAD_GROUP2_IND] [varchar](100) NULL,
	[ACAD_PROG] [varchar](5) NULL,
	[N_ACAD_PROG_ENG] [varchar](100) NULL,
	[N_ACAD_PROG_IND] [varchar](100) NULL,
	[PROG_STATUS] [varchar](4) NULL,
	[DESCR] [varchar](30) NULL,
	[ADMIT_TERM] [varchar](4) NULL,
	[N_ADMIT_TERM_DESCR] [varchar](50) NULL,
	[ACAD_YEAR] [varchar](4) NULL,
	[ACAD_PLAN] [varchar](10) NULL,
	[N_ACAD_PLAN_ENG] [varchar](100) NULL,
	[N_ACAD_PLAN_IND] [varchar](100) NULL,
	[N_ACAD_PLAN2] [varchar](10) NULL,
	[N_ACAD_PLAN_ENG2] [varchar](100) NULL,
	[N_ACAD_PLAN_IND2] [varchar](100) NULL,
	[RELIGIOUS_PREF] [varchar](4) NULL,
	[N_RELIGION] [varchar](20) NULL,
	[N_FATHER_NAME] [varchar](50) NULL,
	[N_MOTHER_NAME] [varchar](50) NULL,
	[STRM] [varchar](4) NULL,
	[CUM_GPA] [numeric](8, 3) NULL,
	[E_ADDR_TYPE] [varchar](4) NULL,
	[EMAIL_ADDR] [varchar](70) NULL,
	[N_KOMPUTER_FLAG] [varchar](1) NULL,
	[N_NASIONALITY] [varchar](50) NULL,
	[FIRST_NAME] [varchar](30) NULL,
	[LAST_NAME] [varchar](30) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[EFFDT] [date] NULL,
	[CAMPUS] [varchar](5) NULL,
	[CAMPUS_DESCR] [varchar](100) NULL,
	[STDNT_GROUP] [varchar](4) NULL,
	[N_STDNT_GROUP_DESC] [varchar](50) NULL,
	[EDUCATION_LVL] [varchar](2) NULL,
	[N_EDUC_LVL_DESCR] [varchar](100) NULL,
	[ACAD_ORG] [varchar](10) NULL,
	[N_ACAD_ORG_DES_ENG] [varchar](100) NULL,
	[N_ACAD_ORG_DES_IND] [varchar](100) NULL,
	[N_ACAD_ORG2] [varchar](10) NULL,
	[N_ACAD_ORG2_ENG] [varchar](150) NULL,
	[N_ACAD_ORG2_IND] [varchar](150) NULL,
	[REQ_TERM] [varchar](4) NULL,
	[DESCR1] [varchar](40) NULL,
	[N_DOUBLE_DEG_PRG] [varchar](1) NULL,
	[N_MASTER_TRACK] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_N_PERSONCAR_TBL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_N_PERSONCAR_TBL](
	[INSTITUTION] [varchar](5) NOT NULL,
	[EMPLID] [varchar](11) NOT NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NOT NULL,
	[N_STDNT_ID2] [varchar](20) NOT NULL,
	[N_NAME1] [varchar](60) NOT NULL,
	[N_ADDRESS1] [varchar](300) NULL,
	[CITY50] [varchar](50) NOT NULL,
	[SEX] [varchar](1) NOT NULL,
	[POSTAL] [varchar](12) NOT NULL,
	[PHONE] [varchar](24) NOT NULL,
	[MAR_STATUS] [varchar](1) NOT NULL,
	[N_STATUS_SIPIL] [varchar](25) NOT NULL,
	[BIRTHDATE] [datetime] NULL,
	[BIRTHPLACE] [varchar](30) NOT NULL,
	[BIRTHCOUNTRY] [varchar](3) NOT NULL,
	[COUNTRY_DESCR] [varchar](30) NOT NULL,
	[ACAD_CAREER] [varchar](4) NOT NULL,
	[N_ACAD_CAREER_ENG] [varchar](100) NOT NULL,
	[ACAD_GROUP] [varchar](5) NOT NULL,
	[N_ACAD_GROUP_ENG] [varchar](100) NOT NULL,
	[N_ACAD_GROUP_IND] [varchar](100) NOT NULL,
	[N_ACAD_GROUP2] [varchar](5) NOT NULL,
	[N_ACAD_GROUP2_ENG] [varchar](100) NOT NULL,
	[N_ACAD_GROUP2_IND] [varchar](100) NOT NULL,
	[ACAD_PROG] [varchar](5) NOT NULL,
	[N_ACAD_PROG_ENG] [varchar](100) NOT NULL,
	[N_ACAD_PROG_IND] [varchar](100) NOT NULL,
	[PROG_STATUS] [varchar](4) NOT NULL,
	[DESCR] [varchar](30) NOT NULL,
	[ADMIT_TERM] [varchar](4) NOT NULL,
	[N_ADMIT_TERM_DESCR] [varchar](50) NOT NULL,
	[ACAD_YEAR] [varchar](4) NOT NULL,
	[ACAD_PLAN] [varchar](10) NOT NULL,
	[N_ACAD_PLAN_ENG] [varchar](100) NOT NULL,
	[N_ACAD_PLAN_IND] [varchar](100) NOT NULL,
	[N_ACAD_PLAN2] [varchar](10) NOT NULL,
	[N_ACAD_PLAN_ENG2] [varchar](100) NOT NULL,
	[N_ACAD_PLAN_IND2] [varchar](100) NOT NULL,
	[RELIGIOUS_PREF] [varchar](4) NOT NULL,
	[N_RELIGION] [varchar](20) NOT NULL,
	[N_FATHER_NAME] [varchar](50) NOT NULL,
	[N_MOTHER_NAME] [varchar](50) NOT NULL,
	[STRM] [varchar](4) NOT NULL,
	[CUM_GPA] [decimal](8, 3) NOT NULL,
	[E_ADDR_TYPE] [varchar](4) NOT NULL,
	[EMAIL_ADDR] [varchar](70) NOT NULL,
	[N_KOMPUTER_FLAG] [varchar](1) NOT NULL,
	[N_NASIONALITY] [varchar](50) NOT NULL,
	[FIRST_NAME] [varchar](30) NOT NULL,
	[LAST_NAME] [varchar](30) NOT NULL,
	[STDNT_CAR_NBR] [decimal](38, 0) NOT NULL,
	[EFFDT] [datetime] NULL,
	[CAMPUS] [varchar](5) NOT NULL,
	[CAMPUS_DESCR] [varchar](100) NOT NULL,
	[STDNT_GROUP] [varchar](4) NOT NULL,
	[N_STDNT_GROUP_DESC] [varchar](50) NOT NULL,
	[EDUCATION_LVL] [varchar](2) NOT NULL,
	[N_EDUC_LVL_DESCR] [varchar](100) NOT NULL,
	[ACAD_ORG] [varchar](10) NOT NULL,
	[N_ACAD_ORG_DES_ENG] [varchar](100) NOT NULL,
	[N_ACAD_ORG_DES_IND] [varchar](100) NOT NULL,
	[N_ACAD_ORG2] [varchar](10) NOT NULL,
	[N_ACAD_ORG2_ENG] [varchar](150) NOT NULL,
	[N_ACAD_ORG2_IND] [varchar](150) NOT NULL,
	[REQ_TERM] [varchar](4) NOT NULL,
	[DESCR1] [varchar](40) NOT NULL,
	[N_DOUBLE_DEG_PRG] [varchar](1) NOT NULL,
	[N_MASTER_TRACK] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_n_stdnt_enr_trk]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_n_stdnt_enr_trk](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[STRM] [varchar](4) NULL,
	[EMPLID] [varchar](11) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[N_ENRCHMT_TRCK_TRM] [varchar](3) NULL,
	[N_EMPLID] [varchar](11) NULL,
	[N_PARTNER_ID] [varchar](6) NULL,
	[FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_STDNT_CAR_TERM]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_STDNT_CAR_TERM](
	[EMPLID] [varchar](11) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[STRM] [varchar](4) NULL,
	[REG_CARD_DATE] [date] NULL,
	[WITHDRAW_CODE] [varchar](3) NULL,
	[WITHDRAW_REASON] [varchar](4) NULL,
	[WITHDRAW_DATE] [date] NULL,
	[LAST_DATE_ATTENDED] [date] NULL,
	[STDNT_CAR_NBR] [bigint] NULL,
	[ACAD_PROG_PRIMARY] [varchar](5) NULL,
	[ACAD_LOAD_APPR] [varchar](1) NULL,
	[ACADEMIC_LOAD] [varchar](1) NULL,
	[FA_LOAD] [varchar](1) NULL,
	[ACAD_LEVEL_PROJ] [varchar](3) NULL,
	[ACAD_LEVEL_BOT] [varchar](3) NULL,
	[ACAD_LEVEL_EOT] [varchar](3) NULL,
	[N_THE_MAX_TOT_UNIT] [decimal](5, 2) NULL,
	[NSLDS_LOAN_YEAR] [varchar](1) NULL,
	[OVRD_ACAD_LVL_PROJ] [varchar](1) NULL,
	[OVRD_ACAD_LVL_ALL] [varchar](1) NULL,
	[ELIG_TO_ENROLL] [varchar](1) NULL,
	[OVRD_MAX_UNITS] [varchar](1) NULL,
	[MAX_TOTAL_UNIT] [decimal](5, 2) NULL,
	[MAX_NOGPA_UNIT] [decimal](5, 2) NULL,
	[MAX_AUDIT_UNIT] [decimal](5, 2) NULL,
	[MAX_WAIT_UNIT] [decimal](5, 2) NULL,
	[MIN_TOTAL_UNIT] [decimal](5, 2) NULL,
	[OVRD_BILL_UNITS] [varchar](1) NULL,
	[PROJ_BILL_UNT] [bigint] NULL,
	[UNT_TAKEN_PRGRSS] [decimal](8, 3) NULL,
	[UNT_PASSD_PRGRSS] [decimal](8, 3) NULL,
	[UNT_TAKEN_GPA] [decimal](8, 3) NULL,
	[UNT_PASSD_GPA] [decimal](8, 3) NULL,
	[UNT_TAKEN_NOGPA] [decimal](8, 3) NULL,
	[UNT_PASSD_NOGPA] [decimal](8, 3) NULL,
	[UNT_INPROG_GPA] [decimal](8, 3) NULL,
	[UNT_INPROG_NOGPA] [decimal](8, 3) NULL,
	[GRADE_POINTS] [decimal](9, 3) NULL,
	[UNT_AUDIT] [decimal](8, 3) NULL,
	[UNT_TRNSFR] [decimal](8, 3) NULL,
	[TRF_TAKEN_GPA] [decimal](8, 3) NULL,
	[TRF_TAKEN_NOGPA] [decimal](8, 3) NULL,
	[TRF_PASSED_GPA] [decimal](8, 3) NULL,
	[TRF_PASSED_NOGPA] [decimal](8, 3) NULL,
	[TRF_GRADE_POINTS] [decimal](9, 3) NULL,
	[UNT_TEST_CREDIT] [decimal](8, 3) NULL,
	[UNT_OTHER] [decimal](8, 3) NULL,
	[UNT_TAKEN_FA] [decimal](8, 3) NULL,
	[UNT_PASSD_FA] [decimal](8, 3) NULL,
	[UNT_TAKEN_FA_GPA] [decimal](8, 3) NULL,
	[GRADE_POINTS_FA] [decimal](9, 3) NULL,
	[UNT_TERM_TOT] [decimal](8, 3) NULL,
	[RESET_CUM_STATS] [varchar](1) NULL,
	[TOT_TAKEN_PRGRSS] [decimal](8, 3) NULL,
	[TOT_PASSD_PRGRSS] [decimal](8, 3) NULL,
	[TOT_TAKEN_GPA] [decimal](8, 3) NULL,
	[TOT_PASSD_GPA] [decimal](8, 3) NULL,
	[TOT_TAKEN_NOGPA] [decimal](8, 3) NULL,
	[TOT_PASSD_NOGPA] [decimal](8, 3) NULL,
	[TOT_INPROG_GPA] [decimal](8, 3) NULL,
	[TOT_INPROG_NOGPA] [decimal](8, 3) NULL,
	[TOT_AUDIT] [decimal](8, 3) NULL,
	[TOT_TRNSFR] [decimal](8, 3) NULL,
	[TOT_TEST_CREDIT] [decimal](8, 3) NULL,
	[TOT_OTHER] [decimal](8, 3) NULL,
	[TOT_CUMULATIVE] [decimal](8, 3) NULL,
	[TOT_GRADE_POINTS] [decimal](9, 3) NULL,
	[TOT_TAKEN_FA] [decimal](8, 3) NULL,
	[TOT_PASSD_FA] [decimal](8, 3) NULL,
	[TOT_TAKEN_FA_GPA] [decimal](8, 3) NULL,
	[TOT_GRD_POINTS_FA] [decimal](9, 3) NULL,
	[FORM_OF_STUDY] [varchar](4) NULL,
	[TERM_TYPE] [varchar](1) NULL,
	[CLASS_RANK_NBR] [bigint] NULL,
	[CLASS_RANK_TOT] [bigint] NULL,
	[SEL_GROUP] [varchar](10) NULL,
	[TUIT_CALC_REQ] [varchar](1) NULL,
	[TUIT_CALC_DTTM] [datetime] NULL,
	[FA_STATS_CALC_REQ] [varchar](1) NULL,
	[FA_STATS_CALC_DTTM] [datetime] NULL,
	[FA_ELIGIBILITY] [varchar](1) NULL,
	[BILLING_CAREER] [varchar](4) NULL,
	[UNIT_MULTIPLIER] [decimal](8, 4) NULL,
	[ACAD_YEAR] [varchar](4) NULL,
	[ACAD_GROUP_ADVIS] [varchar](5) NULL,
	[CUR_RESIDENT_TERMS] [decimal](6, 3) NULL,
	[TRF_RESIDENT_TERMS] [decimal](6, 3) NULL,
	[CUM_RESIDENT_TERMS] [decimal](6, 3) NULL,
	[REFUND_PCT] [decimal](5, 2) NULL,
	[REFUND_SCHEME] [varchar](8) NULL,
	[PRO_RATA_ELIGIBLE] [varchar](1) NULL,
	[FULLY_ENRL_DT] [date] NULL,
	[ENRL_ON_TRANS_DT] [date] NULL,
	[STATS_ON_TRANS_DT] [date] NULL,
	[FULLY_GRADED_DT] [date] NULL,
	[EXT_ORG_ID] [varchar](11) NULL,
	[COUNTRY] [varchar](3) NULL,
	[STUDY_AGREEMENT] [varchar](10) NULL,
	[START_DATE] [date] NULL,
	[END_DATE] [date] NULL,
	[MAX_CRSE_COUNT] [decimal](38, 0) NULL,
	[CUR_GPA] [decimal](8, 3) NULL,
	[CUM_GPA] [decimal](8, 3) NULL,
	[REGISTERED] [varchar](1) NULL,
	[OVRD_TUIT_GROUP] [varchar](10) NULL,
	[OVRD_WDRW_SCHED] [varchar](8) NULL,
	[TUITION_RES_TERMS] [decimal](6, 3) NULL,
	[OVRD_INIT_ADD_FEE] [varchar](1) NULL,
	[OVRD_INIT_ENR_FEE] [varchar](1) NULL,
	[TC_UNITS_ADJUST] [decimal](8, 3) NULL,
	[LOCK_IN_AMT] [decimal](15, 2) NULL,
	[LOCK_IN_DT] [date] NULL,
	[ACAD_CAREER_FIRST] [varchar](1) NULL,
	[ACADEMIC_LOAD_DT] [date] NULL,
	[UNTPRG_CHG_NSLC_DT] [date] NULL,
	[SSR_ACTIVATION_DT] [date] NULL,
	[SSR_TRF_CUR_GPA] [decimal](8, 3) NULL,
	[SSR_COMB_CUR_GPA] [decimal](8, 3) NULL,
	[SSR_CUM_EN_GPA] [decimal](8, 3) NULL,
	[SSR_TOT_EN_GRDPTS] [decimal](9, 3) NULL,
	[SSR_TOT_EN_TKNGPA] [decimal](8, 3) NULL,
	[SSR_CUM_TR_GPA] [decimal](8, 3) NULL,
	[SSR_TOT_TR_GRDPTS] [decimal](9, 3) NULL,
	[SSR_TOT_TR_TKNGPA] [decimal](8, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PS_STDNT_CAR_TERM_TEMP]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PS_STDNT_CAR_TERM_TEMP](
	[EMPLID] [varchar](11) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[STRM] [varchar](4) NULL,
	[REG_CARD_DATE] [date] NULL,
	[WITHDRAW_CODE] [varchar](3) NULL,
	[WITHDRAW_REASON] [varchar](4) NULL,
	[WITHDRAW_DATE] [date] NULL,
	[LAST_DATE_ATTENDED] [date] NULL,
	[STDNT_CAR_NBR] [bigint] NULL,
	[ACAD_PROG_PRIMARY] [varchar](5) NULL,
	[ACAD_LOAD_APPR] [varchar](1) NULL,
	[ACADEMIC_LOAD] [varchar](1) NULL,
	[FA_LOAD] [varchar](1) NULL,
	[ACAD_LEVEL_PROJ] [varchar](3) NULL,
	[ACAD_LEVEL_BOT] [varchar](3) NULL,
	[ACAD_LEVEL_EOT] [varchar](3) NULL,
	[N_THE_MAX_TOT_UNIT] [decimal](5, 2) NULL,
	[NSLDS_LOAN_YEAR] [varchar](1) NULL,
	[OVRD_ACAD_LVL_PROJ] [varchar](1) NULL,
	[OVRD_ACAD_LVL_ALL] [varchar](1) NULL,
	[ELIG_TO_ENROLL] [varchar](1) NULL,
	[OVRD_MAX_UNITS] [varchar](1) NULL,
	[MAX_TOTAL_UNIT] [decimal](5, 2) NULL,
	[MAX_NOGPA_UNIT] [decimal](5, 2) NULL,
	[MAX_AUDIT_UNIT] [decimal](5, 2) NULL,
	[MAX_WAIT_UNIT] [decimal](5, 2) NULL,
	[MIN_TOTAL_UNIT] [decimal](5, 2) NULL,
	[OVRD_BILL_UNITS] [varchar](1) NULL,
	[PROJ_BILL_UNT] [bigint] NULL,
	[UNT_TAKEN_PRGRSS] [decimal](8, 3) NULL,
	[UNT_PASSD_PRGRSS] [decimal](8, 3) NULL,
	[UNT_TAKEN_GPA] [decimal](8, 3) NULL,
	[UNT_PASSD_GPA] [decimal](8, 3) NULL,
	[UNT_TAKEN_NOGPA] [decimal](8, 3) NULL,
	[UNT_PASSD_NOGPA] [decimal](8, 3) NULL,
	[UNT_INPROG_GPA] [decimal](8, 3) NULL,
	[UNT_INPROG_NOGPA] [decimal](8, 3) NULL,
	[GRADE_POINTS] [decimal](9, 3) NULL,
	[UNT_AUDIT] [decimal](8, 3) NULL,
	[UNT_TRNSFR] [decimal](8, 3) NULL,
	[TRF_TAKEN_GPA] [decimal](8, 3) NULL,
	[TRF_TAKEN_NOGPA] [decimal](8, 3) NULL,
	[TRF_PASSED_GPA] [decimal](8, 3) NULL,
	[TRF_PASSED_NOGPA] [decimal](8, 3) NULL,
	[TRF_GRADE_POINTS] [decimal](9, 3) NULL,
	[UNT_TEST_CREDIT] [decimal](8, 3) NULL,
	[UNT_OTHER] [decimal](8, 3) NULL,
	[UNT_TAKEN_FA] [decimal](8, 3) NULL,
	[UNT_PASSD_FA] [decimal](8, 3) NULL,
	[UNT_TAKEN_FA_GPA] [decimal](8, 3) NULL,
	[GRADE_POINTS_FA] [decimal](9, 3) NULL,
	[UNT_TERM_TOT] [decimal](8, 3) NULL,
	[RESET_CUM_STATS] [varchar](1) NULL,
	[TOT_TAKEN_PRGRSS] [decimal](8, 3) NULL,
	[TOT_PASSD_PRGRSS] [decimal](8, 3) NULL,
	[TOT_TAKEN_GPA] [decimal](8, 3) NULL,
	[TOT_PASSD_GPA] [decimal](8, 3) NULL,
	[TOT_TAKEN_NOGPA] [decimal](8, 3) NULL,
	[TOT_PASSD_NOGPA] [decimal](8, 3) NULL,
	[TOT_INPROG_GPA] [decimal](8, 3) NULL,
	[TOT_INPROG_NOGPA] [decimal](8, 3) NULL,
	[TOT_AUDIT] [decimal](8, 3) NULL,
	[TOT_TRNSFR] [decimal](8, 3) NULL,
	[TOT_TEST_CREDIT] [decimal](8, 3) NULL,
	[TOT_OTHER] [decimal](8, 3) NULL,
	[TOT_CUMULATIVE] [decimal](8, 3) NULL,
	[TOT_GRADE_POINTS] [decimal](9, 3) NULL,
	[TOT_TAKEN_FA] [decimal](8, 3) NULL,
	[TOT_PASSD_FA] [decimal](8, 3) NULL,
	[TOT_TAKEN_FA_GPA] [decimal](8, 3) NULL,
	[TOT_GRD_POINTS_FA] [decimal](9, 3) NULL,
	[FORM_OF_STUDY] [varchar](4) NULL,
	[TERM_TYPE] [varchar](1) NULL,
	[CLASS_RANK_NBR] [bigint] NULL,
	[CLASS_RANK_TOT] [bigint] NULL,
	[SEL_GROUP] [varchar](10) NULL,
	[TUIT_CALC_REQ] [varchar](1) NULL,
	[TUIT_CALC_DTTM] [datetime] NULL,
	[FA_STATS_CALC_REQ] [varchar](1) NULL,
	[FA_STATS_CALC_DTTM] [datetime] NULL,
	[FA_ELIGIBILITY] [varchar](1) NULL,
	[BILLING_CAREER] [varchar](4) NULL,
	[UNIT_MULTIPLIER] [decimal](8, 4) NULL,
	[ACAD_YEAR] [varchar](4) NULL,
	[ACAD_GROUP_ADVIS] [varchar](5) NULL,
	[CUR_RESIDENT_TERMS] [decimal](6, 3) NULL,
	[TRF_RESIDENT_TERMS] [decimal](6, 3) NULL,
	[CUM_RESIDENT_TERMS] [decimal](6, 3) NULL,
	[REFUND_PCT] [decimal](5, 2) NULL,
	[REFUND_SCHEME] [varchar](8) NULL,
	[PRO_RATA_ELIGIBLE] [varchar](1) NULL,
	[FULLY_ENRL_DT] [date] NULL,
	[ENRL_ON_TRANS_DT] [date] NULL,
	[STATS_ON_TRANS_DT] [date] NULL,
	[FULLY_GRADED_DT] [date] NULL,
	[EXT_ORG_ID] [varchar](11) NULL,
	[COUNTRY] [varchar](3) NULL,
	[STUDY_AGREEMENT] [varchar](10) NULL,
	[START_DATE] [date] NULL,
	[END_DATE] [date] NULL,
	[MAX_CRSE_COUNT] [decimal](38, 0) NULL,
	[CUR_GPA] [decimal](8, 3) NULL,
	[CUM_GPA] [decimal](8, 3) NULL,
	[REGISTERED] [varchar](1) NULL,
	[OVRD_TUIT_GROUP] [varchar](10) NULL,
	[OVRD_WDRW_SCHED] [varchar](8) NULL,
	[TUITION_RES_TERMS] [decimal](6, 3) NULL,
	[OVRD_INIT_ADD_FEE] [varchar](1) NULL,
	[OVRD_INIT_ENR_FEE] [varchar](1) NULL,
	[TC_UNITS_ADJUST] [decimal](8, 3) NULL,
	[LOCK_IN_AMT] [decimal](15, 2) NULL,
	[LOCK_IN_DT] [date] NULL,
	[ACAD_CAREER_FIRST] [varchar](1) NULL,
	[ACADEMIC_LOAD_DT] [date] NULL,
	[UNTPRG_CHG_NSLC_DT] [date] NULL,
	[SSR_ACTIVATION_DT] [date] NULL,
	[SSR_TRF_CUR_GPA] [decimal](8, 3) NULL,
	[SSR_COMB_CUR_GPA] [decimal](8, 3) NULL,
	[SSR_CUM_EN_GPA] [decimal](8, 3) NULL,
	[SSR_TOT_EN_GRDPTS] [decimal](9, 3) NULL,
	[SSR_TOT_EN_TKNGPA] [decimal](8, 3) NULL,
	[SSR_CUM_TR_GPA] [decimal](8, 3) NULL,
	[SSR_TOT_TR_GRDPTS] [decimal](9, 3) NULL,
	[SSR_TOT_TR_TKNGPA] [decimal](8, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_stdnt_enrl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_stdnt_enrl](
	[EMPLID] [varchar](11) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[STRM] [varchar](4) NULL,
	[CLASS_NBR] [int] NULL,
	[CRSE_CAREER] [varchar](4) NULL,
	[SESSION_CODE] [varchar](3) NULL,
	[SESSN_ENRL_CNTL] [varchar](3) NULL,
	[STDNT_ENRL_STATUS] [varchar](2) NULL,
	[ENRL_STATUS_REASON] [varchar](4) NULL,
	[ENRL_ACTION_LAST] [varchar](2) NULL,
	[ENRL_ACTN_RSN_LAST] [varchar](4) NULL,
	[ENRL_ACTN_PRC_LAST] [varchar](2) NULL,
	[STATUS_DT] [date] NULL,
	[ENRL_ADD_DT] [date] NULL,
	[ENRL_DROP_DT] [date] NULL,
	[UNT_TAKEN] [numeric](5, 2) NULL,
	[UNT_PRGRSS] [numeric](5, 2) NULL,
	[UNT_PRGRSS_FA] [numeric](5, 2) NULL,
	[UNT_BILLING] [numeric](5, 2) NULL,
	[CRSE_COUNT] [numeric](4, 2) NULL,
	[GRADING_BASIS_ENRL] [varchar](3) NULL,
	[GRADING_BASIS_DT] [date] NULL,
	[OVRD_GRADING_BASIS] [varchar](1) NULL,
	[CRSE_GRADE_OFF] [varchar](3) NULL,
	[CRSE_GRADE_INPUT] [varchar](3) NULL,
	[GRADE_DT] [date] NULL,
	[REPEAT_CODE] [varchar](4) NULL,
	[REPEAT_DT] [date] NULL,
	[CLASS_PRMSN_NBR] [int] NULL,
	[ASSOCIATED_CLASS] [int] NULL,
	[STDNT_POSITIN] [int] NULL,
	[AUDIT_GRADE_BASIS] [varchar](1) NULL,
	[EARN_CREDIT] [varchar](1) NULL,
	[INCLUDE_IN_GPA] [varchar](1) NULL,
	[UNITS_ATTEMPTED] [varchar](1) NULL,
	[GRADE_POINTS] [numeric](9, 3) NULL,
	[GRADE_POINTS_FA] [numeric](9, 3) NULL,
	[GRD_PTS_PER_UNIT] [numeric](9, 3) NULL,
	[MANDATORY_GRD_BAS] [varchar](1) NULL,
	[RSRV_CAP_NBR] [int] NULL,
	[RQMNT_DESIGNTN] [varchar](4) NULL,
	[RQMNT_DESIGNTN_OPT] [varchar](1) NULL,
	[RQMNT_DESIGNTN_GRD] [varchar](1) NULL,
	[INSTRUCTOR_ID] [varchar](11) NULL,
	[DROP_CLASS_IF_ENRL] [int] NULL,
	[ASSOCIATION_99] [varchar](1) NULL,
	[OPRID] [varchar](30) NULL,
	[TSCRPT_NOTE_ID] [varchar](4) NULL,
	[TSCRPT_NOTE_EXISTS] [varchar](1) NULL,
	[NOTIFY_STDNT_CHNG] [varchar](2) NULL,
	[REPEAT_CANDIDATE] [varchar](1) NULL,
	[VALID_ATTEMPT] [varchar](1) NULL,
	[GRADE_CATEGORY] [varchar](4) NULL,
	[SEL_GROUP] [varchar](10) NULL,
	[DYN_CLASS_NBR] [int] NULL,
	[UNT_EARNED] [numeric](5, 2) NULL,
	[LAST_UPD_DT_STMP] [date] NULL,
	[LAST_UPD_TM_STMP] [datetime] NULL,
	[LAST_ENRL_DT_STMP] [date] NULL,
	[LAST_ENRL_TM_STMP] [datetime] NULL,
	[LAST_DROP_DT_STMP] [date] NULL,
	[LAST_DROP_TM_STMP] [datetime] NULL,
	[ENRL_REQ_SOURCE] [varchar](2) NULL,
	[LAST_UPD_ENREQ_SRC] [varchar](2) NULL,
	[GRADING_SCHEME_ENR] [varchar](3) NULL,
	[RELATE_CLASS_NBR_1] [int] NULL,
	[RELATE_CLASS_NBR_2] [int] NULL,
	[ACAD_PROG] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ps_term_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ps_term_tbl](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[STRM] [varchar](4) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRSHORT] [varchar](10) NULL,
	[TERM_BEGIN_DT] [date] NULL,
	[TERM_END_DT] [date] NULL,
	[SESSION_CODE] [varchar](3) NULL,
	[WEEKS_OF_INSTRUCT] [numeric](38, 0) NULL,
	[TERM_CATEGORY] [varchar](1) NULL,
	[ACAD_YEAR] [varchar](4) NULL,
	[TRANSCIPT_DT_PRT] [varchar](2) NULL,
	[HOLIDAY_SCHEDULE] [varchar](6) NULL,
	[SIXTY_PCT_DT] [date] NULL,
	[USE_DYN_CLASS_DATE] [varchar](1) NULL,
	[SSR_TRMAC_LAST_DT] [date] NULL,
	[SSR_SSENRLDISP_BDT] [date] NULL,
	[SSR_SSENRLDISP_EDT] [date] NULL,
	[SSR_SSPLNRDISP_BDT] [date] NULL,
	[SSR_SSPLNRDISP_EDT] [date] NULL,
	[SSR_SSWHIFADVR_BDT] [date] NULL,
	[SSR_SSWHIFADVR_EDT] [date] NULL,
	[SSR_SSWHIFPREM_BDT] [date] NULL,
	[SSR_SSWHIFPREM_EDT] [date] NULL,
	[SSR_SSWHIFSTD_BDT] [date] NULL,
	[SSR_SSWHIFSTD_EDT] [date] NULL,
	[N_ODD_EVEN_TERM] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableMsJobPosition]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableMsJobPosition](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [nvarchar](1) NULL,
	[JobId] [int] NULL,
	[PartnerId] [int] NULL,
	[JobTypeId] [int] NULL,
	[LocationId] [int] NULL,
	[Strm] [nvarchar](30) NULL,
	[JobPosition] [nvarchar](max) NULL,
	[JobDesc] [nvarchar](max) NULL,
	[JobQuota] [int] NULL,
	[JobDuration] [nvarchar](50) NULL,
	[JobStartDate] [datetime] NULL,
	[JobEndDate] [datetime] NULL,
	[JobAttachmentPath] [nvarchar](max) NULL,
	[JobAddress] [nvarchar](max) NULL,
	[JobSubDistrict] [nvarchar](max) NULL,
	[JobDistrict] [nvarchar](max) NULL,
	[JobZipCode] [nvarchar](20) NULL,
	[JobCity] [nvarchar](max) NULL,
	[JobProvince] [nvarchar](max) NULL,
	[Status] [nvarchar](50) NULL,
	[JobAvailable] [int] NULL,
	[WorkStatusId] [int] NULL,
	[StartSalary] [int] NULL,
	[EndSalary] [int] NULL,
	[IsMinimalGPA] [int] NULL,
	[HasRenew] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableMsJobPositionComDev]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableMsJobPositionComDev](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[JobId] [int] NULL,
	[PartnerId] [int] NULL,
	[JobTypeId] [int] NULL,
	[LocationId] [int] NULL,
	[Strm] [varchar](30) NULL,
	[JobPosition] [nvarchar](max) NULL,
	[JobDesc] [nvarchar](max) NULL,
	[JobQuota] [int] NULL,
	[JobDuration] [varchar](50) NULL,
	[JobStartDate] [datetime] NULL,
	[JobEndDate] [datetime] NULL,
	[JobAttachmentPath] [varchar](max) NULL,
	[JobAddress] [nvarchar](max) NULL,
	[JobSubDistrict] [nvarchar](max) NULL,
	[JobDistrict] [nvarchar](max) NULL,
	[JobZipCode] [varchar](20) NULL,
	[JobCity] [nvarchar](max) NULL,
	[JobProvince] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[JobAvailable] [int] NULL,
	[WorkStatusId] [int] NULL,
	[StartSalary] [int] NULL,
	[EndSalary] [int] NULL,
	[HasRenew] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableMsJobPositionResearch]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableMsJobPositionResearch](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[JobId] [int] NULL,
	[LecturerEmplid] [nvarchar](20) NULL,
	[JobTypeId] [int] NULL,
	[LocationId] [int] NULL,
	[Strm] [varchar](30) NULL,
	[JobPosition] [nvarchar](max) NULL,
	[JobDesc] [nvarchar](max) NULL,
	[JobQuota] [int] NULL,
	[JobDuration] [varchar](50) NULL,
	[JobStartDate] [datetime] NULL,
	[JobEndDate] [datetime] NULL,
	[JobAttachmentPath] [varchar](max) NULL,
	[JobAddress] [nvarchar](max) NULL,
	[JobSubDistrict] [nvarchar](max) NULL,
	[JobDistrict] [nvarchar](max) NULL,
	[JobZipCode] [varchar](20) NULL,
	[JobCity] [nvarchar](max) NULL,
	[JobProvince] [nvarchar](max) NULL,
	[Status] [varchar](50) NULL,
	[JobAvailable] [int] NULL,
	[WorkStatusId] [int] NULL,
	[StartSalary] [int] NULL,
	[EndSalary] [int] NULL,
	[HasRenew] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableMsPartnerAccount]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableMsPartnerAccount](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [nvarchar](1) NULL,
	[PartnerAccountId] [int] NULL,
	[PartnerId] [int] NULL,
	[PartnerName] [nvarchar](max) NULL,
	[PartnerUsername] [nvarchar](max) NULL,
	[PartnerEmail] [nvarchar](100) NULL,
	[PartnerPassword] [nvarchar](max) NULL,
	[UpdateProfile] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableMsPartnerAccountComDev]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableMsPartnerAccountComDev](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[PartnerAccountId] [int] NULL,
	[PartnerId] [int] NULL,
	[PartnerName] [nvarchar](max) NULL,
	[PartnerUsername] [varchar](max) NULL,
	[PartnerEmail] [varchar](100) NULL,
	[PartnerPassword] [varchar](max) NULL,
	[UpdateProfile] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableMsStudentAccount]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableMsStudentAccount](
	[StrSc] [nvarchar](1) NULL,
	[Emplid] [nvarchar](30) NULL,
	[StudentEmail] [nvarchar](100) NULL,
	[StudentPhone] [nvarchar](50) NULL,
	[StudentInstitutionId] [nvarchar](50) NULL,
	[StudentAcadCareerId] [nvarchar](50) NULL,
	[StudentTrackRegistrationId] [nvarchar](10) NULL,
	[StudentTrackRegistrationDesc] [nvarchar](100) NULL,
	[STRM] [nvarchar](5) NULL,
	[ExternalSystemId] [nvarchar](30) NULL,
	[StudentName] [nvarchar](max) NULL,
	[StudentAcadGroupDesc] [nvarchar](max) NULL,
	[StudentAcadProgId] [nvarchar](50) NULL,
	[StudentAcadProgDesc] [nvarchar](max) NULL,
	[StudentAcadPlanId] [nvarchar](50) NULL,
	[StudentAcadPlanDesc] [nvarchar](max) NULL,
	[StudentCampusDesc] [nvarchar](max) NULL,
	[StudentCumGPA] [nvarchar](10) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_class_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_class_tbl](
	[CRSE_ID] [varchar](6) NULL,
	[CRSE_OFFER_NBR] [int] NULL,
	[STRM] [varchar](4) NULL,
	[SESSION_CODE] [varchar](3) NULL,
	[CLASS_SECTION] [varchar](4) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_GROUP] [varchar](5) NULL,
	[SUBJECT] [varchar](8) NULL,
	[CATALOG_NBR] [varchar](10) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[DESCR] [varchar](30) NULL,
	[CLASS_NBR] [int] NULL,
	[SSR_COMPONENT] [varchar](3) NULL,
	[ENRL_STAT] [varchar](1) NULL,
	[CLASS_STAT] [varchar](1) NULL,
	[CLASS_TYPE] [varchar](1) NULL,
	[ASSOCIATED_CLASS] [int] NULL,
	[WAITLIST_DAEMON] [varchar](2) NULL,
	[AUTO_ENRL_WAITLIST] [varchar](1) NULL,
	[STDNT_SPEC_PERM] [varchar](1) NULL,
	[AUTO_ENROLL_SECT_1] [varchar](4) NULL,
	[AUTO_ENROLL_SECT_2] [varchar](4) NULL,
	[RESECTION] [varchar](4) NULL,
	[SCHEDULE_PRINT] [varchar](1) NULL,
	[CONSENT] [varchar](1) NULL,
	[ENRL_CAP] [int] NULL,
	[WAIT_CAP] [int] NULL,
	[MIN_ENRL] [int] NULL,
	[ENRL_TOT] [int] NULL,
	[WAIT_TOT] [int] NULL,
	[CRS_TOPIC_ID] [int] NULL,
	[PRINT_TOPIC] [varchar](1) NULL,
	[ACAD_ORG] [varchar](10) NULL,
	[NEXT_STDNT_POSITIN] [int] NULL,
	[EMPLID] [varchar](11) NULL,
	[CAMPUS] [varchar](5) NULL,
	[LOCATION] [varchar](10) NULL,
	[CAMPUS_EVENT_NBR] [varchar](9) NULL,
	[INSTRUCTION_MODE] [varchar](2) NULL,
	[EQUIV_CRSE_ID] [varchar](5) NULL,
	[OVRD_CRSE_EQUIV_ID] [varchar](1) NULL,
	[ROOM_CAP_REQUEST] [int] NULL,
	[START_DT] [date] NULL,
	[END_DT] [date] NULL,
	[CANCEL_DT] [date] NULL,
	[PRIM_INSTR_SECT] [varchar](4) NULL,
	[COMBINED_SECTION] [varchar](1) NULL,
	[HOLIDAY_SCHEDULE] [varchar](6) NULL,
	[EXAM_SEAT_SPACING] [int] NULL,
	[DYN_DT_INCLUDE] [varchar](1) NULL,
	[DYN_DT_CALC_REQ] [varchar](1) NULL,
	[ATTEND_GENERATE] [varchar](1) NULL,
	[ATTEND_SYNC_REQD] [varchar](1) NULL,
	[FEES_EXIST] [varchar](1) NULL,
	[CNCL_IF_STUD_ENRLD] [varchar](1) NULL,
	[RCV_FROM_ITEM_TYPE] [varchar](1) NULL,
	[AP_BUS_UNIT] [varchar](5) NULL,
	[AP_LEDGER] [varchar](10) NULL,
	[AP_ACCOUNT] [varchar](10) NULL,
	[AP_DEPTID] [varchar](10) NULL,
	[AP_PROJ_ID] [varchar](15) NULL,
	[AP_PRODUCT] [varchar](6) NULL,
	[AP_FUND_CODE] [varchar](5) NULL,
	[AP_PROG_CODE] [varchar](5) NULL,
	[AP_CLASS_FLD] [varchar](5) NULL,
	[AP_AFFILIATE] [varchar](5) NULL,
	[AP_OP_UNIT] [varchar](8) NULL,
	[AP_ALTACCT] [varchar](10) NULL,
	[AP_BUD_REF] [varchar](8) NULL,
	[AP_CF1] [varchar](10) NULL,
	[AP_CF2] [varchar](10) NULL,
	[AP_CF3] [varchar](10) NULL,
	[AP_AFF_INT1] [varchar](10) NULL,
	[AP_AFF_INT2] [varchar](10) NULL,
	[WRITEOFF_BUS_UNIT] [varchar](5) NULL,
	[WRITEOFF_LEDGER] [varchar](10) NULL,
	[WRITEOFF_ACCOUNT] [varchar](10) NULL,
	[WRITEOFF_DEPTID] [varchar](10) NULL,
	[WRITEOFF_PROJ_ID] [varchar](15) NULL,
	[WRITEOFF_PRODUCT] [varchar](6) NULL,
	[WRITEOFF_FUND_CODE] [varchar](5) NULL,
	[WRITEOFF_PROG_CODE] [varchar](5) NULL,
	[WRITEOFF_CLASS_FLD] [varchar](5) NULL,
	[WRITEOFF_AFFILIATE] [varchar](5) NULL,
	[WRITEOFF_OP_UNIT] [varchar](8) NULL,
	[WRITEOFF_ALTACCT] [varchar](10) NULL,
	[WRITEOFF_BUD_REF] [varchar](8) NULL,
	[WRITEOFF_CF1] [varchar](10) NULL,
	[WRITEOFF_CF2] [varchar](10) NULL,
	[WRITEOFF_CF3] [varchar](10) NULL,
	[WRITEOFF_AFF_INT1] [varchar](10) NULL,
	[WRITEOFF_AFF_INT2] [varchar](10) NULL,
	[EXT_WRITEOFF] [varchar](50) NULL,
	[GL_INTERFACE_REQ] [varchar](1) NULL,
	[LMS_FILE_TYPE] [varchar](3) NULL,
	[LMS_GROUP_ID] [varchar](50) NULL,
	[LMS_URL] [varchar](254) NULL,
	[LMS_CLASS_EXT_DTTM] [datetime] NULL,
	[LMS_ENRL_EXT_DTTM] [datetime] NULL,
	[LMS_PROVIDER] [varchar](30) NULL,
	[SSR_DROP_CONSENT] [varchar](1) NULL,
	[ACAD_CALENDAR_ID] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_CRSE_ATTR_Value]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_CRSE_ATTR_Value](
	[CRSE_ATTR] [varchar](4) NULL,
	[EFFDT] [date] NULL,
	[CRSE_ATTR_VALUE] [varchar](10) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRFORMAL] [varchar](50) NULL,
	[CATALOG_PRINT] [varchar](1) NULL,
	[SCHEDULE_PRINT] [varchar](1) NULL,
	[SSR_SHOW_CLSRCH] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableps_crse_attributes]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableps_crse_attributes](
	[CRSE_ID] [varchar](6) NULL,
	[EFFDT] [date] NULL,
	[CRSE_ATTR] [varchar](4) NULL,
	[CRSE_ATTR_VALUE] [varchar](10) NULL,
	[SCC_ROW_ADD_OPRID] [varchar](30) NULL,
	[SCC_ROW_ADD_DTTM] [datetime2](6) NULL,
	[SCC_ROW_UPD_OPRID] [varchar](30) NULL,
	[SCC_ROW_UPD_DTTM] [datetime2](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_Item_Due_Sf]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_Item_Due_Sf](
	[BUSINESS_UNIT] [nvarchar](5) NULL,
	[COMMON_ID] [nvarchar](11) NULL,
	[SA_ID_TYPE] [nvarchar](1) NULL,
	[ITEM_NBR] [nvarchar](15) NULL,
	[DUE_DT] [datetime] NULL,
	[EMPLID] [nvarchar](11) NULL,
	[EXT_ORG_ID] [nvarchar](11) NULL,
	[AV_ID] [nvarchar](11) NULL,
	[DUE_AMT] [numeric](16, 2) NULL,
	[APPLIED_AMT] [numeric](16, 2) NULL,
	[SCC_ROW_ADD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_ADD_DTTM] [datetime2](6) NULL,
	[SCC_ROW_UPD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_UPD_DTTM] [datetime2](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePS_ITEM_SF]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePS_ITEM_SF](
	[BUSINESS_UNIT] [nvarchar](5) NULL,
	[COMMON_ID] [nvarchar](11) NULL,
	[SA_ID_TYPE] [nvarchar](1) NULL,
	[ITEM_NBR] [nvarchar](15) NULL,
	[EMPLID] [nvarchar](11) NULL,
	[ACCOUNT_NBR] [nvarchar](10) NULL,
	[ACCOUNT_TERM] [nvarchar](4) NULL,
	[ACAD_YEAR] [nvarchar](4) NULL,
	[ITEM_TYPE] [nvarchar](12) NULL,
	[ITEM_AMT] [numeric](16, 2) NULL,
	[APPLIED_AMT] [numeric](16, 2) NULL,
	[ENCUMBERED_AMT] [numeric](16, 2) NULL,
	[REF1_DESCR] [nvarchar](30) NULL,
	[ITEM_BALANCE] [numeric](16, 2) NULL,
	[ACAD_CAREER] [nvarchar](4) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[SESSION_CODE] [nvarchar](3) NULL,
	[CLASS_NBR] [numeric](38, 0) NULL,
	[FEE_CD] [nvarchar](6) NULL,
	[SEL_GROUP] [nvarchar](10) NULL,
	[ADM_APPL_NBR] [nvarchar](8) NULL,
	[GL_SATISFIED_AMT] [numeric](14, 2) NULL,
	[GL_ASSESSED_AMT] [numeric](14, 2) NULL,
	[PAYMENT_ID_NBR] [bigint] NULL,
	[ITEM_TERM] [nvarchar](4) NULL,
	[ORIGINAL_ACCT_TERM] [nvarchar](4) NULL,
	[BILLING_CAREER] [nvarchar](4) NULL,
	[DEPOSIT_NBR] [bigint] NULL,
	[REFUND_NBR] [bigint] NULL,
	[EXT_ORG_ID] [nvarchar](11) NULL,
	[REFUND_EMPLID] [nvarchar](11) NULL,
	[CONTRACT_NUM] [nvarchar](25) NULL,
	[COLLECTION_ID] [bigint] NULL,
	[RECEIPT_NBR] [bigint] NULL,
	[ACCOUNT_TYPE_SF] [nvarchar](3) NULL,
	[ITEM_TYPE_CD] [nvarchar](1) NULL,
	[CONTRACT_EMPLID] [nvarchar](11) NULL,
	[CHARGE_PRIORITY] [nvarchar](8) NULL,
	[COURSE_LIST] [nvarchar](9) NULL,
	[CRSE_ID] [nvarchar](6) NULL,
	[WAIVER_CODE] [nvarchar](6) NULL,
	[PRIORITY] [numeric](38, 0) NULL,
	[PRIORITY_PMT_FLG] [nvarchar](1) NULL,
	[NRA_TAXATION_SWTCH] [nvarchar](1) NULL,
	[GL_BALANCED_AMT] [numeric](14, 2) NULL,
	[STATE_TAX_RT] [numeric](6, 6) NULL,
	[LOCAL_TAX_RT] [numeric](6, 6) NULL,
	[FEDERAL_TAX_RT] [numeric](6, 6) NULL,
	[BILLING_DT] [date] NULL,
	[DUE_DT] [date] NULL,
	[ACTUAL_BILLING_DT] [date] NULL,
	[CALENDAR_YEAR] [numeric](38, 0) NULL,
	[SRVC_IND_DTTM] [datetime2](6) NULL,
	[TAX_ADJ_WHOLDINGS] [numeric](10, 2) NULL,
	[TRANS_FEE_CD] [nvarchar](8) NULL,
	[LATE_FEE_CODE] [nvarchar](6) NULL,
	[CUR_RT_TYPE] [nvarchar](5) NULL,
	[RATE_MULT] [numeric](15, 8) NULL,
	[RATE_DIV] [numeric](15, 8) NULL,
	[CURRENCY_CD] [nvarchar](3) NULL,
	[ORIGNL_CURRENCY_CD] [nvarchar](3) NULL,
	[ORIGNL_ITEM_AMT] [numeric](16, 2) NULL,
	[ITEM_STATUS] [nvarchar](1) NULL,
	[TRANSFER_DT] [date] NULL,
	[TRANSFER_STATUS] [nvarchar](1) NULL,
	[TRANSFER_PAYMNT_ID] [nvarchar](15) NULL,
	[TRANSFER_AMT] [numeric](16, 2) NULL,
	[ITEM_NBR_SOURCE] [nvarchar](15) NULL,
	[TAX_AUTHORITY_CD] [nvarchar](3) NULL,
	[CONTRACT_AMT] [numeric](16, 2) NULL,
	[INTEREST_DT] [date] NULL,
	[T4_SENT_AMT] [numeric](10, 2) NULL,
	[GL_FROM_SUBFEE] [nvarchar](1) NULL,
	[ITEM_EFFECTIVE_DT] [date] NULL,
	[TRACER_NBR] [nvarchar](30) NULL,
	[AID_YEAR] [nvarchar](4) NULL,
	[DISBURSEMENT_DATE] [date] NULL,
	[ORIG_EFF_DT] [date] NULL,
	[SF_DEPOSIT_ID] [nvarchar](10) NULL,
	[LAST_ACTIVITY_DATE] [date] NULL,
	[REFUND_EXT_ORG_ID] [nvarchar](11) NULL,
	[REFUND_ORG_CONTACT] [numeric](38, 0) NULL,
	[TAX_CD] [nvarchar](8) NULL,
	[SF_PMT_REF_NBR] [nvarchar](12) NULL,
	[SF_ADM_APPL_DEL] [nvarchar](1) NULL,
	[CLASS_CRSE_FEE_IND] [nvarchar](1) NULL,
	[SSF_BILLED_AMOUNT] [numeric](16, 2) NULL,
	[SSF_INSTMNT_ID] [numeric](38, 0) NULL,
	[SCC_ROW_ADD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_ADD_DTTM] [datetime2](6) NULL,
	[SCC_ROW_UPD_OPRID] [nvarchar](30) NULL,
	[SCC_ROW_UPD_DTTM] [datetime2](6) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_item_type_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_item_type_tbl](
	[SETID] [varchar](5) NULL,
	[ITEM_TYPE] [varchar](12) NULL,
	[EFFDT] [date] NULL,
	[EFF_STATUS] [varchar](1) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRSHORT] [varchar](10) NULL,
	[CURRENCY_CD] [varchar](3) NULL,
	[MINIMUM_AMT] [numeric](16, 2) NULL,
	[MAXIMUM_AMT] [numeric](16, 2) NULL,
	[ITEM_TYPE_CD] [varchar](1) NULL,
	[SECURITY_GROUP] [varchar](8) NULL,
	[ADJUSTMENT_CAL_SF] [varchar](8) NULL,
	[PAYMENT_TERMS] [varchar](8) NULL,
	[PAYMENT_PRIORITY] [varchar](8) NULL,
	[CHARGE_PRIORITY] [varchar](8) NULL,
	[ENCUMBRANCE_DAYS] [numeric](38, 0) NULL,
	[ENCUMBRANCE_PCT] [numeric](9, 6) NULL,
	[SSF_STATE_FLAG] [varchar](1) NULL,
	[TENDER_SPEC] [varchar](1) NULL,
	[TENDER_CATEGORY] [varchar](3) NULL,
	[ALL_OR_NONE] [varchar](1) NULL,
	[ENROL_FLAG] [varchar](1) NULL,
	[KEYWORD1] [varchar](10) NULL,
	[KEYWORD2] [varchar](10) NULL,
	[KEYWORD3] [varchar](10) NULL,
	[DAYS_SINCE_EFFDT] [numeric](38, 0) NULL,
	[DAYS_TO_EFFDT] [numeric](38, 0) NULL,
	[DUEDAYS_PAST_EFFDT] [numeric](38, 0) NULL,
	[DUEDAYS_PRIOR_EFFD] [numeric](38, 0) NULL,
	[TERM_ENROLL_REQ] [varchar](1) NULL,
	[REFUNDABLE_IND] [varchar](1) NULL,
	[ERNCD] [varchar](3) NULL,
	[TAXABLE_Y_N] [varchar](1) NULL,
	[TUITION_DEPOSIT] [varchar](1) NULL,
	[GL_INTERFACE_REQ] [varchar](1) NULL,
	[DEFAULT_AMT] [numeric](16, 2) NULL,
	[ERNCD_NOTAX] [varchar](3) NULL,
	[RECVABLE_FROM_CHRG] [varchar](1) NULL,
	[PRIORITY] [numeric](38, 0) NULL,
	[PRIORITY_PMT_FLG] [varchar](1) NULL,
	[NRA_CREDIT_TAX_FLG] [varchar](1) NULL,
	[NRA_DEBIT_TAX_FLG] [varchar](1) NULL,
	[MATCH_WRITEOFF] [varchar](1) NULL,
	[LOCAL_TAX_OFFSET] [varchar](1) NULL,
	[LOCAL_TAX_PMT] [varchar](1) NULL,
	[STATE_TAX_OFFSET] [varchar](1) NULL,
	[STATE_TAX_PMT] [varchar](1) NULL,
	[GL_CRSE_CLASS_SPC] [varchar](1) NULL,
	[TAX_CD] [varchar](8) NULL,
	[T4_INCOME] [varchar](1) NULL,
	[WAGE_LOSS_PLAN] [varchar](3) NULL,
	[T2202A_FLG] [varchar](1) NULL,
	[T2202A_PCT] [numeric](5, 3) NULL,
	[T2202A_OFFSET_FLG] [varchar](1) NULL,
	[PAY_PRIORITY_ID] [varchar](8) NULL,
	[ACCTG_DT_CNTL] [varchar](1) NULL,
	[SSF_ACCTG_DT_ID] [varchar](3) NULL,
	[SF_1098_FLG] [varchar](1) NULL,
	[SSF_DEST_TUT_TYPE] [varchar](1) NULL,
	[SFA_EA_TYPE] [varchar](3) NULL,
	[SFA_EA_SOURCE] [varchar](3) NULL,
	[SFA_EA_PROGRAM_CD] [varchar](3) NULL,
	[SSF_BILL_GBL_INV] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_keyword_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_keyword_tbl](
	[SETID] [nvarchar](5) NULL,
	[KEYWORD1] [nvarchar](10) NULL,
	[KEYWORD_STATUS] [nvarchar](1) NULL,
	[DESCR] [nvarchar](30) NULL,
	[DESCRSHORT] [nvarchar](10) NULL,
	[KEYWORD_NUM] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_N_Enr_Rules]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_N_Enr_Rules](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[REQ_TERM] [varchar](4) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[ACAD_PROG] [varchar](5) NULL,
	[ACAD_PLAN] [varchar](10) NULL,
	[N_ENRCHMT_TRCK_TRM] [varchar](3) NULL,
	[STRM] [varchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_n_enr_track]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_n_enr_track](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[EFFDT] [date] NULL,
	[EFF_STATUS] [varchar](1) NULL,
	[N_DESCR_ENG] [varchar](100) NULL,
	[N_DESCR_IND] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePS_N_ENRSTG_LECT_H]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePS_N_ENRSTG_LECT_H](
	[EMPLID] [varchar](11) NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NULL,
	[N_OFFICIAL_NM] [varchar](100) NULL,
	[EMAIL_ADDR] [varchar](70) NULL,
	[PHONE] [varchar](24) NULL,
	[INSTR_AVAILABLE] [varchar](2) NULL,
	[DESCR] [varchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePS_N_ENRSTG_STD_BD]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePS_N_ENRSTG_STD_BD](
	[EMPLID] [varchar](11) NULL,
	[N_NAME1] [varchar](60) NULL,
	[SEX] [varchar](1) NULL,
	[BIRTHDATE] [datetime] NULL,
	[N_ADDRESS1] [varchar](300) NULL,
	[EMAIL_ADDR] [varchar](70) NULL,
	[PHONE] [varchar](24) NULL,
	[N_LINE_ID] [varchar](100) NULL,
	[N_FACEBOOK_ID] [varchar](100) NULL,
	[N_LINKEDIN_ID] [varchar](100) NULL,
	[DESCR50] [varchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePS_N_ENRSTG_STD_EG]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePS_N_ENRSTG_STD_EG](
	[EMPLID] [varchar](11) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[STRM] [varchar](4) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[N_DESCR_ENG] [varchar](100) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePS_N_ENRSTG_STD_PG]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePS_N_ENRSTG_STD_PG](
	[EMPLID] [varchar](11) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[N_DESCR_ENG] [varchar](100) NULL,
	[CAMPUS] [varchar](5) NULL,
	[CAMPUS_DESCR] [varchar](100) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[N_ACAD_CAREER_ENG] [varchar](100) NULL,
	[ACAD_GROUP] [varchar](5) NULL,
	[N_ACAD_GROUP_ENG] [varchar](100) NULL,
	[N_ACAD_GROUP2] [varchar](5) NULL,
	[N_ACAD_GROUP2_ENG] [varchar](100) NULL,
	[ACAD_ORG] [varchar](10) NULL,
	[N_ACAD_ORG_DES_ENG] [varchar](100) NULL,
	[N_ACAD_ORG2] [varchar](10) NULL,
	[N_ACAD_ORG2_ENG] [varchar](150) NULL,
	[ACAD_PROG] [varchar](5) NULL,
	[N_ACAD_PROG_ENG] [varchar](100) NULL,
	[ACAD_PLAN] [varchar](10) NULL,
	[N_ACAD_PLAN_ENG] [varchar](100) NULL,
	[ACAD_LEVEL_BOT] [varchar](3) NULL,
	[DESCR] [varchar](30) NULL,
	[REQ_TERM] [varchar](4) NULL,
	[CUM_GPA] [numeric](8, 3) NULL,
	[TOT_CUMULATIVE] [numeric](8, 3) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_n_personcar_dtl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_n_personcar_dtl](
	[INSTITUTION] [varchar](5) NULL,
	[EMPLID] [varchar](11) NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NULL,
	[N_STDNT_ID2] [varchar](20) NULL,
	[N_NAME1] [varchar](60) NULL,
	[N_ADDRESS1] [varchar](300) NULL,
	[CITY50] [varchar](50) NULL,
	[SEX] [varchar](1) NULL,
	[POSTAL] [varchar](12) NULL,
	[PHONE] [varchar](24) NULL,
	[MAR_STATUS] [varchar](1) NULL,
	[N_STATUS_SIPIL] [varchar](25) NULL,
	[BIRTHDATE] [date] NULL,
	[BIRTHPLACE] [varchar](30) NULL,
	[BIRTHCOUNTRY] [varchar](3) NULL,
	[COUNTRY_DESCR] [varchar](30) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[N_ACAD_CAREER_ENG] [varchar](100) NULL,
	[ACAD_GROUP] [varchar](5) NULL,
	[N_ACAD_GROUP_ENG] [varchar](100) NULL,
	[N_ACAD_GROUP_IND] [varchar](100) NULL,
	[N_ACAD_GROUP2] [varchar](5) NULL,
	[N_ACAD_GROUP2_ENG] [varchar](100) NULL,
	[N_ACAD_GROUP2_IND] [varchar](100) NULL,
	[ACAD_PROG] [varchar](5) NULL,
	[N_ACAD_PROG_ENG] [varchar](100) NULL,
	[N_ACAD_PROG_IND] [varchar](100) NULL,
	[PROG_STATUS] [varchar](4) NULL,
	[DESCR] [varchar](30) NULL,
	[ADMIT_TERM] [varchar](4) NULL,
	[N_ADMIT_TERM_DESCR] [varchar](50) NULL,
	[ACAD_YEAR] [varchar](4) NULL,
	[ACAD_PLAN] [varchar](10) NULL,
	[N_ACAD_PLAN_ENG] [varchar](100) NULL,
	[N_ACAD_PLAN_IND] [varchar](100) NULL,
	[N_ACAD_PLAN2] [varchar](10) NULL,
	[N_ACAD_PLAN_ENG2] [varchar](100) NULL,
	[N_ACAD_PLAN_IND2] [varchar](100) NULL,
	[RELIGIOUS_PREF] [varchar](4) NULL,
	[N_RELIGION] [varchar](20) NULL,
	[N_FATHER_NAME] [varchar](50) NULL,
	[N_MOTHER_NAME] [varchar](50) NULL,
	[STRM] [varchar](4) NULL,
	[CUM_GPA] [numeric](8, 3) NULL,
	[E_ADDR_TYPE] [varchar](4) NULL,
	[EMAIL_ADDR] [varchar](70) NULL,
	[N_KOMPUTER_FLAG] [varchar](1) NULL,
	[N_NASIONALITY] [varchar](50) NULL,
	[FIRST_NAME] [varchar](30) NULL,
	[LAST_NAME] [varchar](30) NULL,
	[STDNT_CAR_NBR] [numeric](38, 0) NULL,
	[EFFDT] [date] NULL,
	[CAMPUS] [varchar](5) NULL,
	[CAMPUS_DESCR] [varchar](100) NULL,
	[STDNT_GROUP] [varchar](4) NULL,
	[N_STDNT_GROUP_DESC] [varchar](50) NULL,
	[EDUCATION_LVL] [varchar](2) NULL,
	[N_EDUC_LVL_DESCR] [varchar](100) NULL,
	[ACAD_ORG] [varchar](10) NULL,
	[N_ACAD_ORG_DES_ENG] [varchar](100) NULL,
	[N_ACAD_ORG_DES_IND] [varchar](100) NULL,
	[N_ACAD_ORG2] [varchar](10) NULL,
	[N_ACAD_ORG2_ENG] [varchar](150) NULL,
	[N_ACAD_ORG2_IND] [varchar](150) NULL,
	[REQ_TERM] [varchar](4) NULL,
	[DESCR1] [varchar](40) NULL,
	[N_DOUBLE_DEG_PRG] [varchar](1) NULL,
	[N_MASTER_TRACK] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renametableps_n_stdnt_enr_trk]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renametableps_n_stdnt_enr_trk](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[STRM] [varchar](4) NULL,
	[EMPLID] [varchar](11) NULL,
	[N_ENRICHMENT_TRACK] [varchar](4) NULL,
	[N_ENRCHMT_TRCK_TRM] [varchar](3) NULL,
	[N_EMPLID] [varchar](11) NULL,
	[N_PARTNER_ID] [varchar](6) NULL,
	[FLAG] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_stdnt_enrl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_stdnt_enrl](
	[EMPLID] [varchar](11) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[INSTITUTION] [varchar](5) NULL,
	[STRM] [varchar](4) NULL,
	[CLASS_NBR] [int] NULL,
	[CRSE_CAREER] [varchar](4) NULL,
	[SESSION_CODE] [varchar](3) NULL,
	[SESSN_ENRL_CNTL] [varchar](3) NULL,
	[STDNT_ENRL_STATUS] [varchar](2) NULL,
	[ENRL_STATUS_REASON] [varchar](4) NULL,
	[ENRL_ACTION_LAST] [varchar](2) NULL,
	[ENRL_ACTN_RSN_LAST] [varchar](4) NULL,
	[ENRL_ACTN_PRC_LAST] [varchar](2) NULL,
	[STATUS_DT] [date] NULL,
	[ENRL_ADD_DT] [date] NULL,
	[ENRL_DROP_DT] [date] NULL,
	[UNT_TAKEN] [numeric](5, 2) NULL,
	[UNT_PRGRSS] [numeric](5, 2) NULL,
	[UNT_PRGRSS_FA] [numeric](5, 2) NULL,
	[UNT_BILLING] [numeric](5, 2) NULL,
	[CRSE_COUNT] [numeric](4, 2) NULL,
	[GRADING_BASIS_ENRL] [varchar](3) NULL,
	[GRADING_BASIS_DT] [date] NULL,
	[OVRD_GRADING_BASIS] [varchar](1) NULL,
	[CRSE_GRADE_OFF] [varchar](3) NULL,
	[CRSE_GRADE_INPUT] [varchar](3) NULL,
	[GRADE_DT] [date] NULL,
	[REPEAT_CODE] [varchar](4) NULL,
	[REPEAT_DT] [date] NULL,
	[CLASS_PRMSN_NBR] [int] NULL,
	[ASSOCIATED_CLASS] [int] NULL,
	[STDNT_POSITIN] [int] NULL,
	[AUDIT_GRADE_BASIS] [varchar](1) NULL,
	[EARN_CREDIT] [varchar](1) NULL,
	[INCLUDE_IN_GPA] [varchar](1) NULL,
	[UNITS_ATTEMPTED] [varchar](1) NULL,
	[GRADE_POINTS] [numeric](9, 3) NULL,
	[GRADE_POINTS_FA] [numeric](9, 3) NULL,
	[GRD_PTS_PER_UNIT] [numeric](9, 3) NULL,
	[MANDATORY_GRD_BAS] [varchar](1) NULL,
	[RSRV_CAP_NBR] [int] NULL,
	[RQMNT_DESIGNTN] [varchar](4) NULL,
	[RQMNT_DESIGNTN_OPT] [varchar](1) NULL,
	[RQMNT_DESIGNTN_GRD] [varchar](1) NULL,
	[INSTRUCTOR_ID] [varchar](11) NULL,
	[DROP_CLASS_IF_ENRL] [int] NULL,
	[ASSOCIATION_99] [varchar](1) NULL,
	[OPRID] [varchar](30) NULL,
	[TSCRPT_NOTE_ID] [varchar](4) NULL,
	[TSCRPT_NOTE_EXISTS] [varchar](1) NULL,
	[NOTIFY_STDNT_CHNG] [varchar](2) NULL,
	[REPEAT_CANDIDATE] [varchar](1) NULL,
	[VALID_ATTEMPT] [varchar](1) NULL,
	[GRADE_CATEGORY] [varchar](4) NULL,
	[SEL_GROUP] [varchar](10) NULL,
	[DYN_CLASS_NBR] [int] NULL,
	[UNT_EARNED] [numeric](5, 2) NULL,
	[LAST_UPD_DT_STMP] [date] NULL,
	[LAST_UPD_TM_STMP] [datetime] NULL,
	[LAST_ENRL_DT_STMP] [date] NULL,
	[LAST_ENRL_TM_STMP] [datetime] NULL,
	[LAST_DROP_DT_STMP] [date] NULL,
	[LAST_DROP_TM_STMP] [datetime] NULL,
	[ENRL_REQ_SOURCE] [varchar](2) NULL,
	[LAST_UPD_ENREQ_SRC] [varchar](2) NULL,
	[GRADING_SCHEME_ENR] [varchar](3) NULL,
	[RELATE_CLASS_NBR_1] [int] NULL,
	[RELATE_CLASS_NBR_2] [int] NULL,
	[ACAD_PROG] [varchar](5) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTablePs_term_tbl]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTablePs_term_tbl](
	[INSTITUTION] [varchar](5) NULL,
	[ACAD_CAREER] [varchar](4) NULL,
	[STRM] [varchar](4) NULL,
	[DESCR] [varchar](30) NULL,
	[DESCRSHORT] [varchar](10) NULL,
	[TERM_BEGIN_DT] [date] NULL,
	[TERM_END_DT] [date] NULL,
	[SESSION_CODE] [varchar](3) NULL,
	[WEEKS_OF_INSTRUCT] [numeric](38, 0) NULL,
	[TERM_CATEGORY] [varchar](1) NULL,
	[ACAD_YEAR] [varchar](4) NULL,
	[TRANSCIPT_DT_PRT] [varchar](2) NULL,
	[HOLIDAY_SCHEDULE] [varchar](6) NULL,
	[SIXTY_PCT_DT] [date] NULL,
	[USE_DYN_CLASS_DATE] [varchar](1) NULL,
	[SSR_TRMAC_LAST_DT] [date] NULL,
	[SSR_SSENRLDISP_BDT] [date] NULL,
	[SSR_SSENRLDISP_EDT] [date] NULL,
	[SSR_SSPLNRDISP_BDT] [date] NULL,
	[SSR_SSPLNRDISP_EDT] [date] NULL,
	[SSR_SSWHIFADVR_BDT] [date] NULL,
	[SSR_SSWHIFADVR_EDT] [date] NULL,
	[SSR_SSWHIFPREM_BDT] [date] NULL,
	[SSR_SSWHIFPREM_EDT] [date] NULL,
	[SSR_SSWHIFSTD_BDT] [date] NULL,
	[SSR_SSWHIFSTD_EDT] [date] NULL,
	[N_ODD_EVEN_TERM] [varchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableTrMappingFacultySpv]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableTrMappingFacultySpv](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime2](7) NULL,
	[StrSc] [nvarchar](1) NULL,
	[MappingId] [int] NULL,
	[Strm] [nvarchar](10) NULL,
	[FacultySpvId] [nvarchar](10) NULL,
	[StudentEmplid] [nvarchar](30) NULL,
	[StudentId] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableTrStudentActivity]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableTrStudentActivity](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [nvarchar](1) NULL,
	[Emplid] [nvarchar](30) NULL,
	[Strm] [nvarchar](30) NULL,
	[JobId] [int] NULL,
	[StatusId] [nvarchar](50) NULL,
	[IsViewed] [nvarchar](10) NULL,
	[Reason] [nvarchar](max) NULL,
	[StudentActivityId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableTrStudentActivityComDev]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableTrStudentActivityComDev](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[Emplid] [varchar](30) NULL,
	[Strm] [varchar](30) NULL,
	[JobId] [int] NULL,
	[StatusId] [varchar](50) NULL,
	[IsViewed] [varchar](10) NULL,
	[Reason] [varchar](max) NULL,
	[StudentActivityId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[renameTableTrStudentActivityResearch]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[renameTableTrStudentActivityResearch](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[Emplid] [varchar](30) NULL,
	[Strm] [varchar](30) NULL,
	[JobId] [int] NULL,
	[StatusId] [varchar](50) NULL,
	[IsViewed] [varchar](10) NULL,
	[Reason] [varchar](max) NULL,
	[StudentActivityId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ResultALLData]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ResultALLData](
	[uniianID] [nvarchar](30) NULL,
	[NIM] [nvarchar](30) NULL,
	[NAMA] [nvarchar](max) NULL,
	[FAKULTAS] [nvarchar](max) NULL,
	[JURUSAN] [nvarchar](max) NULL,
	[PEMINATAN] [nvarchar](max) NULL,
	[Req Term] [varchar](4) NULL,
	[CAMPUS] [nvarchar](max) NULL,
	[IPK] [numeric](8, 3) NULL,
	[SKS Kumulatif] [numeric](8, 3) NULL,
	[Even Semester 2019/2020 Status] [nvarchar](5) NULL,
	[Full Scale/Pilot + Semester ke-1 atau ke-2] [bigint] NULL,
	[IS_DURATION_GREATER_THAN_6_MONTHS_EP1_EP2] [varchar](1) NOT NULL,
	[No HP] [nvarchar](50) NULL,
	[Email Address] [nvarchar](100) NULL,
	[Syarat GPA Minimum] [varchar](5) NULL,
	[Syarat Cumulative Unit Minimum] [decimal](18, 0) NULL,
	[Memenuhi Syarat GPA (1)] [varchar](1) NOT NULL,
	[Memenuhi Syarat Cumulative Unit (2)] [varchar](1) NOT NULL,
	[DESCRIPTION] [varchar](16) NOT NULL,
	[Track Sebelumnya] [varchar](100) NULL,
	[Syarat GPA Minimum (Comprehensive Review)] [decimal](18, 0) NULL,
	[Syarat Cumulative Unit Minimum (Comprehensive Review)] [decimal](18, 0) NULL,
	[Candidate Track Comprehensive Review (GPA)] [varchar](1) NOT NULL,
	[Candidate Track Comprehensive Review (SKS)] [varchar](1) NOT NULL,
	[Track Pilihan Registrasi Mahasiswa di unimaya] [nvarchar](100) NULL,
	[Track (Final Result)] [nvarchar](100) NULL,
	[Track BCS] [varchar](4) NULL,
	[Track 3+1 Enrollment] [varchar](10) NULL,
	[PARTNER] [nvarchar](max) NULL,
	[STATUS_PENEMPATAN] [varchar](10) NOT NULL,
	[Status Financial] [varchar](5) NULL,
	[Kddsn Fac. Spv] [nvarchar](13) NULL,
	[Nama Fac. Spv] [varchar](100) NULL,
	[Status Dosen] [varchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[staging_PS_N_PERSONCAR_TBL]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[staging_PS_N_PERSONCAR_TBL](
	[INSTITUTION] [varchar](5) NOT NULL,
	[EMPLID] [varchar](11) NOT NULL,
	[EXTERNAL_SYSTEM_ID] [varchar](20) NOT NULL,
	[N_STDNT_ID2] [varchar](20) NOT NULL,
	[N_NAME1] [varchar](60) NOT NULL,
	[N_ADDRESS1] [varchar](300) NULL,
	[CITY50] [varchar](50) NOT NULL,
	[SEX] [varchar](1) NOT NULL,
	[POSTAL] [varchar](12) NOT NULL,
	[PHONE] [varchar](24) NOT NULL,
	[MAR_STATUS] [varchar](1) NOT NULL,
	[N_STATUS_SIPIL] [varchar](25) NOT NULL,
	[BIRTHDATE] [datetime] NULL,
	[BIRTHPLACE] [varchar](30) NOT NULL,
	[BIRTHCOUNTRY] [varchar](3) NOT NULL,
	[COUNTRY_DESCR] [varchar](30) NOT NULL,
	[ACAD_CAREER] [varchar](4) NOT NULL,
	[N_ACAD_CAREER_ENG] [varchar](100) NOT NULL,
	[ACAD_GROUP] [varchar](5) NOT NULL,
	[N_ACAD_GROUP_ENG] [varchar](100) NOT NULL,
	[N_ACAD_GROUP_IND] [varchar](100) NOT NULL,
	[N_ACAD_GROUP2] [varchar](5) NOT NULL,
	[N_ACAD_GROUP2_ENG] [varchar](100) NOT NULL,
	[N_ACAD_GROUP2_IND] [varchar](100) NOT NULL,
	[ACAD_PROG] [varchar](5) NOT NULL,
	[N_ACAD_PROG_ENG] [varchar](100) NOT NULL,
	[N_ACAD_PROG_IND] [varchar](100) NOT NULL,
	[PROG_STATUS] [varchar](4) NOT NULL,
	[DESCR] [varchar](30) NOT NULL,
	[ADMIT_TERM] [varchar](4) NOT NULL,
	[N_ADMIT_TERM_DESCR] [varchar](50) NOT NULL,
	[ACAD_YEAR] [varchar](4) NOT NULL,
	[ACAD_PLAN] [varchar](10) NOT NULL,
	[N_ACAD_PLAN_ENG] [varchar](100) NOT NULL,
	[N_ACAD_PLAN_IND] [varchar](100) NOT NULL,
	[N_ACAD_PLAN2] [varchar](10) NOT NULL,
	[N_ACAD_PLAN_ENG2] [varchar](100) NOT NULL,
	[N_ACAD_PLAN_IND2] [varchar](100) NOT NULL,
	[RELIGIOUS_PREF] [varchar](4) NOT NULL,
	[N_RELIGION] [varchar](20) NOT NULL,
	[N_FATHER_NAME] [varchar](50) NOT NULL,
	[N_MOTHER_NAME] [varchar](50) NOT NULL,
	[STRM] [varchar](4) NOT NULL,
	[CUM_GPA] [decimal](8, 3) NOT NULL,
	[E_ADDR_TYPE] [varchar](4) NOT NULL,
	[EMAIL_ADDR] [varchar](70) NOT NULL,
	[N_KOMPUTER_FLAG] [varchar](1) NOT NULL,
	[N_NASIONALITY] [varchar](50) NOT NULL,
	[FIRST_NAME] [varchar](30) NOT NULL,
	[LAST_NAME] [varchar](30) NOT NULL,
	[STDNT_CAR_NBR] [decimal](38, 0) NOT NULL,
	[EFFDT] [datetime] NULL,
	[CAMPUS] [varchar](5) NOT NULL,
	[CAMPUS_DESCR] [varchar](100) NOT NULL,
	[STDNT_GROUP] [varchar](4) NOT NULL,
	[N_STDNT_GROUP_DESC] [varchar](50) NOT NULL,
	[EDUCATION_LVL] [varchar](2) NOT NULL,
	[N_EDUC_LVL_DESCR] [varchar](100) NOT NULL,
	[ACAD_ORG] [varchar](10) NOT NULL,
	[N_ACAD_ORG_DES_ENG] [varchar](100) NOT NULL,
	[N_ACAD_ORG_DES_IND] [varchar](100) NOT NULL,
	[N_ACAD_ORG2] [varchar](10) NOT NULL,
	[N_ACAD_ORG2_ENG] [varchar](150) NOT NULL,
	[N_ACAD_ORG2_IND] [varchar](150) NOT NULL,
	[REQ_TERM] [varchar](4) NOT NULL,
	[DESCR1] [varchar](40) NOT NULL,
	[N_DOUBLE_DEG_PRG] [varchar](1) NOT NULL,
	[N_MASTER_TRACK] [varchar](1) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TblData]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TblData](
	[uniianID] [nvarchar](30) NULL,
	[NIM] [nvarchar](30) NULL,
	[NAMA] [ntext] NULL,
	[FAKULTAS] [ntext] NULL,
	[JURUSAN] [ntext] NULL,
	[PEMINATAN] [ntext] NULL,
	[ReqTerm] [varchar](4) NULL,
	[CAMPUS] [ntext] NULL,
	[IPK] [numeric](8, 3) NULL,
	[SKSKumulatif] [numeric](8, 3) NULL,
	[EvenSemester2019_2020Status] [nvarchar](5) NULL,
	[FullScalePilotSemesterke1atauke2] [bigint] NULL,
	[IS_DURATION_GREATER_THAN_6_MONTHS_EP1_EP2] [varchar](1) NULL,
	[NoHP] [nvarchar](50) NULL,
	[EmailAddress] [nvarchar](100) NULL,
	[SyaratGPAMinimum] [varchar](5) NULL,
	[SyaratCumulativeUnitMinimum] [numeric](18, 0) NULL,
	[MemenuhiSyaratGPA1] [varchar](1) NULL,
	[MemenuhiSyaratCumulativeUnit2] [varchar](1) NULL,
	[DESCRIPTION] [varchar](16) NULL,
	[TrackSebelumnya] [varchar](100) NULL,
	[SyaratGPAMinimum_ComprehensiveReview] [numeric](18, 0) NULL,
	[SyaratCumulativeUnitMinimum_ComprehensiveReview] [numeric](18, 0) NULL,
	[CandidateTrackComprehensiveReview_GPA] [varchar](1) NULL,
	[CandidateTrackComprehensiveReview_SKS] [varchar](1) NULL,
	[TrackPilihanRegistrasiMahasiswadiunimaya] [nvarchar](100) NULL,
	[Track_FinalResult] [nvarchar](100) NULL,
	[TrackBCS] [varchar](4) NULL,
	[Track3plus1Enrollment] [varchar](10) NULL,
	[PARTNER] [ntext] NULL,
	[STATUS_PENEMPATAN] [varchar](10) NULL,
	[StatusFinancial] [varchar](5) NULL,
	[KddsnFacSpv] [nvarchar](13) NULL,
	[NamaFacSpv] [varchar](100) NULL,
	[StatusDosen] [varchar](30) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrMappingFacultySpv]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrMappingFacultySpv](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime2](7) NULL,
	[StrSc] [nvarchar](1) NULL,
	[MappingId] [int] NULL,
	[Strm] [nvarchar](10) NULL,
	[FacultySpvId] [nvarchar](10) NULL,
	[StudentEmplid] [nvarchar](30) NULL,
	[StudentId] [nvarchar](30) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrStudentActivity]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrStudentActivity](
	[UserIn] [nvarchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [nvarchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [nvarchar](1) NULL,
	[Emplid] [nvarchar](30) NULL,
	[Strm] [nvarchar](30) NULL,
	[JobId] [int] NULL,
	[StatusId] [nvarchar](50) NULL,
	[IsViewed] [nvarchar](10) NULL,
	[Reason] [nvarchar](max) NULL,
	[StudentActivityId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrStudentActivityComDev]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrStudentActivityComDev](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[Emplid] [varchar](30) NULL,
	[Strm] [varchar](30) NULL,
	[JobId] [int] NULL,
	[StatusId] [varchar](50) NULL,
	[IsViewed] [varchar](10) NULL,
	[Reason] [varchar](max) NULL,
	[StudentActivityId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrStudentActivityResearch]    Script Date: 2022-12-27 05:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrStudentActivityResearch](
	[UserIn] [varchar](30) NULL,
	[DateIn] [datetime] NULL,
	[UserUp] [varchar](30) NULL,
	[DateUp] [datetime] NULL,
	[StrSc] [varchar](1) NULL,
	[Emplid] [varchar](30) NULL,
	[Strm] [varchar](30) NULL,
	[JobId] [int] NULL,
	[StatusId] [varchar](50) NULL,
	[IsViewed] [varchar](10) NULL,
	[Reason] [varchar](max) NULL,
	[StudentActivityId] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ORACLECOPY] SET  READ_WRITE 
GO
