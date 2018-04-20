USE [Student_Information_System]
GO

SELECT DISTINCT CName from Instructor as a , InstructorSection as b ,CourseSection as c, Course as d where a.SSN=10012544125 AND a.InstructID=b.InstructID AND b.SectionID=c.SectionID AND c.CourseID=d.CourseID

-- SSN bilinen Öðretmenin verdiði derslerin isimleri
