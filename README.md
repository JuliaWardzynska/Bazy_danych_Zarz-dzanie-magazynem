# Bazy danych: Zarządzanie magazynem
Repozytorium "Zarządzanie Magazynem" stanowi realizację zadania programistycznego numer 2, którego celem jest stworzenie bazy danych.

# Zarządzanie magazynem Wstęp:
Niniejsza baza danych ma na celu ułatwienia zarządzania zapasami magazynowymi oraz precyzyjnego monitorowania czasu dostaw przesyłek. Jej głównym celem jest możliwość monitorowania zapasów magazynu i śledzenia czasu dostawy/wysyłki towarów.

Dane przechowywane w tej bazie obejmują informacje o produktach, lokalizacjach na magazynie, zamówieniach, klientach, pracownikach, dostawach i przewoźnikach

# Tabele w bazie danych:
 
## Tabela Products zawiera szczegółowe informacje o produktach, takie jak:
- ID lokalizacji na magazynie.
- Nazwę produktu, a także jej marki.
- Kategorie produktu wraz z opisem.
- Kraj produkcji produktu.
- Cena kupna oraz cena sprzedaży.
- Dostępność produktu na magazynie - ilość.
- Data wprowadzenia przedmiotu do systemu.
- Data zaktualizowania towaru (tzn. jej dostępności).

## Tabela Locations zawiera informacje o lokalizacjach magazynu,takie jak:
- Numer sektora magazynu.
- Numer półki.
- Numer palety.
- Numer piętra.
- Pojemności/Ilości jaka dana lokalizacja może pomieścić

## Tabela Orders Details zawiera dodatkowe informacje o zamówieniach, takie jak:
- ID zamówienia.
- ID produktu
- Ilość danego produktu w zamówieniu.
- Kwote za ilość danego produktu w zamówieniu.

## Tabela Orders zawiera szczegółowe informacje o zamówieniach, takie jak:
- ID zamówienia, klienta, dostawy oraz pracownika.
- Date wejścia zamówienia do systemu.
- Wyznaczony termin dostarczenia zamówienia.
- Date wysyłki zamówienia.
- Informacje dotyczące adresu dostawy : ulica, miasto oraz kod pocztowy.
- Wagę zamówienia.
- Cena całego zamówienia.
- Status zamówienia.
- Sposób pakowania zamówienia: prezentowy czy zwykły karton.
- Dane czy dostawa zamówienia jest płatna.

Kolumna Total Order price została stworzona za pomocą poniższego kodu:
```sql
UPDATE Orders
SET Total_Order_price = (
SELECT SUM ( Sub_total )
FROM Orders_Details
WHERE Orders . OrderID = Orders_Details . OrderID
);
```

Kolumna Free delivery została stworzona za pomocą poniższego kodu, który uznaje dostawe za
darmową, jeśli kwota zamówienia przekracza 2000 tyś.

```sql
UPDATE Orders
SET Free_delivery = ( CASE WHEN Total_Order_price > 2000 THEN 'Yes ' ELSE 'No '
END );

```

## Tabela Customers zawiera szczegółowe informacje o klientach, takie jak:
- Imię i Nazwisko klienta.
- Email oraz numer telefonu klienta.
- Pełny adres zamieszkania klienta.
- Typ klienta: stały lub nowy.

## Tabela Employees zawiera szczegółowe informacje o pracownikach. W szczgeólności oprócz ich danych zamieszkania znajduje się również wiedza o:
- odległości z pracy do domu,
- data zatrudnienia,
- wykonywany zawód,
- miesięczne wynagrodzenie,
- data rozpoczęcia i zakończenia urlopu,
- typ pracownika: student czy osoba dorosła.

## Tabela Employees Transport zawiera informacje o środkach transportu pracowników.Tabela zawiera:
- Typ pojazdu,
- marke pojazdu,
- numer rejestracyjny pojazdu.

## Tabela Delivery zawiera szczegółowe informacje o dostawach, takie jak:

- Data dostarczenia zamówienia,
- typ przesyłki: ekspresowa czy standardowa,
- status przesyłki,
- koszt przesyłki.

## Tabela Carrier zawiera szczegółowe informacje o kurierach,  takie jak:

- Imie i nazwisko kuriera,
- numer telefonu kuriera,
- informacje o pojeździe kuriera,
- ocena kuriera

# Stworzenie bazy danych za pomocą poniższego kodu:
```sql
CREATE DATABASE zad_prog_2;
go
USE zad_prog_2;

```
# Stworzenie wyżej przytoczonych tabel w bazie danych za pomocą poniższych kodów:
## Tabela Locations:

```sql
CREATE TABLE Locations(
    LocationID					INT PRIMARY KEY,
    Sector					NVARCHAR(50),			
    Shelf					NVARCHAR(50),			
    Palette					NVARCHAR(50),			
    levels					INT,				
    Capacity					INT,				
    Unit_cap					NVARCHAR(20),			
);
```

## Tabela Products:

```sql
CREATE TABLE Products (
	ID_Products						INT PRIMARY KEY,
	LocationID						INT,
	Name_							NVARCHAR(80),
	Brand							NVARCHAR(20),
	Group_							NVARCHAR(50),
	Description_						NVARCHAR(MAX),
	Country_Production					NVARCHAR(20),
	Price_							MONEY,
	Sell_Price						MONEY,
	Condition						INT,				
	Unit							NVARCHAR(20),			
	Start_Date_						DATE,				
	Update_Date_						DATE				
	FOREIGN KEY (LocationID) REFERENCES Locations(LocationID)
);

```

## Tabela Carrier:


```sql
CREATE TABLE Carrier(
	CarrierID					INT PRIMARY KEY,
	Carrier_Name				  	NVARCHAR(30),
	Carrier_Last_Name		  		NVARCHAR(30),
	Phone_Number				  	NVARCHAR(20),
	Registration_number	  			NVARCHAR(10),
	Car_model					NVARCHAR(40),
	Company						NVARCHAR(50),
	Rating						INT
);

```


## Tabela Delivery:


```sql
CREATE TABLE Delivery (
    DeliveryID					  INT PRIMARY KEY,
	  CarrierID				  INT,
    DeliveryDate				  DATETIMEOFFSET,			
	  Delivery_Type				  NVARCHAR(20),			
	  Delivery_Status			  NVARCHAR(20),			
	  Delivery_Cost				  MONEY,				
	  FOREIGN KEY (CarrierID) REFERENCES Carrier(CarrierID)
);
```

## Tabela Customers:


```sql
CREATE TABLE Customers (
    CustomerID					INT PRIMARY KEY,
    First_Name					NVARCHAR(50),
    Last_Name					NVARCHAR(50),
    Email					NVARCHAR(50),
    Phone_number				NVARCHAR(20),
    Customer_Address				NVARCHAR(100),
    City					NVARCHAR(30),
    PostCode					INT,
    Customer_Type				NVARCHAR(10)			 
);

```


## Tabela Employees_Transport:


```sql
CREATE TABLE Employees_Transport (
    TransportID					    INT PRIMARY KEY,
    Vehicle_type				    NVARCHAR(50),
    Vehicle_brand				    NVARCHAR(30),
    Vehicle_plate_number			    NVARCHAR(20)
);

```


## Tabela Employees:


```sql
CREATE TABLE Employees (
    EmployeeID					  	INT PRIMARY KEY,
    TransportID						INT,
    First_Name					  	NVARCHAR(50),
    Last_Name					    	NVARCHAR(50),
    Birthday_Date					DATE,
    Email						NVARCHAR(50),
    Phone_number				  	NVARCHAR(20),
    Adress						NVARCHAR(100),
    City						NVARCHAR(30),
    PostCode						INT,
    Work_distance					FLOAT,				
    Hire_Date						DATE,
    Occupation					  	NVARCHAR(100),
    Wage						MONEY,
    HolidaysDate_Start					DATE,
    HolidaysDate_End					DATE,
    Employee_type				  	NVARCHAR(10),			
    FOREIGN KEY (TransportID) REFERENCES Employees_Transport(TransportID)
);


```


## Tabela Orders:


```sql
CREATE TABLE Orders (
    OrderId						      INT PRIMARY KEY,
    CustomerId						      INT,
    DeliveryId						      INT,	
    EmployeeId					      	      INT,
    OrderDate					      	      DATETIMEOFFSET,			
    DueDate					              DATETIMEOFFSET,			
    ShippedDate					              DATETIMEOFFSET,			
    Shipping_address			                      VARCHAR(100),
    Shipping_city				    	      NVARCHAR(30),
    Shipping_postcode				              INT,
    Order_Weight					      FLOAT,				
    Total_Order_price		    			      MONEY,				
    Order_Status				    	      VARCHAR(10),			
    Wrapping					              NVARCHAR(20),			
    Free_Delivery				              NVARCHAR(3),			
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (DeliveryID) REFERENCES Delivery(DeliveryID)
);

```

## Tabela Orders_Details:


```sql
CREATE TABLE Orders_Details (
    OrderID					INT,
    ID_Products					INT,
    Quantity					INT,
    Sub_total					MONEY
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ID_Products) REFERENCES Products(ID_Products)
);

```

# Dodanie rekordów do powyższych tabel:
Dodawanie rekordów do powyższych tabel jest zawarte w pliku fake_data.sql, gdzie znajdują się przykładowe skrypty dodające/poprawiające rekordy. W pliku o nazwie "bazy danych 2" zawarte są szczegółowe informacje dotyczące określonych tabel (i ich kolumn) w bazie danych.

# Transakcja przetwarzania danych: 

```sql
BEGIN TRANSACTION;

-- Utworzenie nowego zamówienia
INSERT INTO Orders (OrderID, CustomerId, DeliveryId, EmployeeId, OrderDate, DueDate, Shipping_address, Shipping_city, Shipping_postcode, Order_Weight, Total_Order_price, Order_Status, Wrapping, Free_Delivery)
VALUES (21, 3, 2,3, '2024-01-12T08:12:35Z','2023-01-23T08:12:35Z', 'ul. Wesoła 8', 'Warszawa',65432, 5.2, 0, 'Open','Karton', 'Nie');

-- Dodanie szczegółów zamówienia
INSERT INTO Orders_Details (OrderID, ID_Products, Quantity, Sub_total)
VALUES (21, 3, 2, 1019.9);

-- Dodanie Dostawy
INSERT INTO Delivery (DeliveryID,CarrierID, Delivery_Type, Delivery_Status, Delivery_Cost)
VALUES (21,2,'Standard', 'In progress', 30.00);


COMMIT TRANSACTION;
```

# Indeksy w bazie danych:

```sql
-- Poniżej indeksy na tabeli Locations:

CREATE INDEX IND_Locations_Sector ON Locations(Sector);

-- Poniżej indeksy na tabeli Products:

CREATE INDEX IND_Products_LocationID ON Products(LocationID);

CREATE INDEX IND_Products_Brand ON Products(Brand);

-- Poniżej indeksy na tabeli Carrier:

CREATE INDEX IND_Carrier_Name ON Carrier(Carrier_Name);

CREATE INDEX IND_Carrier_Registration_number ON Carrier(Registration_number);

-- Poniżej indeksy na tabeli Carrier:

CREATE INDEX IND_Delivery_CarrierID ON Delivery(CarrierID);

CREATE INDEX IND_Delivery_Delivery_Type ON Delivery(Delivery_Type);

CREATE INDEX IND_Delivery_Delivery_Status ON Delivery(Delivery_Status);

-- Poniżej indeksy na tabeli Customers:

CREATE INDEX IND_Customers_City ON Customers(City);

-- Poniżej indeksy na tabeli Employees_Transport:

CREATE INDEX IND_Vehicle_type ON Employees_Transport(Vehicle_type);

CREATE INDEX IND_Employees_TransportID ON Employees(TransportID);

-- Poniżej indeksy na tabeli Orders:

CREATE INDEX IND_Orders_EmployeeID ON Orders(EmployeeID);

CREATE INDEX IND_Orders_DeliveryID ON Orders(DeliveryID);

CREATE INDEX IND_DueDate ON Orders(DueDate);

-- Poniżej indeksy na tabeli Orders_Details:

CREATE INDEX IND_Sub_total ON Orders_Details(Sub_total);

```

# Procedura składowana:

```sql
CREATE PROCEDURE Marka_przychód
    @MinPercentage FLOAT
AS
BEGIN
    WITH Profit (Total_Profit) AS (
        SELECT SUM(OD.Quantity * (P.Sell_Price - P.Price_)) AS Total_Profit
        FROM Orders_Details OD
        JOIN Products P ON P.ID_Products = OD.ID_Products
    )
    SELECT
        P.Brand,
        SUM(OD.Quantity * (P.Sell_Price - P.Price_)) AS Total_Profit
    FROM
        Orders_Details OD
    JOIN
        Products P ON P.ID_Products = OD.ID_Products
    GROUP BY
        P.Brand
    HAVING
        ROUND(SUM(OD.Quantity * (P.Sell_Price - P.Price_)) / (SELECT Total_Profit FROM Profit), 2) > @MinPercentage;
END;

EXEC Marka_przychód @MinPercentage = 0.05;
```
