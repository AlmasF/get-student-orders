SELECT st.StudentID
   ,us.LastName
   ,us.FirstName
   ,us.MiddleName
   ,st.OrderID
   ,od.OrderTypeID
   ,ftp.OrderFunctionalityTypeID
   ,od.OrderDate
   ,tp.Title
  FROM [KazNITU].[dbo].[Edu_OrderStudents] AS st
  RIGHT OUTER JOIN [KazNITU].[dbo].[Edu_Orders] AS od
  ON (od.ID = st.OrderID)
  LEFT OUTER JOIN [KazNITU].[dbo].[Edu_Users] AS us
  ON (st.StudentID = us.ID)
  LEFT OUTER JOIN [KazNITU].[dbo].[Edu_OrderFunctionality] AS ftp
  ON (od.OrderTypeID = ftp.OrderTypeID)
  LEFT OUTER JOIN [KazNITU].[dbo].[Edu_OrderFunctionalityType] AS tp
  ON (ftp.OrderFunctionalityTypeID = tp.ID)
  WHERE st.StudentID = 28899
  ORDER BY OrderDate;
/*
  4778 - Маралым
  28899 - Алмас
  5975 - Югай Екатерина (отчислена)
  */
