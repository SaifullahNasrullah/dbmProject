USE [Student_Information_System]
GO


Select PageName from FacebookPage as a ,FacebookJoin as b where b.StudentFacebook='gurkanakcasu' AND a.PageID=b.PageID
-- Facebook Kullan�c� ad� bilinen ��rencinin ald��� derslerin facebook sayfas� isimleri--