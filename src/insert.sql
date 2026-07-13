-- Insert one customer
INSERT INTO Customers
(CustomerID, CustomerName, Email, Phone, City, RegistrationDate)
VALUES
(10, 'Meera', 'meera@gmail.com', '9876543220', 'Pune', '2026-07-01');

-- Insert multiple customers
INSERT INTO Customers
(CustomerID, CustomerName, Email, Phone, City, RegistrationDate)
VALUES
(11, 'Vikram', 'vikram@gmail.com', '9876543221', 'Kolkata', '2026-07-02'),
(12, 'Asha', 'asha@gmail.com', '9876543222', 'Jaipur', '2026-07-03');

-- Create a backup table
CREATE TABLE CustomersBackup
(
    CustomerID INT,
    CustomerName NVARCHAR(100),
    Email NVARCHAR(100),
    Phone VARCHAR(15),
    City NVARCHAR(50),
    RegistrationDate DATE
);

-- Copy all customers
INSERT INTO CustomersBackup
SELECT *
FROM Customers;

-- Verify
SELECT * FROM CustomersBackup;
