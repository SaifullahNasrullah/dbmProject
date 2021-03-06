USE [Student_Information_System]
GO
/****** Object:  Table [dbo].[Advisor]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Advisor](
	[InstructID] [bigint] NOT NULL,
	[StudentID] [bigint] NOT NULL,
 CONSTRAINT [PK_Advisor] PRIMARY KEY CLUSTERED 
(
	[InstructID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[CourseID] [int] IDENTITY(1,1) NOT NULL,
	[CName] [nvarchar](50) NOT NULL,
	[ECTS] [int] NOT NULL,
	[DeptID] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CourseSection]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CourseSection](
	[SectionID] [int] IDENTITY(1,1) NOT NULL,
	[CourseID] [int] NOT NULL,
	[StartHour] [time](7) NOT NULL,
	[FinishHour] [time](7) NOT NULL,
	[Day] [nvarchar](10) NOT NULL,
	[Class] [nvarchar](5) NOT NULL,
	[Semester] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_CourseSection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DeanFaculty]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeanFaculty](
	[DeanID] [int] IDENTITY(1,1) NOT NULL,
	[InstructID] [bigint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[FacultyID] [int] NOT NULL,
 CONSTRAINT [PK_DeanFaculty] PRIMARY KEY CLUSTERED 
(
	[DeanID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[DeptID] [int] IDENTITY(1,1) NOT NULL,
	[DName] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[DepartmentFaculty]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DepartmentFaculty](
	[DeptID] [int] NOT NULL,
	[FacultyID] [int] NOT NULL,
 CONSTRAINT [PK_DepartmentFaculty] PRIMARY KEY CLUSTERED 
(
	[DeptID] ASC,
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Exams]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Exams](
	[SectionID] [int] NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[Midterm] [int] NULL,
	[Final] [int] NULL,
	[LatterNote] [nvarchar](2) NULL,
 CONSTRAINT [PK_Exams] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FacebookJoin]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacebookJoin](
	[PageID] [int] NOT NULL,
	[StudentFacebook] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_FacebookJoin] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC,
	[StudentFacebook] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FacebookPage]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FacebookPage](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](50) NOT NULL,
	[SectionID] [int] NOT NULL,
 CONSTRAINT [PK_FacebookPage] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Faculty]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Faculty](
	[FacultyID] [int] IDENTITY(1,1) NOT NULL,
	[FName] [nvarchar](50) NOT NULL,
	[Location] [nvarchar](250) NOT NULL,
 CONSTRAINT [PK_Faculty] PRIMARY KEY CLUSTERED 
(
	[FacultyID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[HeadOfDepartment]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HeadOfDepartment](
	[HodID] [int] IDENTITY(1,1) NOT NULL,
	[InstructID] [bigint] NOT NULL,
	[StartDate] [date] NOT NULL,
	[DeptID] [int] NOT NULL,
 CONSTRAINT [PK_HeadOfDepartment] PRIMARY KEY CLUSTERED 
(
	[HodID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Instructor]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Instructor](
	[SSN] [bigint] NOT NULL,
	[InstructID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[Title] [nvarchar](10) NOT NULL,
	[Proffesio] [nvarchar](20) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[Address] [nvarchar](250) NULL,
	[InstructorFacebook] [nvarchar](50) NOT NULL,
	[InstructorLinkedin] [nvarchar](50) NOT NULL,
	[DeptID] [int] NOT NULL,
 CONSTRAINT [PK_Instructor] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC,
	[InstructID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[InstructorSection]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InstructorSection](
	[InstructID] [bigint] NOT NULL,
	[SectionID] [int] NOT NULL,
 CONSTRAINT [PK_InstructorSection] PRIMARY KEY CLUSTERED 
(
	[InstructID] ASC,
	[SectionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Invite]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Invite](
	[PageID] [int] NOT NULL,
	[StudentLinkedin] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Invite] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC,
	[StudentLinkedin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkedinJoin]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedinJoin](
	[PageID] [int] NOT NULL,
	[StudentLinkedin] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LinkedinJoin] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC,
	[StudentLinkedin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LinkedinPage]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LinkedinPage](
	[PageID] [int] IDENTITY(1,1) NOT NULL,
	[PageName] [nvarchar](50) NOT NULL,
	[SectionID] [int] NOT NULL,
 CONSTRAINT [PK_LinkedinPage] PRIMARY KEY CLUSTERED 
(
	[PageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Student]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[SSN] [bigint] NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[SurName] [nvarchar](50) NOT NULL,
	[DateOfBirth] [date] NOT NULL,
	[Phone] [nvarchar](11) NULL,
	[Address] [nvarchar](250) NULL,
	[StudentFacebook] [nvarchar](50) NULL,
	[StudentLinkedin] [nvarchar](50) NULL,
	[DeptID] [int] NOT NULL,
	[GradDate] [nvarchar](4) NULL,
 CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED 
(
	[SSN] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[StudentSection]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StudentSection](
	[SectionID] [int] NOT NULL,
	[StudentID] [bigint] NOT NULL,
	[EnrolDate] [date] NOT NULL,
 CONSTRAINT [PK_StudentSection] PRIMARY KEY CLUSTERED 
(
	[SectionID] ASC,
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (12547895621, 65498732100)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (20311145222, 26598749531)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (20315544116, 15975348912)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (20315544116, 78965432110)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (25848874516, 10410510633)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (34697521647, 10214577748)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (36521444125, 52164447856)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (54675643215, 16625531425)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (55641225548, 63248752165)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (66621154258, 74185296332)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (69693548121, 65848712254)
INSERT [dbo].[Advisor] ([InstructID], [StudentID]) VALUES (996574135872, 15478511426)
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (1, N'nesne', 5, 1)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (2, N'ingilizce', 4, 2)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (3, N'elektrik', 4, 13)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (5, N'elektrik', 3, 1)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (6, N'almanca', 5, 12)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (7, N'cocuk bakımı', 6, 10)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (8, N'beton', 4, 8)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (9, N'anatomi', 7, 5)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (10, N'pskoloji', 6, 4)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (11, N'motor', 4, 7)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (12, N'ilac', 6, 6)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (13, N'bilgisayaraglari', 5, 1)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (14, N'windows', 4, 1)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (15, N'fizyoloji', 3, 11)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (16, N'futboll', 4, 3)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (17, N'database', 6, 1)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (18, N'mikro', 5, 1)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (19, N'demir', 4, 8)
INSERT [dbo].[Course] ([CourseID], [CName], [ECTS], [DeptID]) VALUES (20, N'algoritma', 4, 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[CourseSection] ON 

INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (1, 1, CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), N'pazartesi', N'b4', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (2, 2, CAST(N'12:00:00' AS Time), CAST(N'16:00:00' AS Time), N'pazartesi', N'c8', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (3, 1, CAST(N'12:16:00' AS Time), CAST(N'16:16:00' AS Time), N'salı', N'b4', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (4, 1, CAST(N'09:00:00' AS Time), CAST(N'12:00:00' AS Time), N'salı', N'b7', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (5, 3, CAST(N'10:00:00' AS Time), CAST(N'15:00:00' AS Time), N'çarşamba', N'b8', N'2016fall')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (6, 5, CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time), N'cuma', N'b9', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (7, 6, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time), N'perşembe', N'b2', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (8, 5, CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), N'perşembe', N'b7', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (9, 5, CAST(N'19:00:00' AS Time), CAST(N'21:00:00' AS Time), N'perşembe', N'b9', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (10, 8, CAST(N'12:15:00' AS Time), CAST(N'15:15:00' AS Time), N'cuma', N'b10', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (11, 9, CAST(N'10:00:00' AS Time), CAST(N'12:15:00' AS Time), N'salı', N'b8', N'2016fall')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (12, 10, CAST(N'10:10:00' AS Time), CAST(N'12:15:00' AS Time), N'pazartesi', N'b7', N'2016fall')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (13, 11, CAST(N'12:15:00' AS Time), CAST(N'15:15:00' AS Time), N'salı', N'b9', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (14, 11, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time), N'salı', N'b9', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (15, 12, CAST(N'10:10:00' AS Time), CAST(N'12:15:00' AS Time), N'çarşamba', N'b8', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (16, 13, CAST(N'10:00:00' AS Time), CAST(N'12:15:00' AS Time), N'çarşamba', N'b4', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (17, 12, CAST(N'14:00:00' AS Time), CAST(N'16:00:00' AS Time), N'perşembe', N'b7', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (18, 13, CAST(N'14:00:00' AS Time), CAST(N'17:00:00' AS Time), N'salı', N'b9', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (19, 20, CAST(N'09:00:00' AS Time), CAST(N'11:30:00' AS Time), N'pazartesi', N'b8', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (20, 20, CAST(N'12:00:00' AS Time), CAST(N'14:00:00' AS Time), N'pazartesi', N'b8', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (21, 20, CAST(N'16:00:00' AS Time), CAST(N'18:00:00' AS Time), N'pazartesi', N'b8', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (22, 19, CAST(N'10:10:00' AS Time), CAST(N'12:15:00' AS Time), N'salı', N'b4', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (23, 17, CAST(N'15:00:00' AS Time), CAST(N'17:00:00' AS Time), N'perşembe', N'b7', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (24, 17, CAST(N'10:10:00' AS Time), CAST(N'12:15:00' AS Time), N'salı', N'b9', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (25, 16, CAST(N'09:00:00' AS Time), CAST(N'12:15:00' AS Time), N'cuma', N'b9', N'2016fall')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (26, 18, CAST(N'09:00:00' AS Time), CAST(N'11:00:00' AS Time), N'perşembe', N'b9', N'2016spring')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (27, 18, CAST(N'09:00:00' AS Time), CAST(N'11:00:00' AS Time), N'cuma', N'b9', N'2016fall')
INSERT [dbo].[CourseSection] ([SectionID], [CourseID], [StartHour], [FinishHour], [Day], [Class], [Semester]) VALUES (28, 18, CAST(N'12:15:00' AS Time), CAST(N'15:00:00' AS Time), N'salı', N'b9', N'2016spring')
SET IDENTITY_INSERT [dbo].[CourseSection] OFF
SET IDENTITY_INSERT [dbo].[DeanFaculty] ON 

INSERT [dbo].[DeanFaculty] ([DeanID], [InstructID], [StartDate], [FacultyID]) VALUES (1, 54675643215, CAST(N'2010-10-10' AS Date), 1)
INSERT [dbo].[DeanFaculty] ([DeanID], [InstructID], [StartDate], [FacultyID]) VALUES (2, 20311145222, CAST(N'2012-12-01' AS Date), 1)
INSERT [dbo].[DeanFaculty] ([DeanID], [InstructID], [StartDate], [FacultyID]) VALUES (3, 54675643215, CAST(N'2015-01-01' AS Date), 1)
INSERT [dbo].[DeanFaculty] ([DeanID], [InstructID], [StartDate], [FacultyID]) VALUES (4, 99854100025, CAST(N'2001-01-01' AS Date), 6)
INSERT [dbo].[DeanFaculty] ([DeanID], [InstructID], [StartDate], [FacultyID]) VALUES (5, 25441187458, CAST(N'2012-02-02' AS Date), 3)
INSERT [dbo].[DeanFaculty] ([DeanID], [InstructID], [StartDate], [FacultyID]) VALUES (6, 36521444125, CAST(N'2015-05-05' AS Date), 5)
SET IDENTITY_INSERT [dbo].[DeanFaculty] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (1, N'Bilgisayar Mühendisliği', N'Dış kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (2, N'Ingilizce', N'Ana Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (3, N'Beden Eğitimi', N'Ana Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (4, N'Psikoloji', N'Ana Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (5, N'Hemşirelik', N'Dış Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (6, N'Eczacılık ', N'Ana Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (7, N'Makina Mühendisliği', N'Ana Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (9, N'Insaat Mühendisligi', N'Ana Kapmüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (10, N'Sosyoloji', N'Ana Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (11, N'Okul Öncesi Öğretmenliği', N'Ana Kampüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (12, N'Tıp', N'Dış Kapmüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (13, N'Almanca', N'Ana Kapmüs')
INSERT [dbo].[Department] ([DeptID], [DName], [Location]) VALUES (14, N'Elektrik-Elektronik Mühendisliği', N'Ana Kampüs')
SET IDENTITY_INSERT [dbo].[Department] OFF
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (1, 1)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (2, 5)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (3, 6)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (4, 3)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (5, 2)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (6, 4)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (7, 1)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (8, 1)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (9, 3)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (10, 6)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (11, 2)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (12, 3)
INSERT [dbo].[DepartmentFaculty] ([DeptID], [FacultyID]) VALUES (13, 1)
INSERT [dbo].[Exams] ([SectionID], [StudentID], [Midterm], [Final], [LatterNote]) VALUES (1, 15478511426, 40, 60, N'BB')
INSERT [dbo].[Exams] ([SectionID], [StudentID], [Midterm], [Final], [LatterNote]) VALUES (1, 25146322154, 50, 70, N'AA')
INSERT [dbo].[Exams] ([SectionID], [StudentID], [Midterm], [Final], [LatterNote]) VALUES (1, 36541287952, 80, 80, N'AA')
INSERT [dbo].[Exams] ([SectionID], [StudentID], [Midterm], [Final], [LatterNote]) VALUES (2, 52164447856, 70, 90, N'AA')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (1, N'gulsah kara')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (3, N'Behlül Yılmaz')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (3, N'gurkanakcasu')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (4, N'')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (5, N'gurkanakcasu')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (5, N'Onur Air')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (7, N'nurhaksenturk')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (8, N'htanir6644')
INSERT [dbo].[FacebookJoin] ([PageID], [StudentFacebook]) VALUES (11, N'snasrullah')
SET IDENTITY_INSERT [dbo].[FacebookPage] ON 

INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (3, N'nesne2016spring', 1)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (4, N'ingilizce2016spring', 2)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (5, N'nesne2016spring', 3)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (6, N'nesne2016spring', 4)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (7, N'elektrik2016fall', 5)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (8, N'elektrik2016spring', 6)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (9, N'elektrik2016spring', 8)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (10, N'ilac2016spring', 15)
INSERT [dbo].[FacebookPage] ([PageID], [PageName], [SectionID]) VALUES (11, N'demir2016spring', 22)
SET IDENTITY_INSERT [dbo].[FacebookPage] OFF
SET IDENTITY_INSERT [dbo].[Faculty] ON 

INSERT [dbo].[Faculty] ([FacultyID], [FName], [Location]) VALUES (1, N'Mühendislik', N'Kampüs Tekstil Mühendisliği Bölümü')
INSERT [dbo].[Faculty] ([FacultyID], [FName], [Location]) VALUES (2, N'Tıp', N'Dış kampüs Hastene Yakını ')
INSERT [dbo].[Faculty] ([FacultyID], [FName], [Location]) VALUES (3, N'Edebiyat', N'Ana Kampüs Hazırlık Binası karşısı')
INSERT [dbo].[Faculty] ([FacultyID], [FName], [Location]) VALUES (4, N'Eczacılık', N'Ana Kampüs Eczacılık Fakültesi içi')
INSERT [dbo].[Faculty] ([FacultyID], [FName], [Location]) VALUES (5, N'Yabancı Diller', N'Ana Kampüs 1 No lu yemekhane Karşısı')
INSERT [dbo].[Faculty] ([FacultyID], [FName], [Location]) VALUES (6, N'Eğitim ', N'Ana Kampüs ')
SET IDENTITY_INSERT [dbo].[Faculty] OFF
SET IDENTITY_INSERT [dbo].[HeadOfDepartment] ON 

INSERT [dbo].[HeadOfDepartment] ([HodID], [InstructID], [StartDate], [DeptID]) VALUES (1, 96574135872, CAST(N'2008-04-06' AS Date), 1)
INSERT [dbo].[HeadOfDepartment] ([HodID], [InstructID], [StartDate], [DeptID]) VALUES (2, 30566887745, CAST(N'2010-10-10' AS Date), 1)
INSERT [dbo].[HeadOfDepartment] ([HodID], [InstructID], [StartDate], [DeptID]) VALUES (3, 145477855466, CAST(N'2005-04-06' AS Date), 5)
INSERT [dbo].[HeadOfDepartment] ([HodID], [InstructID], [StartDate], [DeptID]) VALUES (4, 96574135872, CAST(N'2012-12-12' AS Date), 1)
INSERT [dbo].[HeadOfDepartment] ([HodID], [InstructID], [StartDate], [DeptID]) VALUES (5, 25441187458, CAST(N'2017-01-01' AS Date), 8)
INSERT [dbo].[HeadOfDepartment] ([HodID], [InstructID], [StartDate], [DeptID]) VALUES (6, 25848874516, CAST(N'2011-11-11' AS Date), 11)
INSERT [dbo].[HeadOfDepartment] ([HodID], [InstructID], [StartDate], [DeptID]) VALUES (8, 25441187458, CAST(N'2015-09-09' AS Date), 9)
SET IDENTITY_INSERT [dbo].[HeadOfDepartment] OFF
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (10012544125, 10003544987, N'serdar', N'korukoglu', N'prof', N'istatistik', CAST(N'1968-10-10' AS Date), N'05441221545', N'manisa', N'korukoglu74', N'korukoglu35', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (14421566222, 25441187458, N'mahmut', N'tuncer', N'docent', N'halksosyolojisi', CAST(N'1970-12-12' AS Date), N'05441254436', N'devrek', N'tuncer5541', N'tuncer3620', 9)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (15547778545, 11455221654, N'cem', N'ozkan', N'prof', N'bebekpskolojisi', CAST(N'1986-04-04' AS Date), N'05341154422', N'evka 5', N'ozkann574', N'ozkannn2222', 10)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (20135554462, 20315544116, N'aybars', N'ugur', N'prof', N'datastructure', CAST(N'1972-12-20' AS Date), N'05444124462', N'evka 1', N'augur2254', N'augur1425', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (21544115874, 20311114421, N'pelin', N'su', N'docent', N'almanedebiyatı', CAST(N'1972-05-05' AS Date), N'05231444521', N'ataturk', N'su210554', N'su1026', 12)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (22214554785, 14547785466, N'harun', N'fidandan', N'asistan', N'anatomi', CAST(N'1990-10-15' AS Date), N'05471554126', N'buca', N'fidandan8874', N'fidandan22144', 5)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (25541112000, 52147886950, N'ozgu', N'can', N'docent', N'windows', CAST(N'1976-03-03' AS Date), N'05362155487', N'orhangazi', N'can5478', N'can5814', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (30211451125, 30211546985, N'levent', N'toker', N'prof', N'bilgisayaraglari', CAST(N'1966-10-10' AS Date), N'05387744125', N'izmir', N'toker3507', N'toker2566', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (30544487415, 30566887745, N'rıza cenk', N'erdur', N'docent', N'nesne', CAST(N'1974-07-07' AS Date), N'05384412556', N'aydın', N'cerdur6879', N'cerdur8925', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (55211000362, 66621154258, N'okan', N'bursa', N'asistan', N'mikroişlemciler', CAST(N'1982-05-05' AS Date), N'05115426685', N'istanbul', N'okan25418', N'okan66002', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (55412254688, 25848874516, N'abdullah', N'topal', N'docent', N'kalpdamar', CAST(N'1985-12-12' AS Date), N'05362154442', N'balcova', N'atopal234', N'atopal876', 11)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (55644122545, 55641225548, N'ibrahim', N'kul', N'asistan', N'psikometri', CAST(N'1964-02-02' AS Date), N'05321666245', N'evka 25', N'kul0011', N'kul1520', 4)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (58774452165, 36521444125, N'nurettin', N'canak', N'prof', N'ingiliz edebiyatı', CAST(N'1982-10-10' AS Date), N'05384111251', N'evka 4', N'ncanak786', N'ncanak888', 2)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (65478912365, 96574135782, N'Murat Osman', N'Ünalır', N'docent', N'database', CAST(N'1965-07-15' AS Date), N'02324564587', N'Evka3', N'Murat Osman Ünlalır', N'murat osman', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (74565121365, 71468732515, N'Vecdi', N'Aytaç', N'docent', N'math', CAST(N'1983-09-11' AS Date), N'05621546556', N'Bostanlı', N'Vecdi Aytac', N'Vecdi aytac', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (78945632541, 54676543215, N'Yasamin', N'Topaloğlu', N'prof', N'tacnical english', CAST(N'1968-08-10' AS Date), N'05456875421', N'Buca', N'yasamin topaloğlu', N'yasamin topaloğlu', 13)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (85498585468, 12547896521, N'tolga', N'Gurcan', N'asistan', N'futboll', CAST(N'1987-02-03' AS Date), N'05314546225', N'konak', N'tolga gurcan', N'tolgagurcan25', 3)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (87744511152, 87445115668, N'kemalettin', N'korkut', N'docent', N'beton', CAST(N'1984-10-10' AS Date), N'05321154887', N'konak', N'korkutt7784', N'korkut5554', 8)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (97546213542, 69693548121, N'Erkan', N'Gömüş', N'asistan', N'Medecine', CAST(N'1988-02-04' AS Date), N'58465125345', N'Bayraklı', N'Erkan Gömüs', N'Erkan gomus', 6)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (98736547125, 34897521647, N'Nürşen ', N'Çatak', N'docent', N'piskolojiye giris', CAST(N'1984-06-01' AS Date), N'05648126545', N'Karşıyaka', N'Nursen catak', N'catak nursen', 4)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (99622155205, 20311145222, N'emine', N'sezer', N'asistan', N'elektrik', CAST(N'1980-06-06' AS Date), N'05884874155', N'kasıyaka', N'sezer6625', N'sezer2172', 1)
INSERT [dbo].[Instructor] ([SSN], [InstructID], [Name], [SurName], [Title], [Proffesio], [DateOfBirth], [Phone], [Address], [InstructorFacebook], [InstructorLinkedin], [DeptID]) VALUES (99854412544, 99854100025, N'tuncay', N'charlie', N'docent', N'basketboll', CAST(N'1982-10-10' AS Date), N'05374884125', N'evka 13', N'charlie2547', N'charlie6622', 3)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (10003544987, 3)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (10003544987, 4)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (20311114421, 7)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (30211546985, 6)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (36521444125, 2)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (54675643215, 5)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (69693548121, 15)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (87445115668, 22)
INSERT [dbo].[InstructorSection] ([InstructID], [SectionID]) VALUES (96574135872, 1)
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (3, N'fadeadf')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (3, N'gurkanakcasuLinked')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (3, N'karaoğlan gulsa')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (4, N'')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (5, N'gurkanakcasuLinked')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (5, N'Onur Nuray')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (7, N'senturknurhak')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (8, N'htanir1026')
INSERT [dbo].[LinkedinJoin] ([PageID], [StudentLinkedin]) VALUES (11, N'hamraz')
SET IDENTITY_INSERT [dbo].[LinkedinPage] ON 

INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (3, N'nesne2016spring', 1)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (4, N'ingilizce2016spring', 2)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (5, N'nesne2016spring', 3)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (6, N'nesne2016spring', 4)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (7, N'elektrik2016fall', 5)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (8, N'elektrik2016spring', 6)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (9, N'elektrik2016spring', 8)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (10, N'ilac2016spring', 15)
INSERT [dbo].[LinkedinPage] ([PageID], [PageName], [SectionID]) VALUES (11, N'demir2016spring', 22)
SET IDENTITY_INSERT [dbo].[LinkedinPage] OFF
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (10232154658, 10214577748, N'tugba', N'can', CAST(N'1991-10-10' AS Date), N'05352165224', N'manisa', N'tugbacan1', N'tugbacan2', 4, N'2015')
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (12547896325, 15478511426, N'gurkan', N'akcasu', CAST(N'1994-07-30' AS Date), N'05345898141', N'Bornova', N'gurkanakcasu', N'gurkanakcasuLinked', 1, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (15422115632, 52154668745, N'veysi', N'concon', CAST(N'1992-08-08' AS Date), N'05541254162', N'nevsehir', N'VeysiBye', N'Veysss', 5, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (15428789458, 16625531425, N'nurhak', N'senturk', CAST(N'1994-10-10' AS Date), N'05382541658', N'ankara', N'nurhaksenturk', N'senturknurhak', 13, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (15444216233, 36925814722, N'orhan', N'kalıncı', CAST(N'1990-08-08' AS Date), N'05421546256', N'izmir', N'orhankalıncı', N'orhankal2', 12, N'2014')
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (15477741223, 33215664854, N'kemal', N'tokat', CAST(N'1992-10-14' AS Date), N'05451265554', N'iskocya', N'famdk', N'fatömas', 7, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (20312114521, 20315664425, N'berna', N'seker', CAST(N'1994-09-09' AS Date), N'05351541126', N'gaziantep', N'bernaseker547', N'dfaplk', 11, N'2015')
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (20316546658, 20315926855, N'melek', N'durmaz', CAST(N'1993-12-12' AS Date), N'05321598748', N'balcova', N'mdurmaz2', N'mdurmaz', 10, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (21546448556, 12233366612, N'seyfullah', N'nasrullah', CAST(N'1992-01-10' AS Date), N'05451236521', N'evka 3', N'snasrullah', N'hamraz', 8, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (25111133652, 21354442163, N'leman', N'tez', CAST(N'1990-06-06' AS Date), N'05362584711', N'zonguldak', N'ltez0125', N'ltez0654', 10, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (25987111235, 10410510633, N'pelin', N'inam', CAST(N'1993-09-09' AS Date), N'05332165224', N'caycuma', N'pelininam67', N'pelininam067', 11, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (54812226523, 52164447856, N'haydar', N'olay', CAST(N'1995-09-09' AS Date), N'05051542653', N'mugla', N'dfdasee', N'oudfda', 2, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (64789541321, 78965432110, N'Behlül', N'Yılmaz', CAST(N'1995-07-04' AS Date), N'05574899874', N'Çiğli', N'Behlül Yılmaz', N'fadeadf', 1, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (65478981142, 36541287952, N'Battal', N'Tunç', CAST(N'1994-05-06' AS Date), N'05324569874', N'Buca', N'Battal Tunç', N'fadadd', 1, N'2012')
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (65874987214, 63248752165, N'Rubar', N'Kurt', CAST(N'1992-07-08' AS Date), N'05486547821', N'inciraltı', N'Rubar kurt', N'Rubar paiz', 4, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (66215484155, 65848712254, N'mehmet', N'alaz', CAST(N'1994-10-20' AS Date), N'05362154221', N'devrek', N'malaz23', N'malaz54', 6, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (66251477854, 25146322154, N'furkan', N'sık', CAST(N'1994-01-01' AS Date), N'05541112365', N'karaman', N'fkljfı', N'fsık6553', 1, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (75395184624, 15975348912, N'Onur', N'Nuray', CAST(N'1995-05-06' AS Date), N'05454875652', N'Bormar', N'Onur Air', N'Onur Nuray', 1, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (75684921301, 26598749531, N'Caanan', N'Korkmaz', CAST(N'1996-05-06' AS Date), N'05648795545', N'Şirinyer', N'okeydjs', N'faaaad', 1, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (84755126320, 25032156245, N'harun', N'tanır', CAST(N'1990-11-11' AS Date), N'05368845126', N'antalya', N'htanir6644', N'htanir1026', 1, N'2013')
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (87458152456, 65498732100, N'taylan', N'konak', CAST(N'1990-05-10' AS Date), N'05362154789', N'konak', N'taylankonak', N'tkonak', 3, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (88745849985, 88877741652, N'nurbanu', N'cemre', CAST(N'1994-05-05' AS Date), N'05415266541', N'eregli', N'ncemre541', N'ncemre666', 9, N'2016')
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (96321457854, 74185296332, N'Gülşah', N'karaoğlan', CAST(N'1993-05-03' AS Date), N'05589547562', N'bornava', N'gulsah kara', N'karaoğlan gulsa', 1, NULL)
INSERT [dbo].[Student] ([SSN], [StudentID], [Name], [SurName], [DateOfBirth], [Phone], [Address], [StudentFacebook], [StudentLinkedin], [DeptID], [GradDate]) VALUES (98745651224, 36985214764, N'Yasin', N'Ekici', CAST(N'1994-06-08' AS Date), N'05487455695', N'Evka4', N'yasin bey', N'yasin Ekici', 7, NULL)
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (1, 15478511426, CAST(N'2013-02-05' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (1, 25146322154, CAST(N'2015-01-01' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (1, 36541287952, CAST(N'2009-01-02' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (1, 74185296332, CAST(N'2011-01-01' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (1, 78965432110, CAST(N'2011-11-11' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (2, 52164447856, CAST(N'2016-05-04' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (3, 15478511426, CAST(N'2013-02-05' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (3, 15975348912, CAST(N'2013-02-05' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (5, 16625531425, CAST(N'2013-02-05' AS Date))
INSERT [dbo].[StudentSection] ([SectionID], [StudentID], [EnrolDate]) VALUES (22, 12233366612, CAST(N'2013-02-06' AS Date))
ALTER TABLE [dbo].[Exams]  WITH CHECK ADD  CONSTRAINT [ExamsNote] CHECK  (([Midterm]<(101) AND [Midterm]>(-1) AND [Final]<(101) AND [Final]>(-1)))
GO
ALTER TABLE [dbo].[Exams] CHECK CONSTRAINT [ExamsNote]
GO
ALTER TABLE [dbo].[Instructor]  WITH CHECK ADD  CONSTRAINT [InstructCns] CHECK  (([InstructID]<(100000000000.) AND [InstructID]>(9999999999.) AND [SSN]<(100000000000.) AND [SSN]>(9999999999.)))
GO
ALTER TABLE [dbo].[Instructor] CHECK CONSTRAINT [InstructCns]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [StudentCns] CHECK  (([StudentID]<(100000000000.) AND [StudentID]>(9999999999.) AND [SSN]<(100000000000.) AND [SSN]>(9999999999.)))
GO
ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [StudentCns]
GO
/****** Object:  Trigger [dbo].[SayfaOlusturma]    Script Date: 14/01/2017 20:15:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

create trigger [dbo].[SayfaOlusturma]
on [dbo].[InstructorSection] 
after insert
as
begin
declare @PageName nvarchar(50),
@charsection  nvarchar(50),
@section_id int
select @PageName=CName from Course as a ,CourseSection as b ,inserted as c where c.SectionID=b.SectionID AND b.CourseID=a.CourseID
select @PageName+=Semester from CourseSection as a, inserted as b where  a.SectionID=b.SectionID
select @section_id=SectionID from inserted
insert into FacebookPage(PageName,SectionID) VALUES (@PageName,@section_id)
insert into LinkedinPage(PageName,SectionID) VALUES (@PageName,@section_id)
end

GO
ALTER TABLE [dbo].[InstructorSection] ENABLE TRIGGER [SayfaOlusturma]
GO
/****** Object:  Trigger [dbo].[OgrenciSil]    Script Date: 14/01/2017 20:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

Create Trigger [dbo].[OgrenciSil]
on [dbo].[Student]
for delete
as 
begin
declare @StudentID int,
@Student_Facebook nvarchar(50),
@Student_LinkedIn nvarchar(50)
select @StudentID=StudentID  from deleted
select @Student_Facebook=StudentFacebook   from deleted
select @Student_LinkedIn=StudentLinkedin   from deleted
DELETE FROM Advisor where StudentID=@StudentID
DELETE FROM StudentSection where StudentID=@StudentID
DELETE FROM Exams where StudentID=@StudentID
DELETE FROM FacebookJoin where StudentFacebook=@Student_Facebook
DELETE FROM LinkedinJoin where StudentLinkedin=@Student_Facebook

end
GO
ALTER TABLE [dbo].[Student] ENABLE TRIGGER [OgrenciSil]
GO
/****** Object:  Trigger [dbo].[DersEkle1]    Script Date: 14/01/2017 20:15:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO




Create Trigger [dbo].[DersEkle1]
on [dbo].[StudentSection]
for insert
as 

declare @SumOfECTS int,@NewECTS int,@PageID int,@StudentFacebook nvarchar(50),@PageIDLink int,@StudentLinkedin nvarchar(50) 
begin
select @SumOfECTS=SUM(Ects) from Course where CourseID IN (select CourseID from CourseSection as a ,inserted as b,StudentSection as c  where a.SectionID=b.SectionID AND b.StudentID=c.StudentID)
select @NewECTS=Ects from inserted as a ,CourseSection as b, Course as c where a.SectionID=b.SectionID AND b.CourseID=c.CourseID
if @SumOfECTS+@NewECTS>42
begin
	ROLLBACK TRANSACTION
end
select @PageID=b.PageID from inserted as a , FacebookPage as b where a.SectionID=b.SectionID
select @StudentFacebook= b.StudentFacebook from inserted as a , Student as b where a.StudentID=b.StudentID
select @PageIDLink=b.PageID from inserted as a , LinkedinPage as b where a.SectionID=b.SectionID
select @StudentLinkedin= b.StudentLinkedin from inserted as a , Student as b where a.StudentID=b.StudentID
insert FacebookJoin(PageID,StudentFacebook) VALUES (@PageID,@StudentFacebook)
insert LinkedinJoin(PageID,StudentLinkedin) VALUES (@PageIDLink,@StudentLinkedin)

end
GO
ALTER TABLE [dbo].[StudentSection] ENABLE TRIGGER [DersEkle1]
GO
