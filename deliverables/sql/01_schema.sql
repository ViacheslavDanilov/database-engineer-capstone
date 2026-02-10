DROP DATABASE IF EXISTS LittleLemonDB;
CREATE DATABASE LittleLemonDB;
USE LittleLemonDB;

CREATE TABLE Customers (
  CustomerID INT PRIMARY KEY,
  FirstName VARCHAR(50) NOT NULL,
  LastName VARCHAR(50) NOT NULL,
  Phone VARCHAR(20) NOT NULL,
  Email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Bookings (
  BookingID INT PRIMARY KEY,
  BookingDate DATE NOT NULL,
  TableNumber INT NOT NULL,
  CustomerID INT NOT NULL,
  CONSTRAINT fk_bookings_customer
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  CONSTRAINT uk_booking_slot UNIQUE (BookingDate, TableNumber),
  CONSTRAINT chk_table_number CHECK (TableNumber > 0)
);

CREATE TABLE Orders (
  OrderID INT PRIMARY KEY,
  OrderDate DATE NOT NULL,
  Quantity INT NOT NULL,
  TotalCost DECIMAL(10, 2) NOT NULL,
  CustomerID INT NOT NULL,
  CONSTRAINT fk_orders_customer
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  CONSTRAINT chk_order_quantity CHECK (Quantity > 0),
  CONSTRAINT chk_total_cost CHECK (TotalCost >= 0)
);
