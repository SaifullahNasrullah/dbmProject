USE [Student_Information_System]
GO

select DISTINCT StudentId 
from Student 
where StudentFacebook IN (select StudentFacebook 
			  from FacebookJoin as a,FacebookPage as b,CourseSection c,Course d
			  where d.DeptID=1 and d.CourseID=c.CourseID and c.SectionID=b.SectionID and b.PageID=a.PageID)
																 OR StudentLinkedin IN(select StudentLinkedin from LinkedinJoin as a,LinkedinPage as b,CourseSection as c, Course as d 
																 where d.DeptID=1 and d.CourseID =c.CourseID and c.SectionID =b.SectionID and b.PageID=a.PageID)
--belirli bir depatmandaki dersleri alan öðrencilerin sosyal medya hesabý ile derslere baðlý olan hesaplarý
