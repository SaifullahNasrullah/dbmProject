USE [Student_Information_System]
GO



Alter Table Student ADD Constraint StudentCns
Check (StudentID<100000000000 AND StudentID>9999999999 AND SSN<100000000000 AND SSN>9999999999 )
