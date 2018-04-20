USE [Student_Information_System]
GO

select a.CName,a.Ects,b.StartHour,b.FinishHour,b.Day,b.Class,b.Semester
from Course as a LEFT JOIN CourseSection as b ON a.CourseID=b.CourseID

-- Dersler Ve Sectionlarý (Section yoksa null)