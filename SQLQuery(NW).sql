USE NW

SELECT CustomerID, EmployeeID, OrderDate FROM Orders
WHERE OrderID = 10248


SELECT * FROM Customers

SELECT * FROM [Order Details]
WHERE OrderID = 10248


SELECT 
o.OrderID, 
ContactName as CustomerName, 
FirstName + ' ' + LastName as EmployeeName, 
SUM (Quantity) as Quantity,
SUM (Quantity*UnitPrice) as Total
FROM Orders o 
INNER JOIN Customers c
ON o.CustomerID = c.CustomerID
INNER JOIN Employees e
ON o.EmployeeID = e.EmployeeID
INNER JOIN [Order Details] od
ON o.OrderID = od.OrderID
WHERE o.OrderID = 10248
GROUP BY o.OrderID, ContactName, FirstName + ' ' + LastName

-- LUEGO DE CREAR LA VISTA PUEDO CONSULTAR LO SIGUIENTE POR EJEMPLO
SELECT Total FROM OrderDetail
WHERE OrderID = 10248