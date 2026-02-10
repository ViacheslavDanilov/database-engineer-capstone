USE LittleLemonDB;

CALL GetMaxQuantity();

CALL AddBooking(10, 3, '2022-12-30', 4);

CALL UpdateBooking(10, '2022-12-31');

CALL ManageBooking(11, 2, '2022-12-30', 4);

CALL CancelBooking(10);