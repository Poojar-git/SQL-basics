CREATE DATABASE OnlineStoreDB;
GO

USE OnlineStoreDB;
GO

CREATE TABLE Customers
(
    CustomerID INT PRIMARY KEY,
    CustomerName NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) UNIQUE,
    Phone VARCHAR(15),
    City NVARCHAR(50),
    RegistrationDate DATE
);
CREATE TABLE Categories
(
    CategoryID INT PRIMARY KEY,
    CategoryName NVARCHAR(50) NOT NULL
);
CREATE TABLE Products
(
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT CHECK(Stock >= 0),
    CategoryID INT,

    CONSTRAINT FK_Product_Category
    FOREIGN KEY(CategoryID)
    REFERENCES Categories(CategoryID)
);
CREATE INDEX IX_Product_Name
ON Products(ProductName);
