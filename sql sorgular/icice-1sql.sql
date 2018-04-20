USE [Student_Information_System]
GO

select DISTINCT Name,SurName from Student where StudentID IN (select StudentID from Advisor
                                                      where InstructID=96574135872 ) OR StudentID IN (select StudentID from StudentSection as a,InstructorSection as b where b.InstructID=96574135872 AND a.SectionID=b.SectionID ) 
								  -- Belirli bir öðretim görevlisinin Dersine girdiði veya danýþmanlýðýndaki öðrenciler
