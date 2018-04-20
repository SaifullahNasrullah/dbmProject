USE [Student_Information_System]
GO

SELECT DISTINCT b.Name ,b.SurName,b.Phone  from Student as a ,Instructor as b , StudentSection as c, InstructorSection as d where a.SSN=12547896325 AND a.StudentID=c.StudentID AND c.SectionID=d.SectionID AND d.InstructID=b.InstructID
-- SSN ini bilinen Öðrencinin aldýðý derslerin Öðretmen bilgileri