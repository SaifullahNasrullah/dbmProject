USE [Student_Information_System]
GO

Alter Table Instructor ADD Constraint InstructCns
Check (InstructID<100000000000 AND InstructID>9999999999 AND SSN<100000000000 AND SSN>9999999999 )