DROP INDEX IX_Product_Name
ON Products;
DROP TABLE Delivery;
DROP TABLE Payments,
           OrderItems;
USE master;
GO

DROP DATABASE OnlineStoreDB;
DROP TABLE Products;
