ALTER TABLE Products
ADD Brand NVARCHAR(50);
ALTER TABLE Products
ADD
ManufactureDate DATE,
WarrantyYears INT;
SELECT * FROM Products;
ALTER TABLE Products
ALTER COLUMN Brand NVARCHAR(100);
ALTER TABLE Products
ALTER COLUMN Price DECIMAL(15,2);
ALTER TABLE Products
ALTER COLUMN Brand NVARCHAR(100) NOT NULL;
ALTER TABLE Products
DROP COLUMN WarrantyYears;
ALTER TABLE Products
DROP COLUMN
ManufactureDate,
Brand;
EXEC sp_rename
'Products',
'Inventory';
EXEC sp_rename
'Inventory',
'Products';
EXEC sp_rename
'Customers.CustomerName',
'FullName',
'COLUMN';
ALTER TABLE Products
ADD CONSTRAINT CHK_Product_Stock
CHECK(Stock>=0);
ALTER TABLE Customers
ADD CONSTRAINT UQ_Customers_Phone
UNIQUE(Phone);
ALTER TABLE Customers
ADD CONSTRAINT DF_Country
DEFAULT 'India'
FOR City;
ALTER TABLE Products
DROP CONSTRAINT CHK_Product_Stock;
ALTER TABLE Products
ADD CONSTRAINT FK_Product_Category
FOREIGN KEY(CategoryID)
REFERENCES Categories(CategoryID);
