Create database Management
On primary(name='Manage',filename='D:\ApacheNetBeansV2\BookstoreManagement\Manage.mdf',size=1MB,maxsize=3MB,filegrowth=2MB)
Log on(name='Manage_log',filename='D:\ApacheNetBeansV2\BookstoreManagement\Manage_log.ldf',size=1MB,maxsize=3MB,filegrowth=2MB)
------------------
Use Management;

CREATE TABLE Customer (
    Cus_ID INT PRIMARY KEY,
    Cus_Name VARCHAR(100) NOT NULL,
    Cus_Address VARCHAR(50) NOT NULL,
    Cus_PN VARCHAR(20) NOT NULL,
    Cus_Email VARCHAR(50) NOT NULL
);

CREATE TABLE Staff (
    Staff_ID INT PRIMARY KEY,
    Staff_Name VARCHAR(100) NOT NULL,
    Staff_Address VARCHAR(50) NOT NULL,
    Staff_PN VARCHAR(20) NOT NULL,
    Staff_Email VARCHAR(50) NOT NULL
);

CREATE TABLE Admin (
    Admin_ID INT PRIMARY KEY,
    Admin_Name VARCHAR(100) NOT NULL,
    Admin_Address VARCHAR(50) NOT NULL,
    Admin_PN VARCHAR(20) NOT NULL,
    Admin_Email VARCHAR(50) NOT NULL
);

CREATE TABLE Cashier (
    Cashier_ID INT PRIMARY KEY,
    Cashier_Name VARCHAR(100) NOT NULL,
    Cashier_Address VARCHAR(50) NOT NULL,
    Cashier_PN VARCHAR(20) NOT NULL,
    Cashier_Email VARCHAR(50) NOT NULL
);

CREATE TABLE Book (
    Book_ID INT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    ISBN INT NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    Description VARCHAR(100) NOT NULL
);

CREATE TABLE Bill (
    Bill_ID INT PRIMARY KEY,
    Bill_Date DATETIME NOT NULL,
    Cus_ID INT,
    Total DECIMAL NOT NULL,
    Price DECIMAL NOT NULL,
    FOREIGN KEY (Cus_ID) REFERENCES Customer(Cus_ID)
);

CREATE TABLE Inventory (
    Inventory_ID INT PRIMARY KEY,
    Book_ID INT,
    Quantity INT NOT NULL,
    FOREIGN KEY (Book_ID) REFERENCES Book(Book_ID)
);

CREATE TABLE [Order] (
    Order_ID INT PRIMARY KEY,
    Order_Name VARCHAR(100) NOT NULL,
    Order_Address VARCHAR(100) NOT NULL
);

---------------------

-- Insert into Customer table
INSERT INTO Customer (Cus_ID, Cus_Name, Cus_Address, Cus_PN, Cus_Email)
VALUES
    (1, 'John Doe', '123 Main St', '555-1234', 'john.doe@example.com'),
    (2, 'Jane Smith', '456 Oak St', '555-5678', 'jane.smith@example.com');

-- Insert into Staff table
INSERT INTO Staff (Staff_ID, Staff_Name, Staff_Address, Staff_PN, Staff_Email)
VALUES
    (1, 'Alice Johnson', '789 Elm St', '555-9876', 'alice.johnson@example.com'),
    (2, 'Bob Wilson', '101 Pine St', '555-5432', 'bob.wilson@example.com');

-- Insert into Admin table
INSERT INTO Admin (Admin_ID, Admin_Name, Admin_Address, Admin_PN, Admin_Email)
VALUES
    (1, 'Eva Brown', '111 Cedar St', '555-1111', 'eva.brown@example.com'),
    (2, 'David Lee', '222 Birch St', '555-2222', 'david.lee@example.com');

-- Insert into Cashier table
INSERT INTO Cashier (Cashier_ID, Cashier_Name, Cashier_Address, Cashier_PN, Cashier_Email)
VALUES
    (1, 'Grace Miller', '333 Maple St', '555-3333', 'grace.miller@example.com'),
    (2, 'Frank Adams', '444 Walnut St', '555-4444', 'frank.adams@example.com');

-- Insert into Book table
INSERT INTO Book (Book_ID, Title, ISBN, Genre, Description)
VALUES
    (1, 'The Great Gatsby', 123456789, 'Fiction', 'A classic novel by F. Scott Fitzgerald'),
    (2, 'To Kill a Mockingbird', 987654321, 'Fiction', 'A novel by Harper Lee');

-- Insert into Bill table
INSERT INTO Bill (Bill_ID, Bill_Date, Cus_ID, Total, Price)
VALUES
    (1, '2023-11-25 12:00:00', 1, 100.00, 50.00),
    (2, '2023-11-26 14:30:00', 2, 75.50, 25.25);

-- Insert into Inventory table
INSERT INTO Inventory (Inventory_ID, Book_ID, Quantity)
VALUES
    (1, 1, 10),
    (2, 2, 15);

-- Insert into Order table
INSERT INTO [Order] (Order_ID, Order_Name, Order_Address)
VALUES
    (1, 'Online Order 1', '123 Online St'),
    (2, 'In-Store Order 1', '456 Brick St');