-- 1. Update one product
UPDATE Products
SET Price = 88000
WHERE ProductID = 1001;

-- Verify
SELECT * FROM Products WHERE ProductID = 1001;

-- 2. Update multiple columns
UPDATE Products
SET Price = 91000,
    Stock = 25
WHERE ProductID = 1001;

-- Verify
SELECT * FROM Products WHERE ProductID = 1001;

-- 3. Increase all laptop prices by 10%
UPDATE P
SET P.Price = P.Price * 1.10
FROM Products P
INNER JOIN Categories C
ON P.CategoryID = C.CategoryID
WHERE C.CategoryName = 'Laptops';

-- Verify
SELECT P.ProductName, P.Price, C.CategoryName
FROM Products P
INNER JOIN Categories C
ON P.CategoryID = C.CategoryID
WHERE C.CategoryName = 'Laptops';

-- 4. Update customers from Bangalore
UPDATE Customers
SET City = 'Bengaluru'
WHERE City = 'Bangalore';

-- Verify
SELECT * FROM Customers WHERE City = 'Bengaluru';
