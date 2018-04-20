USE [Student_Information_System]
GO

Select b.InstructID,COUNT(*) as OgrenciSayisi from Instructor as a  ,Advisor as b where a.InstructID=b.InstructID
group by b.InstructID Having COUNT(*)>1

--danýþman olduðu öðrenci sayýsý 1 den  fazla olan öðretmenler

