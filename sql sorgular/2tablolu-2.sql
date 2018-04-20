USE [Student_Information_System]
GO

Select StudentID from StudentSection as a, InstructorSection as b where b.InstructID=96574135872 AND b.SectionID=1  AND a.SectionID=b.SectionID
-- bir öðretmenin belirli bir section daki öðrencilerinin numaralarý