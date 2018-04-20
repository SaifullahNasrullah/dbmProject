USE [Student_Information_System]
GO

select CName, Ects from Course as a ,CourseSection as b , StudentSection as c where c.StudentID=15478511426 AND c.SectionID=b.SectionID And a.CourseID=b.CourseID

-- Öðrenci Numarasý Belli Öðrencinin aldýðý derslerin bilgisi