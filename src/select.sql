-- 1. Display all products
SELECT *
FROM Products;

-- 2. Display product name and price
SELECT ProductName, Price
FROM Products;

-- 3. Display unique customer cities
SELECT DISTINCT City
FROM Customers;

-- 4. Products costing more than ₹50,000
SELECT *
FROM Products
WHERE Price > 50000;

-- 5. Products priced between ₹50,000 and ₹90,000
SELECT *
FROM Products
WHERE Price BETWEEN 50000 AND 90000;

-- 6. Customers from Chennai or Mumbai
SELECT *
FROM Customers
WHERE City IN ('Chennai', 'Mumbai');

-- 7. Products starting with 'S'
SELECT *
FROM Products
WHERE ProductName LIKE 'S%';

-- 8. Products sorted by highest price
SELECT *
FROM Products
ORDER BY Price DESC;

-- 9. Top 3 most expensive products
SELECT TOP 3 *
FROM Products
ORDER BY Price DESC;

-- 10. Pagination (skip 2 rows, fetch next 3)
SELECT *
FROM Products
ORDER BY ProductID
OFFSET 2 ROWS
FETCH NEXT 3 ROWS ONLY;
