USE [Student_Information_System]
GO

select CourseID, CName , ECTS from Course as a where EXISTS (Select * from CourseSection as b where a.CourseID=b.CourseID)


-- section u olan dersler