CREATE DATABASE Market;
GO
USE Market;
GO
CREATE TABLE Products (
    Id INT PRIMARY KEY,
    Name VARCHAR(255),
    Price DECIMAL(10,2)
);

GO
ALTER TABLE Products ADD BrandName VARCHAR(255);

GO
INSERT INTO Products (Id, Name, Price, BrandName) VALUES
    (1, 'Product A', 10.99, 'Brand 1'),
    (2, 'Product B', 15.99, 'Brand 2'),
    (3, 'Product C', 20.99, 'Brand 3'),
    (4, 'Product D', 5.99, 'Brand 1'),
    (5, 'Product E', 9.99, 'Brand 2'),
    (6, 'Product F', 12.99, 'Brand 3'),
    (7, 'Product G', 17.99, 'Brand 1'),
    (8, 'Product H', 22.99, 'Brand 2'),
    (9, 'Product I', 8.99, 'Brand 3'),
    

	GO
SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products);

GO
SELECT * FROM Products WHERE Price > 8;

GO
SELECT * FROM Products WHERE LENGTH(BrandName) > 5;

GO
SELECT * FROM Products WHERE BrandName LIKE '%a%';

UPDATE Products
SET Price=24.3  WHERE Id=3