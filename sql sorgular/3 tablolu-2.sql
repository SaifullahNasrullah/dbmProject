USE [Student_Information_System]
GO

SELECT DISTINCT CName from Course as a, CourseSection as b, InstructorSection as c where c.InstructID=96574135872 AND c.SectionID=b.SectionID AND a.CourseID=b.CourseID
-- belli bir ��retmenin verdi�i derslerin ad�(Instruct �d Si belirli)