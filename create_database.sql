CREATE DATABASE zad_prog_2;
go
USE zad_prog_2;



CREATE TABLE Locations(
    LocationID					INT PRIMARY KEY,
    Sector						NVARCHAR(50),			
    Shelf						NVARCHAR(50),			
    Palette						NVARCHAR(50),			
    levels							INT,				
    Capacity						INT,				 
	Unit_cap					NVARCHAR(20),			
);




CREATE TABLE Products (
	ID_Products						INT PRIMARY KEY,
	LocationID							INT,
	Name_							NVARCHAR(80),
	Brand							NVARCHAR(20),
	Group_							NVARCHAR(50),
	Description_					NVARCHAR(MAX),
	Country_Production				NVARCHAR(20),
	Price_								MONEY,
	Sell_Price							MONEY,
	Condition							INT,				
	Unit							NVARCHAR(20),			
	Start_Date_							DATE,				
	Update_Date_						DATE				
	FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);


CREATE TABLE Carrier(
	CarrierID					INT PRIMARY KEY,
	Carrier_Name				NVARCHAR(30),
	Carrier_Last_Name			NVARCHAR(30),
	Phone_Number				NVARCHAR(20),
	Registration_number			NVARCHAR(10),
	Car_model					NVARCHAR(40),
	Company						NVARCHAR(50),
	Rating							INT
);


CREATE TABLE Delivery (
    DeliveryID					INT PRIMARY KEY,
	CarrierID						INT,
    DeliveryDate				DATETIMEOFFSET,			
	Delivery_Type				NVARCHAR(20),			
	Delivery_Status				NVARCHAR(20),		
	Delivery_Cost					MONEY,				
	FOREIGN KEY (CarrierID) REFERENCES Carrier(CarrierID)
);




CREATE TABLE Customers (
    CustomerID					INT PRIMARY KEY,
    First_Name					NVARCHAR(50),
    Last_Name					NVARCHAR(50),
    Email						NVARCHAR(50),
    Phone_number				NVARCHAR(20),
    Customer_Address			NVARCHAR(100),
	City						NVARCHAR(30),
	PostCode						INT,
	Customer_Type				NVARCHAR(10)			
);


CREATE TABLE Employees_Transport (
    TransportID					INT PRIMARY KEY,
    Vehicle_type				NVARCHAR(50),
	Vehicle_brand				NVARCHAR(30),
    Vehicle_plate_number		NVARCHAR(20)
);




CREATE TABLE Employees (
    EmployeeID					INT PRIMARY KEY,
	TransportID						INT,
    First_Name					NVARCHAR(50),
    Last_Name					NVARCHAR(50),
	Birthday_Date					DATE,
    Email						NVARCHAR(50),
    Phone_number				NVARCHAR(20),
	Adress						NVARCHAR(100),
	City						NVARCHAR(30),
	PostCode						INT,
	Work_distance					FLOAT,			
    Hire_Date						DATE,
    Occupation					NVARCHAR(100),
	Wage							MONEY,
	HolidaysDate_Start				DATE,
	HolidaysDate_End				DATE,
	Employee_type				NVARCHAR(10),			
	FOREIGN KEY (TransportID) REFERENCES Employees_Transport(TransportID)
);



CREATE TABLE Orders (
    OrderId						INT PRIMARY KEY,
    CustomerId						INT,
	DeliveryId						INT,	
	EmployeeId						INT,
    OrderDate					DATETIMEOFFSET,			
	DueDate						DATETIMEOFFSET,			
	ShippedDate					DATETIMEOFFSET,			
	Shipping_address			VARCHAR(100),
	Shipping_city				NVARCHAR(30),
	Shipping_postcode				INT,
	Order_Weight					FLOAT,				
    Total_Order_price				MONEY,				
    Order_Status				VARCHAR(10),			
	Wrapping					NVARCHAR(20),			
	Free_Delivery				NVARCHAR(3),			
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
	FOREIGN KEY (DeliveryID) REFERENCES Delivery(DeliveryID)
);




CREATE TABLE Orders_Details (
	 OrderID					INT,
	 ID_Products				INT,
	 Quantity					INT,
	 Sub_total					MONEY
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
	FOREIGN KEY (ID_Products) REFERENCES Products(ID_Products)
);


