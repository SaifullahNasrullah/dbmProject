USE [Student_Information_System]
GO

select SSN,InstructID,Title,c.DeptID from Instructor as a ,Faculty as b,DepartmentFaculty as c where b.FName='M�hendislik' AND b.FacultyID=c.FacultyID AND c.DeptID=a.DeptID


-- ismi bilinen fak�ltedeki ��retmenler