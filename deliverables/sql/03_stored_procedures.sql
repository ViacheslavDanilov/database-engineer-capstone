USE LittleLemonDB;

DROP PROCEDURE IF EXISTS GetMaxQuantity;
DELIMITER $$
CREATE PROCEDURE GetMaxQuantity()
BEGIN
  SELECT MAX(Quantity) AS MaxQuantity
  FROM Orders;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS ManageBooking;
DELIMITER $$
CREATE PROCEDURE ManageBooking(
  IN p_booking_id INT,
  IN p_customer_id INT,
  IN p_booking_date DATE,
  IN p_table_number INT
)
BEGIN
  DECLARE v_booking_count INT DEFAULT 0;

  START TRANSACTION;

  SELECT COUNT(*) INTO v_booking_count
  FROM Bookings
  WHERE BookingDate = p_booking_date
    AND TableNumber = p_table_number
    AND BookingID <> p_booking_id;

  IF v_booking_count > 0 THEN
    ROLLBACK;
    SELECT CONCAT('Table ', p_table_number, ' is already booked - booking cancelled') AS BookingStatus;
  ELSE
    INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID)
    VALUES (p_booking_id, p_booking_date, p_table_number, p_customer_id)
    ON DUPLICATE KEY UPDATE
      BookingDate = VALUES(BookingDate),
      TableNumber = VALUES(TableNumber),
      CustomerID = VALUES(CustomerID);

    COMMIT;
    SELECT CONCAT('Booking ', p_booking_id, ' saved successfully') AS BookingStatus;
  END IF;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS AddBooking;
DELIMITER $$
CREATE PROCEDURE AddBooking(
  IN p_booking_id INT,
  IN p_customer_id INT,
  IN p_booking_date DATE,
  IN p_table_number INT
)
BEGIN
  INSERT INTO Bookings (BookingID, BookingDate, TableNumber, CustomerID)
  VALUES (p_booking_id, p_booking_date, p_table_number, p_customer_id);

  SELECT 'New booking added' AS Confirmation;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS UpdateBooking;
DELIMITER $$
CREATE PROCEDURE UpdateBooking(
  IN p_booking_id INT,
  IN p_booking_date DATE
)
BEGIN
  UPDATE Bookings
  SET BookingDate = p_booking_date
  WHERE BookingID = p_booking_id;

  IF ROW_COUNT() > 0 THEN
    SELECT CONCAT('Booking ', p_booking_id, ' updated') AS Confirmation;
  ELSE
    SELECT CONCAT('Booking ', p_booking_id, ' not found') AS Confirmation;
  END IF;
END $$
DELIMITER ;

DROP PROCEDURE IF EXISTS CancelBooking;
DELIMITER $$
CREATE PROCEDURE CancelBooking(
  IN p_booking_id INT
)
BEGIN
  DELETE FROM Bookings
  WHERE BookingID = p_booking_id;

  IF ROW_COUNT() > 0 THEN
    SELECT CONCAT('Booking ', p_booking_id, ' cancelled') AS Confirmation;
  ELSE
    SELECT CONCAT('Booking ', p_booking_id, ' not found') AS Confirmation;
  END IF;
END $$
DELIMITER ;
