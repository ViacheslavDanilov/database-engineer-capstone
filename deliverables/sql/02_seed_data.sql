USE LittleLemonDB;

SET FOREIGN_KEY_CHECKS = 0;
TRUNCATE TABLE Orders;
TRUNCATE TABLE Bookings;
TRUNCATE TABLE Customers;
SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO Customers (CustomerID, FirstName, LastName, Phone, Email) VALUES
  (1, 'Anna', 'Miller', '+1-202-555-0101', 'anna.miller@example.com'),
  (2, 'Brian', 'Clark', '+1-202-555-0102', 'brian.clark@example.com'),
  (3, 'Carla', 'Lopez', '+1-202-555-0103', 'carla.lopez@example.com'),
  (4, 'David', 'Nguyen', '+1-202-555-0104', 'david.nguyen@example.com');

INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID) VALUES
  (1, '2022-10-10', 5, 1),
  (2, '2022-11-12', 3, 3),
  (3, '2022-10-11', 2, 2),
  (4, '2022-10-13', 2, 1);

INSERT INTO Orders (OrderID, OrderDate, Quantity, TotalCost, CustomerID) VALUES
  (1, '2022-10-10', 1, 86.00, 1),
  (2, '2022-10-11', 2, 37.00, 2),
  (3, '2022-10-12', 2, 37.00, 2),
  (4, '2022-10-13', 3, 40.00, 3),
  (5, '2022-10-14', 1, 43.00, 4);
