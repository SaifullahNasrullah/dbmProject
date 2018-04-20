USE [Student_Information_System]
GO

select b.StudentID,b.Name,b.SurName,a.SectionID,a.Midterm,a.Final,a.LatterNote from Exams as a FULL OUTER JOIN Student as b ON  a.StudentID=b.StudentID

--Öðrencilerin derslerden aldýðý notlar ve sahibi olmayan notlar