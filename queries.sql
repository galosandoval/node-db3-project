-- Multi-Table Query Practice

-- Display the ProductName and CategoryName for all products in the database. Shows 77 records.
SELECT Product.ProductName, category.CategoryName
FROM Product
JOIN category on product.CategoryId = category.Id;

-- Display the order Id and shipper CompanyName for all orders placed before August 9 2012. Shows 429 records.
SELECT [order].id, shipper.CompanyName, [order].OrderDate
FROM [Order]
JOIN shipper 
  ON shipper.Id = [order].ShipVia
WHERE [order].OrderDate 
  BETWEEN [2012-07-04] AND [2012-08-09]
ORDER BY [order].OrderDate
-- Display the name and quantity of the products ordered in order with Id 10251. Sort by ProductName. Shows 3 records.
SELECT product.ProductName, OrderDetail.Quantity
FROM OrderDetail
JOIN Product 
  ON OrderDetail.ProductId = Product.Id
WHERE OrderDetail.OrderId = 10252
-- Display the OrderID, Customer's Company Name and the employee's LastName for every order. All columns should be labeled clearly. Displays 16,789 records.
SELECT [Order].Id, Customer.CompanyName AS Customer, Employee.LastName AS Contact
FROM [Order]
JOIN Customer ON Customer.Id = [Order].CustomerId
JOIN Employee ON Employee.Id = [Order].EmployeeId