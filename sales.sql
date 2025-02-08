CREATE DATABASE SalesDB;
USE SalesDB;
-- Customers Table
CREATE TABLE customer(
    CustomerID INT PRIMARY KEY IDENTITY(1,1),
    CustomerName VARCHAR(255),
    Email VARCHAR(255),
    Phone VARCHAR(20),
    Region VARCHAR(100)
);

-- Products Table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY IDENTITY(1,1),
    ProductName VARCHAR(255),
    Category VARCHAR(100),
    UnitPrice DECIMAL(10,2)
);

-- Sales Table 
CREATE TABLE Sales (
    SalesID INT PRIMARY KEY IDENTITY(1,1),
    OrderDate DATE,
    ProductID INT,
    CustomerID INT,
    QuantitySold INT,
    UnitPrice DECIMAL(10,2),
    TotalSales DECIMAL(10,2),
    Region VARCHAR(100),
    FOREIGN KEY (ProductID) REFERENCES Product(ProductID),
    FOREIGN KEY (CustomerID) REFERENCES Customer(CustomerID)
);

-- Insert Sample Data into Customers
INSERT INTO Customer (CustomerName, Email, Phone, Region) VALUES
('Alice Johnson', 'alice@example.com', '123-456-7890', 'North America'),
('John Smith', 'john@example.com', '234-567-8901', 'Europe'),
('Maria Lopez', 'maria@example.com', '345-678-9012', 'Asia'),
('David Lee', 'david@example.com', '456-789-0123', 'South America');

-- Insert Sample Data into Products
INSERT INTO Product (ProductName, Category, UnitPrice) VALUES
('Laptop', 'Electronics', 1200.50),
('Mobile Phone', 'Electronics', 800.75),
('Headphones', 'Accessories', 150.20),
('Tablet', 'Electronics', 500.30);

-- Insert Sample Data into Sales
INSERT INTO Sales (OrderDate, ProductID, CustomerID, QuantitySold, UnitPrice, TotalSales, Region) VALUES
('2024-01-10', 1, 1, 3, 1200.50, 3 * 1200.50, 'North America'),
('2024-02-05', 2, 2, 5, 800.75, 5 * 800.75, 'Europe'),
('2024-03-12', 3, 3, 10, 150.20, 10 * 150.20, 'Asia'),
('2024-04-20', 4, 4, 2, 500.30, 2 * 500.30, 'South America');


