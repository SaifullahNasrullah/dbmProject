USE [Student_Information_System]
GO

select  a.Name,a.SurName,a.Title,b.StudentID
from Advisor as b  RIGHT JOIN Instructor as a ON a.InstructID=b.InstructID

