USE [Student_Information_System]
GO


Alter Table Exams ADD Constraint ExamsNote
Check (Midterm<101 AND Midterm>-1 AND Final<101 AND Final>-1 )

