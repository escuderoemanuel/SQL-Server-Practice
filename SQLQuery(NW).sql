SELECT CustomerID, EmployeeID, OrderDate FROM Orders
WHERE OrderID = 10248


SELECT * FROM Customers


SELECT 
OrderID, 
ContactName as CustomerName, 
FirstName + ', ' + LastName as EmployeeName, 
OrderDate 
FROM Orders  o 
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
INNER JOIN Employees e
ON o.EmployeeID = e.EmployeeID
WHERE OrderID =10248
