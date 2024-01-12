-- Transakcja kod
USE zad_prog_2;

BEGIN TRANSACTION;

-- Utworzenie nowego zamówienia
INSERT INTO Orders (OrderID, CustomerId, DeliveryId, EmployeeId, OrderDate, DueDate, Shipping_address, Shipping_city, Shipping_postcode, Order_Weight, Total_Order_price, Order_Status, Wrapping, Free_Delivery)
VALUES (21, 3, 2,3, '2024-01-12T08:12:35Z','2023-01-23T08:12:35Z', 'ul. Weso³a 8', 'Warszawa',65432, 5.2, 0, 'Open','Karton', 'Nie');

-- Dodanie szczegó³ów zamówienia
INSERT INTO Orders_Details (OrderID, ID_Products, Quantity, Sub_total)
VALUES (21, 3, 2, 1019.9);

-- Dodanie Dostawy
INSERT INTO Delivery (DeliveryID,CarrierID, Delivery_Type, Delivery_Status, Delivery_Cost)
VALUES (21,2,'Standard', 'In progress', 30.00);


COMMIT TRANSACTION;
