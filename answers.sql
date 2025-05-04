-- NORMALIZATION
-- Question 1 Achieving 1NF (First Normal Form)

-- Creating a table to store the data in 1NF
CREATE TABLE OrderProducts (
    OrderID INT,
    CustomerName VARCHAR(255),
    Product VARCHAR(255)
);

-- Inserting the data into the table
INSERT INTO OrderProducts (OrderID, CustomerName, Product) VALUES
(101, 'John Doe', 'Laptop'),
(101, 'John Doe', 'Mouse'),
(102, 'Jane Smith', 'Tablet'),
(102, 'Jane Smith', 'Keyboard'),
(102, 'Jane Smith', 'Mouse'),
(103, 'Emily Clark', 'Phone');

-- Querying the table to see the data in 1NF
SELECT * FROM OrderProducts;


-- Question 2 Achieving 2NF (Second Normal Form)
-- Creating a table to store the data in 2NF
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(255)
);

-- Inserting the data into the Orders table
INSERT INTO Orders (OrderID, CustomerName) VALUES
(101, 'John Doe'),
(102, 'Jane Smith'),
(103, 'Emily Clark');


--Creating OrderProducts table to store the product details
CREATE TABLE OrderProducts (
    OrderID INT,
    Product VARCHAR(255),
    Quantity INT,
    PRIMARY KEY (OrderID, Product),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID)

    -- Inserting the data into the OrderProducts table
    INSERT INTO OrderProducts (OrderID, Product, Quantity) VALUES
(101, 'Laptop', 2),
(101, 'Mouse', 1),
(102, 'Tablet', 3),
(102, 'Keyboard', 1),
(102, 'Mouse', 2),
(103, 'Phone', 1);

);

-- Querying the tables to see the data in 2NFSELECT * FROM Orders;
SELECT * FROM Orders;
SELECT * FROM OrderProducts;



