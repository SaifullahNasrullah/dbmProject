USE [Student_Information_System]
GO

SELECT DISTINCT CName from Course as a, CourseSection as b, InstructorSection as c where c.InstructID=96574135872 AND c.SectionID=b.SectionID AND a.CourseID=b.CourseID
-- belli bir öðretmenin verdiði derslerin adý(Instruct ýd Si belirli)