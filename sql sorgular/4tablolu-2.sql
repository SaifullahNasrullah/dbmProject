USE [Student_Information_System]
GO


SELECT DISTINCT DName from StudentSection as a , CourseSection as b, Course as c,Department as d where a.StudentID=15478511426 AND a.SectionID=b.SectionID AND b.CourseID=c.CourseID AND c.DeptID=d.DeptID
-- Student ID si bilinen öðrencinin aldýðý derslerin Departmentlarý