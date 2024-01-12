--- Indeksy:
USE zad_prog_2;

-- Poni¿ej indeksy na tabeli Locations:

CREATE INDEX IND_Locations_Sector ON Locations(Sector);

-- Poni¿ej indeksy na tabeli Products:

CREATE INDEX IND_Products_LocationID ON Products(LocationID);

CREATE INDEX IND_Products_Brand ON Products(Brand);

-- Poni¿ej indeksy na tabeli Carrier:

CREATE INDEX IND_Carrier_Name ON Carrier(Carrier_Name);

CREATE INDEX IND_Carrier_Registration_number ON Carrier(Registration_number);

-- Poni¿ej indeksy na tabeli Carrier:

CREATE INDEX IND_Delivery_CarrierID ON Delivery(CarrierID);

CREATE INDEX IND_Delivery_Delivery_Type ON Delivery(Delivery_Type);

CREATE INDEX IND_Delivery_Delivery_Status ON Delivery(Delivery_Status);

-- Poni¿ej indeksy na tabeli Customers:

CREATE INDEX IND_Customers_City ON Customers(City);

-- Poni¿ej indeksy na tabeli Employees_Transport:

CREATE INDEX IND_Vehicle_type ON Employees_Transport(Vehicle_type);

CREATE INDEX IND_Employees_TransportID ON Employees(TransportID);

-- Poni¿ej indeksy na tabeli Orders:

CREATE INDEX IND_Orders_EmployeeID ON Orders(EmployeeID);

CREATE INDEX IND_Orders_DeliveryID ON Orders(DeliveryID);

CREATE INDEX IND_DueDate ON Orders(DueDate);

-- Poni¿ej indeksy na tabeli Orders_Details:

CREATE INDEX IND_Sub_total ON Orders_Details(Sub_total);


