USE [Student_Information_System]
GO

select SSN, Name,SurName,Title,Phone from Instructor as a where NOT EXISTS (select * from Advisor as b where a.InstructID=b.InstructID)

--Hiçbir Öðrenciye Danýþmanlýk yapmayan öðretmenlerin bilgileri