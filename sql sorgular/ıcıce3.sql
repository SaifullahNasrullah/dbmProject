USE [Student_Information_System]
GO

SELECT InstructID from Instructor where InstructID IN ( select InstructID from InstructorSection group by InstructID having COUNT(SectionID)>2) AND InstructID IN (select a.InstructID  from HeadOfDepartment as  a, HeadOfDepartment as b where a.StartDate>b.StartDate )
-- b�l�m ba�kanlar� i�inde 2 den fazla section � olanlar


