USE [Student_Information_System]
GO


Select PageName from FacebookPage as a ,FacebookJoin as b where b.StudentFacebook='gurkanakcasu' AND a.PageID=b.PageID
-- Facebook Kullanýcý adý bilinen öðrencinin aldýðý derslerin facebook sayfasý isimleri--