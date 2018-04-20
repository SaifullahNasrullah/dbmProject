USE [Student_Information_System]
GO

select a.SectionID,SSN,Name,SurName from CourseSection as a ,InstructorSection as b , Instructor as c where a.Semester='2016spring' AND a.SectionID=b.SectionID AND b.InstructID=c.InstructID

-- belirli semester da verilen section larýn öðretmen bilgileri