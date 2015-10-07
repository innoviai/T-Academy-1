USE TelerikAcademy
GO

SELECT e.EmployeeID, e.FirstName, e.LastName, e2.FirstName + ' ' + e2.LastName AS 'Manager'
FROM [Employees] e
JOIN [Employees] e2
ON e.ManagerID IN (e2.EmployeeID)
--ORDER BY e.EmployeeID