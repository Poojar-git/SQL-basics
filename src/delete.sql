-- View current customers
SELECT * FROM Customers;

-- Delete one customer
DELETE FROM Customers
WHERE CustomerID = 5;

-- Verify
SELECT * FROM Customers;

-- Delete customers from Mumbai
DELETE FROM Customers
WHERE City = 'Mumbai';

-- Verify
SELECT * FROM Customers;

-- Delete orders placed by Rahul
DELETE O
FROM Orders O
INNER JOIN Customers C
ON O.CustomerID = C.CustomerID
WHERE C.CustomerName = 'Rahul';

-- Verify
SELECT * FROM Orders;

-- Create a temporary table for testing
CREATE TABLE TempCustomers
(
    CustomerID INT,
    CustomerName NVARCHAR(100)
);

INSERT INTO TempCustomers
VALUES
(1, 'Test1'),
(2, 'Test2'),
(3, 'Test3');

-- Delete all rows
DELETE FROM TempCustomers;

-- Verify
SELECT * FROM TempCustomers;
