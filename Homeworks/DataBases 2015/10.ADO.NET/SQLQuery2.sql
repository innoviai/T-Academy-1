SELECT c.CategoryName + ' -> ' , c.CategoryID , COUNT(p.ProductName) 
FROM [Products] p
JOIN [Categories] c ON p.CategoryID = c.CategoryID
GROUP BY c.CategoryName, c.CategoryID
--ORDER BY p.ProductName



Select distinct c.CategoryName + ' -> ' AS [Category], 
    substring(
        (
            Select ','+ p.ProductName AS [text()]
            From Products p
            Where p.CategoryID = c.CategoryID
            --ORDER BY ST1.SubjectID
            For XML PATH ('')
        ), 2, 5000) AS [ProductNames]
From [dbo].[Categories] c


Select distinct c.CategoryName + ' -> ' AS [Category], 
    substring(                                         
        (                                              
            Select ','+ p.ProductName AS [text()]      
            From Products p                            
            Where p.CategoryID = c.CategoryID          
            FOR XML PATH ('')                          
        ), 2, 5000) AS [ProductNames]                  
FROM [dbo].[Categories] c                             