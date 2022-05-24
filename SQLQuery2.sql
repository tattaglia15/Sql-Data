CREATE TABLE [Students] (
[Id] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar] NOT NULL,
[LastName] [nvarchar] NOT NULL,
[DateOfBirth] [datetime] NULL,
[EnrolledDate] [datetime] NULL,
[Gender] [varchar] (10),
[NationalIdNumber] [tinyint] NOT NULL,
[StudentCardNumber] [tinyint] NOT NULL
)
CREATE TABLE [Teacher] (
[Id] [int] IDENTITY(1,1) NOT NULL,
[FirstName] [nvarchar] NOT NULL,
[LastName] [nvarchar] NOT NULL,
[DateOfBirth] [datetime] NULL,
[AcademiRank] [varchar](2) NULL,
[HireDate] [datetime] NULL
)
CREATE TABLE [Grade] (
[Id] [int] IDENTITY(1,1) NOT NULL,
[StudentId] [smallint] NOT NULL,
[CourseId] [smallint] NOT NULL,
[TeacherId] [smallint] NOT NULL,
[Grade] [tinyint] NOT NULL,
[Comment] [nvarchar] NULL,
[CreatedDate] [datetime] Null
)
CREATE TABLE [Course] (
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [varchar] NOT NULL,
[Credit] [varchar] NOT NULL,
[AcademicYear] [smallint] NOT NULL,
[Semester] [tinyint] NOT NULL
)
CREATE TABLE [GradeDetails] (
[Id] [int] IDENTITY(1,1) NOT NULL,
[GradeId] [tinyint] NOT NULL,
[AchievmentTypeId] [tinyint] NOT NULL,
[AchievmentPoints] [smallint] NOT NULL,
[AchievmentMaxPoints] [smallint] NOT NULL,
[AchievmentDate] [datetime] NOT NULL
)
CREATE TABLE [AchievmentType] (
[Id] [int] IDENTITY(1,1) NOT NULL,
[Name] [varchar] NOT NULL,
[Description] [varchar] NOT NULL,
[ParticipationRate] [int] NOT NULL
)