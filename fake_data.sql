
USE zad_prog_2;

INSERT INTO Locations (LocationID, Sector, Shelf, Palette, levels, Capacity, Unit_cap) 
VALUES (1, 'Sektor A', 'Pó³ka 1', 'Paleta 1', 1, 100, 'szt.'),
(2, 'Sektor B', 'Pó³ka 11', 'Paleta 5', 2, 150, 'szt.'),
(3, 'Sektor C', 'Pó³ka 111', 'Paleta 3', 1, 80, 'szt.'),
(4, 'Sektor D', 'Pó³ka 1111', 'Paleta 4', 3, 120, 'szt.'),
(5, 'Sektor A', 'Pó³ka 1', 'Paleta 2', 2, 200, 'szt.'),
(6, 'Sektor A', 'Pó³ka 2', 'Paleta 3', 1, 140, 'szt.'),
(7, 'Sektor A', 'Pó³ka 2', 'Paleta 4', 3, 160, 'szt.'),
(8, 'Sektor B', 'Pó³ka 11', 'Paleta 6', 2, 140, 'szt.'),
(9, 'Sektor B', 'Pó³ka 12', 'Paleta 7', 1, 110, 'szt.'),
(10, 'Sektor B', 'Pó³ka 13', 'Paleta 8', 3, 130, 'szt.'),
(11, 'Sektor C', 'Pó³ka 111', 'Paleta 11', 2, 170, 'szt.'),
(12, 'Sektor C', 'Pó³ka 112', 'Paleta 12', 1, 150, 'szt.'),
(13, 'Sektor C', 'Pó³ka 113', 'Paleta 13', 3, 120, 'szt.'),
(14, 'Sektor D', 'Pó³ka 1112', 'Paleta 14', 2, 200, 'szt.'),
(15, 'Sektor D', 'Pó³ka 1112', 'Paleta 15', 1, 90, 'szt.');



INSERT INTO Products (ID_Products,LocationID, Name_, Brand, Group_, Description_, Country_Production, Price_, Sell_Price, Condition, Unit, Start_Date_, Update_Date_)
VALUES
    (1,1, 'Calvin Klein Shirt', 'Calvin Klein', 'Koszule', ' Najnowsza koszula z kolekcji Calvina Kleina. Wykonana z wysokiej jakoœci materia³ów.', 'USA', 93.99, 169.99, 80, 'szt.', '2023-01-01', '2023-02-15'),
    (2,5,'Calvin Klein Jeans', 'Calvin Klein', 'Jeans', ' Klasyczne jeansy od Calvina Kleina. Doskona³e dopasowanie i wyj¹tkowy design', 'USA', 285.39, 509.95, 20, 'szt.', '2023-03-05', '2023-04-20'),
	(3,6,'Calvin Klein Hoodie', 'Calvin Klein', 'Bluzy', 'LuŸna bluza od Calvina Kleina. Stylowa i solidnie wykonana', 'USA', 288.09, 505.29, 88, 'szt.', '2023-03-05', '2023-04-20'),
    (4,1,'Tommy Hilfiger Shirt', 'Tommy Hilfiger', 'Koszule', 'Elegancka koszula marki Tommy Hilfiger. Stworzona z dba³oœci¹ o detale.', 'USA', 59.15, 79.98, 20, 'szt.', '2023-01-01', '2023-02-15'),
    (5,5,'Tommy Hilfiger Jeans', 'Tommy Hilfiger', 'Jeans', 'Wygodne jeansy od Tommyego Hilfigera. Doskonale prezentuj¹ siê i œwietnie dopasowuj¹ do sylwetki.', 'USA', 379.99, 499.99, 118, 'szt.', '2023-03-05', '2023-04-20'),
	(6,5,'Tommy Hilfiger Pants', 'Tommy Hilfiger', 'Bokserki', 'Zestaw trzech wygodnych i trwa³ych mêskich bokserek marki Tommy Hilfiger. Kolorystyka: bia³y,szary,czarny.', 'USA', 60.99, 129.99, 53, '3-pack', '2023-03-05', '2023-04-20'),
    (7,7, 'Diesel Shirt', 'Diesel', 'Koszule', 'Stylowa koszula od marki Diesel. Nowoczesny design i wysoka jakoœæ.', 'Italy', 354, 574.97, 71, 'szt.', '2023-01-15', '2023-02-28'),
    (8,8, 'Diesel sunglasses', 'Diesel', 'Okulary', 'Okulary s³oneczne Diesel to po³¹czenie stylowego designu z wysok¹ jakoœci¹ ochrony przed s³oñcem.', 'Italy', 609.90, 1111.11, 111, 'szt', '2023-04-01', '2023-05-15'),
    (9,9,'Part Two Coat', 'Part Two', 'P³aszcz', 'P³aszcz marki Part Two o wysokiej jakoœci wykonania sprawiaja, ¿e jest idealnym wyborem na ró¿ne okazje.', 'Denmark', 564.99, 1084.59, 37, 'szt.', '2023-02-28', '2023-04-10'),
    (10,6, 'Part Two Jumper', 'Part Two', 'Sweter', 'Sweter marki Part Two to esencja komfortu i stylu - wykonany z wysokiej jakoœci materia³ów', 'Denmark', 154.90, 425, 46, 'szt.', '2023-04-10', '2023-05-25'),
    (11,11, 'Nike Air Max 97', 'Nike', 'Obuwie', 'Buty Nike Air Max 97 to klasyczny model obuwia, który ³¹czy w sobie nowoczesny design z wygod¹', 'USA', 79.99, 99.99, 59, 'para', '2023-03-15', '2023-04-30'),
    (12,12, 'Nike Tracksuit', 'Nike', 'Dresy', 'Dresy Nike to symbol wygody i stylu w jednym. Wykonane zosta³y z wysokiej jakoœci materia³ów.', 'USA', 334.99, 9400.98, 23, 'komplet', '2023-02-01', '2023-03-20'),
    (13,13, 'Dior Sauvage Elixir', 'Dior', 'Perfumy', 'Perfumy Dior Sauvage 100ml to ikoniczna kompozycja zapachowa, charakteryzuj¹ca siê œwie¿oœci¹ i elegancj¹.', 'France', 449, 885.39, 47,'szt.', '2023-03-20', '2023-05-05'),
    (14,3, 'Dior Dress', 'Dior', 'Suknie', 'Sukienka marki Dior, wykonana zosta³a z delikatnego jedwabiu, wykoñczona koronkami', 'France', 1100, 2349.59, 10, 'szt.', '2023-01-10', '2023-02-25'),
    (15,4,'D&G Logo Bag box Handbag', 'Dolce & Gabbana', 'Torebki', 'To nowa torba Dolce & Gabbana Logo Box uosabia rzemieœlnicze umiejêtnoœci marki, wykonana z lakierowanej skóry.', 'Italy', 1399.55, 3499.98, 50, 'szt.', '2023-02-05', '2023-03-15'),
    (16,7, 'D&G Suit', 'Dolce & Gabbana', 'Garnitur', 'Garnitur Dolce & Gabbana to wyrafinowany zestaw mêskiej garderoby, cechuj¹cy siê doskona³ym krojem i starannym wykonaniem', 'Italy', 599, 12455.98, 13, 'szt.', '2023-04-05', '2023-05-20'),
    (17,12 ,'Gucci Bag', 'Gucci', 'Torebki', 'Torebka Gucci to wyraz luksusu i stylu, wykonana ze skóry ekologicznej.', 'Italy', 1200, 2796.99, 28, 'szt.', '2023-01-25', '2023-03-05'),
    (18,12 ,'Gucci Socks', 'Gucci', 'Skarpetki', 'Skarpetki od Gucci wykonane w 100% z bawe³ny.', 'Italy', 349.99, 698.89, 44, 'para', '2023-03-10', '2023-04-20'),
    (19, 13,'Prada Wallet', 'Prada', 'Portfele', 'Portfel Prada to ekskluzywny akcesorium wykonane z najwy¿szej jakoœci materia³ów,wyrafinowany dodatek dla osób poszukuj¹cych luksusu.', 'Italy', 2019.99, 3349.97, 22, 'szt.', '2023-02-20', '2023-03-25'),
    (20, 8,'Prada Sunglasses', 'Prada', 'Okulary', 'Okulary marki Prada, nowe i oryginalne, dostarczaj¹ce doskona³ej ochrony przeciws³onecznej.', 'Italy', 1252.45, 2355, 33, 'szt.', '2023-04-02', '2023-05-10'),
    (21, 15,'Versace Belt', 'Versace', 'Paski', 'Pasek marki Versace jest wyrazem luksusu i stylu, wykonany w 100% ze skóry.', 'Italy', 398.50, 679.49, 88, 'szt.', '2023-01-08', '2023-02-15'),
    (22, 14,'Versace Jacket', 'Versace', 'Kurtki', 'Puchowa kurtka od Versace to po³¹czenie stylu, wygody i elegancji, doskona³a ochrona przed ch³odem, poniewa¿ jest wype³niona puchem gêsi.', 'Italy', 2105.20, 4999.98, 177, 'szt.', '2023-03-01', '2023-04-10'),
    (23, 13,'Burberry Scarf', 'Burberry', 'Szale', 'Designerski szalik od Burberry nadaje Twojej szyi blasku i uroku. Wykonany w 100% z bawe³ny.', 'UK', 159.99, 259.99, 38, 'szt.', '2023-02-15', '2023-04-01'),
    (24,7,'Burberry Shirt', 'Burberry', 'Koszule', 'Koszula marki Burberry.', 'UK', 1129.99, 2229.99, 27, 'szt.', '2023-04-05', '2023-05-20');


UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "100% Bawe³na", "Opis": "Najnowsza koszula z kolekcji Calvina Kleina. Wykonana z wysokiej jakoœci materia³ów."}'
WHERE ID_Products = 1;


UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "100% Bawe³na", "Opis": "Klasyczne jeansy od Calvina Kleina. Doskona³e dopasowanie i wyj¹tkowy design."}'
WHERE ID_Products = 2;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "80% Bawe³na; 20 % Poliester", "Opis": "LuŸna bluza od Calvina Kleina. Stylowa i solidnie wykonana."}'
WHERE ID_Products = 3;


UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "100% Bawe³na", "Opis": "Elegancka koszula marki Tommy Hilfiger. Stworzona z dba³oœci¹ o detale."}'
WHERE ID_Products = 4;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "100% Bawe³na", "Opis": "Wygodne jeansy od Tommyego Hilfigera. Doskonale prezentuj¹ siê i œwietnie dopasowuj¹ do sylwetki."}'
WHERE ID_Products = 5;

UPDATE Products
SET Description_ = '{ "Kolekcja" : NULL,"Sk³ad": "95% Bawe³na; 5% Elastan", "Opis": "Zestaw trzech wygodnych i trwa³ych mêskich bokserek marki Tommy Hilfiger."}'
WHERE ID_Products =6;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "100% Bawe³na", "Opis": "Stylowa koszula od marki Diesel. Nowoczesny design i wysoka jakoœæ."}'
WHERE ID_Products = 7;


UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "Oktan", "Opis": "Okulary s³oneczne Diesel to po³¹czenie stylowego designu z wysok¹ jakoœci¹ ochrony przed s³oñcem."}'
WHERE ID_Products = 8;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "70% we³na; 20% poliester; 5% poliamid; 5% inne w³ókna", "Opis": "P³aszcz marki Part Two o wysokiej jakoœci wykonania sprawiaja, ¿e jest idealnym wyborem na ró¿ne okazje."}'
WHERE ID_Products = 9;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "90% we³na; 10% kaszmir", "Opis": "Sweter marki Part Two to esencja komfortu i stylu - wykonany z wysokiej jakoœci materia³ów."}'
WHERE ID_Products = 10;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "Materia³", "Opis": "Buty Nike Air Max 97 to klasyczny model obuwia, który ³¹czy w sobie nowoczesny design z wygod¹."}'
WHERE ID_Products = 11;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "100% poliester", "Opis": "Dresy Nike to symbol wygody i stylu w jednym. Wykonane zosta³y z wysokiej jakoœci materia³ów."}'
WHERE ID_Products = 12;

UPDATE Products
SET Description_ = '{ "Kolekcja" : NULL, "Sk³ad": "Nuty g³owy: pieprz, kalabryjska bergamotka. Nuty serca: geranium, lawenda, pieprz syczuañski, elemi, ró¿owy pieprz, wetyweria, paczula. Nuty bazy: cedr, labdanum, ambroksan.", "Opis": "P³aszcz marki Part Two o wysokiej jakoœci wykonania sprawiaja, ¿e jest idealnym wyborem na ró¿ne okazje."}'
WHERE ID_Products = 13;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "40% jedwab; 60% bawe³na", "Opis": "Sukienka marki Dior, wykonana zosta³a z delikatnego jedwabiu, wykoñczona koronkami"}'
WHERE ID_Products = 14;

UPDATE Products
SET Description_ = '{ "Kolekcja" : NULL, "Sk³ad": "skóra naturalna", "Opis": "To nowa torba Dolce & Gabbana Logo Box uosabia rzemieœlnicze umiejêtnoœci marki, wykonana z lakierowanej skóry."}'
WHERE ID_Products = 15;

UPDATE Products
SET Description_ = '{ "Kolekcja" : NULL, "Sk³ad": "100% Bawe³na", "Opis": "Garnitur Dolce & Gabbana to wyrafinowany zestaw mêskiej garderoby, cechuj¹cy siê doskona³ym krojem i starannym wykonaniem."}'
WHERE ID_Products = 16;

UPDATE Products
SET Description_ = '{ "Kolekcja" : NULL, "Sk³ad": "Skóra ekologiczna", "Opis": "Torebka Gucci to wyraz luksusu i stylu, wykonana ze skóry ekologicznej."}'
WHERE ID_Products = 17;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "100% poliester", "Opis": "Skarpetki od Gucci wykonane w 100% z bawe³ny."}'
WHERE ID_Products = 18;

UPDATE Products
SET Description_ = '{ "Kolekcja" : NULL, "Sk³ad": "skóra naturalna", "Opis": "Portfel Prada to ekskluzywny akcesorium wykonane z najwy¿szej jakoœci materia³ów,wyrafinowany dodatek dla osób poszukuj¹cych luksusu."}'
WHERE ID_Products = 19;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "70% plastik", "Opis": "Okulary marki Prada, nowe i oryginalne, dostarczaj¹ce doskona³ej ochrony przeciws³onecznej."}'
WHERE ID_Products = 20;

UPDATE Products
SET Description_ = '{ "Kolekcja" : NULL, "Sk³ad": "100 % skóra naturalna", "Opis": "Pasek marki Versace jest wyrazem luksusu i stylu, wykonany w 100% ze skóry."}'
WHERE ID_Products = 21;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "100% gêsi puch", "Opis": "Puchowa kurtka od Versace to po³¹czenie stylu, wygody i elegancji, doskona³a ochrona przed ch³odem, poniewa¿ jest wype³niona puchem gêsi."}'
WHERE ID_Products = 22;

UPDATE Products
SET Description_ = '{ "Kolekcja" : "Zima", "Sk³ad": "70% we³na; 30% kaszmir", "Opis": "Designerski szalik od Burberry nadaje Twojej szyi blasku i uroku. Wykonany w 100% z bawe³ny."}'
WHERE ID_Products = 23;


UPDATE Products
SET Description_ = '{ "Kolekcja" : "Lato", "Sk³ad": "80% bawe³na; 20% jedwab", "Opis": "Koszula marki Burberry."}'
WHERE ID_Products = 24;







INSERT INTO Carrier (CarrierID, Carrier_Name, Carrier_Last_Name, Phone_Number, Registration_number, Car_model, Company, Rating)
VALUES
    (1, 'Szymon', 'Podolski', '+48123456789', 'WA1234', 'Mercedes-Benz Sprinter', 'Firma Transportowa Podolski', 4),
    (2, 'Sylwester', 'Stalone', '+48765432198', 'WB5678', 'Mercedes-Benz Sprinter', 'Dostawa jak Uderzenie', 5),
    (3, 'Szani', 'Srebrzysta', '+48567893456', 'WC9012', 'Ford Transit', 'Srebrny Przewóz', 3),
    (4, 'Karol', 'Kowal', '+48659871234', 'WD3456', 'Opel Vivaro', 'Kowal&Sons', 4),
    (5, 'Zofia', 'Nowakowska', '+48432178901', 'WE7890', 'Fiat Ducato', 'Szybki Nowak', 5),
    (6, 'Filip', 'Wójcicki', '+48876543210', 'WF1234', 'Ford Transit', 'Wójcik wiezie', 4),
    (7, 'Alicja', 'Lewangolska', '+48765432198', 'WG5678', 'Fiat Ducato', 'Sprint minutes', 5),
    (8, 'Bartosz', 'Janko', '+48659871234', 'WH9012', 'Mercedes-Benz Sprinter', 'Janko Logistics', 3),
    (9, 'Julia', 'Œmiech', '+48432178901', 'WI3456', 'Citroën Jumpy', 'Œmiecho_wioz³o', 4),
    (10, 'Maciej', 'Wojciech', '+48123456789', 'WJ6789', 'Opel Vivaro', 'Firma Wport', 5);

INSERT INTO Delivery (DeliveryID, CarrierID, DeliveryDate, Delivery_Type, Delivery_Status, Delivery_Cost)
VALUES
    (1, 1, '2023-11-27T08:12:35Z', 'Standard', 'Delivered', 25.99),
    (2, 2, '2023-11-26T10:34:22Z', 'Express', 'Delivered', 35.50),
    (3, 3, '2023-11-25T14:48:18Z', 'Standard', 'Delivered', 20.00),
    (4, 4, '2023-11-24T12:22:59Z', 'Express', 'Delivered', 40.25),
    (5, 5, '2023-11-23T09:11:45Z', 'Standard', 'Delivered', 30.75),
    (6, 6, '2023-11-22T16:32:10Z', 'Standard', 'Delivered', 22.50),
    (7, 7, '2023-11-21T11:57:30Z', 'Express', 'Delivered', 38.00),
    (8, 8, '2023-11-20T13:42:05Z', 'Standard', 'Delivered', 28.00),
    (9, 9, '2023-11-19T08:46:48Z', 'Express', 'Delivered', 42.80),
    (10, 10,'2023-11-18T15:17:25Z', 'Standard', 'Delivered', 32.90),
    (11, 1, '2023-11-17T12:01:59Z', 'Express', 'Delivered', 37.20),
    (12, 2, '2023-11-16T10:23:14Z', 'Standard', 'Delivered', 29.80),
	(13, 1, '2023-11-27T08:42:15Z', 'Standard', 'Delivered', 25.99),
	(15, 3, '2023-11-25T14:08:55Z', 'Standard', 'Delivered', 20.00),
    (16, 3, '2023-11-25T15:18:38Z', 'Standard', 'Delivered', 20.00),
    (17, 4, '2023-11-24T11:53:49Z', 'Express', 'Delivered', 40.25),
    (14, 5, '2023-11-23T09:37:15Z', 'Standard', 'Delivered', 30.75),
    (18, 6, '2023-11-22T16:57:19Z', 'Standard', 'Delivered', 22.50),
    (19, 8, '2023-11-20T14:02:35Z', 'Standard', 'Delivered', 28.00),
    (20,10,'2023-11-18T15:39:39Z', 'Standard', 'Delivered', 32.90);



INSERT INTO Customers (CustomerID, First_Name, Last_Name, Email, Phone_number, Customer_Address, City, PostCode, Customer_Type)
VALUES
    (1, 'Jan', 'Kowalski', 'kowal_Jan@wp.pl', '+48123456789', 'ul. Kwiatowa 5', 'Warszawa', 01234, 'Sta³y'),
    (2, 'Anna', 'Nowakowska', 'anna_New@gmail.com', '+48765432109', 'ul. S³oneczna 12', 'Warszawa', 98765, 'Nowy'),
    (3, 'Piotr', 'Wiœnia', 'wiœnia123@gmail.com', '+48678901234', 'ul. Weso³a 8', 'Warszawa', 65432, 'Sta³y'),
    (4, 'Zofia', 'Dobra', 'dobra_Zofia_12@o2.pl', '+48567890123', 'ul. Samorz¹dowa 4', 'Otwock', 05400, 'Sta³y'),
    (5, 'Krzysztof', 'Ibisz', 'wiecznie_m³ody@gmail.com', '+48901234567', 'ul. Reymonta 17', 'Otwock', 05400, 'Nowy'),
    (6, 'Sylwester', 'WoŸniakowski', 'Bokser04@gmail.com', '+48123456789', 'ul. 3 Maja 9', 'Otwock', 05400, 'Sta³y'),
    (7, 'Adam', 'Gadam', 'malo_gadam90@gmail.com', '+48765432109', 'ul. Polna 3', 'Józefów', 05420, 'Sta³y'),
    (8, 'Magdalena', 'Stêpieñ', 'Magia40@gmail.com', '+48678901234', 'ul. Leœna 15', 'Józefów', 05420, 'Nowy'),
    (9, 'Kamil', 'Trupcioch', 'Kamil_Truptam50@gmail.com', '+48567890123', 'ul. Wawrzyniecka 1', 'Glinianka', 05408, 'Sta³y'),
    (10, 'Natalia', 'Ba³agan', 'n_balagan@gmail.com', '+48901234567', 'ul. Szkolna 6', 'Glinianka', 05408, 'Sta³y');


INSERT INTO Employees_Transport (TransportID, Vehicle_type, Vehicle_brand, Vehicle_plate_number)
VALUES
    (1, 'Samochód', 'Ford', 'WOT12345'),
    (2, 'Samochód', 'Toyota', 'WOT67890'),
    (3, 'Autobus', 'Mercedes-Benz', 'WOT54321'),
	(4,'Samochód','Porshe','WOT85859'),
	(5,'Samochód','KIA', 'WOT11123');


INSERT INTO Employees (EmployeeID, TransportID, First_Name, Last_Name, Birthday_Date, Email, Phone_number, Adress, City, PostCode, Work_distance, Hire_Date, Occupation, Wage, HolidaysDate_Start, HolidaysDate_End, Employee_type)
VALUES
    (1, 1, 'Anna', 'Koral', '1990-05-12', 'ania09@gmail.com', '+48123456789', 'ul. Danuty 5', 'Otwock', 05400, 15.5, '2023-01-10', 'Brygadzista', 6000.00, '2023-07-01', '2023-07-15', 'normal'),
    (2, 3, 'Piotr', 'Pismo', '1999-09-18', 'pioter67@gmail.com', '+48765432109', 'ul. Elizy Orzeszkowej 12', 'Otwock', 05400, 12.8, '2023-02-05', 'Pakowacz', 4500.00, '2023-08-10', '2023-08-25', 'student'),
    (3, 2, 'Jan', 'Klan', '1990-11-25', 'janKl12@gmail.com', '+48678901234', 'ul. Boczna 8', 'Otwock', 05400, 18.2, '2023-03-20', 'Pakowacz', 5400.00, '2023-09-15', '2023-09-30', 'normal'),
    (4, 3, 'Maria', 'K¹t', '2000-07-08', 'mariaa_prosty87@gmail.com', '+48567890123', 'ul. Biruty 4', 'Otwock', 05400, 11.7, '2023-04-15', 'Pakowacz', 4500.00, '2023-10-20', '2023-11-05', 'student'),
    (5, 3, 'Marcin', 'Lampka', '1992-12-30', 'marcin_swieci89@gmail.com', '+48901234567', 'ul. Ogrodowa 17', 'Otwock', 05400, 10.5, '2023-05-22', 'Specjalista do za³adunku', 5500.00, '2023-12-01', '2023-12-15', 'normal'),
	(6, 5, 'Karolina', 'Inka', '1999-03-17', 'karolinka9@gmail.com', '+48123456789', 'ul. Ho¿a 9', 'otwock', 05400, 14.8, '2023-06-18', 'Financial Analyst', 9000.00, '2024-01-05', '2024-01-20', 'student'),
    (7, 4, 'Adam', 'Kokon', '1978-08-23', 'adkokon3@gmail.com', '+48765432109', 'ul. Piêkna 3', 'Otwock', 05400, 16.2, '2023-07-30', 'Director', 48000.00, '2024-02-01', '2024-02-25', 'normal');



INSERT INTO Orders (OrderId, CustomerId, DeliveryId, EmployeeId, OrderDate, DueDate, ShippedDate, Shipping_address, Shipping_city, Shipping_postcode, Order_Weight, Total_Order_price, Order_Status, Wrapping)
VALUES
    (1, 1, 1,2 , '2023-11-19T09:15:22Z', '2023-11-28T09:15:22Z', '2023-11-23T09:15:22Z', 'ul. Kwiatowa 5', 'Warszawa', 01234, 2.5, 0 , 'closed', 'Karton'),
    (2, 1, 1, 3, '2023-11-22T10:30:15Z', '2023-11-27T10:30:15Z', '2023-11-25T10:30:15Z', 'ul. Kwiatowa 5', 'Warszawa', 01234, 3.8, 0 , 'closed', 'Karton ozdobny'),
    (3, 2, 5, 1, '2023-11-15T11:45:38Z', '2023-11-22T11:45:38Z', '2023-11-22T11:45:38Z', 'ul. S³oneczna 12', 'Warszawa', 98765, 5.2, 0, 'closed', 'Karton ozdobny'),
    (4, 2, 5, 2, '2023-11-13T13:00:47Z', '2023-11-20T13:00:47Z', '2023-11-22T13:00:47Z', 'ul. S³oneczna 12', 'Warszawa', 98765, 6.6, 0, 'closed', 'Karton'),
    (5, 3, 3, 1, '2023-11-16T14:15:10Z', '2023-11-26T14:15:10Z', '2023-11-22T14:15:10Z', 'ul. Weso³a 8', 'Warszawa', 65432, 4.9, 0, 'closed', 'Karton'),
    (6, 3, 3, 2, '2023-11-16T15:30:25Z', '2023-11-26T15:30:25Z', '2023-11-22T15:30:25Z', 'ul. Weso³a 8', 'Warszawa', 65432, 7.1, 0, 'closed', 'Karton'),
    (7, 4, 3, 5, '2023-11-17T09:45:55Z', '2023-03-24T09:45:55Z', '2023-03-23T09:45:55Z', 'ul. Samorz¹dowa 4', 'Otwock', 05400, 3.5, 0, 'closed', 'Karton ozdobny'),
    (8, 5, 6, 5, '2023-04-12T10:00:18Z', '2023-04-27T10:00:18Z', '2023-04-26T10:00:18Z', 'ul. Reymonta 17', 'Otwock', 05400, 2.7, 0, 'closed', 'Karton ozdobny'),
    (9, 6, 6,1 , '2023-05-11T11:15:33Z', '2023-05-30T11:15:33Z', '2023-05-29T11:15:33Z', 'ul. 3 Maja 9', 'Otwock', 05400, 5.0, 0, 'closed', 'Karton'),
    (10, 7, 2,1 , '2023-11-24T12:30:47Z', '2023-11-26T12:30:47Z','2023-11-25T12:30:47Z', 'ul. Polna 3', 'Józefów', 05420, 6.3, 0, 'closed', 'Karton'),
    (11, 8, 4,2 , '2023-11-22T13:45:59Z', '2023-11-24T13:45:59Z', '2023-11-23T13:45:59Z', 'ul. Leœna 15', 'Józefów', 05420, 8.2, 0, 'closed', 'Karton'),
    (12, 9, 8, 3, '2023-11-10T14:00:11Z', '2023-11-20T14:00:11Z', '2023-11-12T14:00:11Z', 'ul. Wawrzyniecka 1', 'Glinianka', 05408, 3.2, 0, 'closed', 'Karton ozdobny'),
    (13, 10, 8,2 , '2023-11-11T15:15:23Z', '2023-11-20T15:15:23Z', '2023-11-12T15:15:23Z', 'ul. Szkolna 6', 'Glinianka', 05408, 4.7, 0, 'closed', 'Karton ozdobny'),
    (14, 1, 4, 2, '2023-11-22T09:30:35Z', '2023-11-25T09:30:35Z', '2023-11-23T09:30:35Z', 'ul. Kwiatowa 5', 'Warszawa', 01234, 6.0, 0, 'closed', 'Karton'),
    (15, 2, 10,1 , '2023-11-08T10:45:47Z', '2023-11-19T10:45:47Z', '2023-11-18T10:45:47Z', 'ul. S³oneczna 12', 'Warszawa', 98765, 5.5, 0, 'closed', 'Karton ozdobny'),
    (16, 3, 10, 3, '2023-11-08T12:00:59Z', '2023-11-19T12:00:59Z', '2023-11-18T12:00:59Z', 'ul. Weso³a 8', 'Warszawa', 65432, 7.3, 0, 'closed', 'Karton ozdobny'),
    (17, 4, 9, 5, '2023-11-17T13:15:11Z', '2023-11-17T13:15:11Z', '2023-11-18T13:15:11Z', 'ul. Samorz¹dowa 4', 'Otwock', 05400, 4.8, 0, 'closed', 'Karton'),
    (18, 5, 7, 3, '2023-11-16T14:30:23Z', '2023-11-22T14:30:23Z', '2023-11-20T14:30:23Z', 'ul. Reymonta 17', 'Otwock', 05400, 3.4, 0, 'closed', 'Karton'),
    (19, 6, 11, 5, '2023-11-14T09:45:35Z', '2023-11-16T09:45:35Z', '2023-11-15T09:45:35Z', 'ul. 3 Maja 9', 'Otwock', 05400, 6.5, 0, 'closed', 'Karton'),
    (20, 7, 12, 2, '2023-11-06T10:00:47Z', '2023-11-16T10:00:47Z', '2023-11-15T10:00:47Z', 'ul. Polna 3', 'Józefów', 05420, 8.1, 0, 'closed', 'Karton');


UPDATE Orders
SET DeliveryID = 13
WHERE OrderId = 2;

UPDATE Orders
SET DeliveryID = 14
WHERE OrderId = 4;

UPDATE Orders
SET DeliveryID = 15
WHERE OrderId = 5;

UPDATE Orders
SET DeliveryID = 16
WHERE OrderId = 7;

UPDATE Orders
SET DeliveryID = 18
WHERE OrderId = 9;


UPDATE Orders
SET DeliveryID = 17
WHERE OrderId = 11;

UPDATE Orders
SET DeliveryID = 19
WHERE OrderId = 13;

UPDATE Orders
SET DeliveryID = 20
WHERE OrderId = 16;



INSERT INTO Orders_Details (OrderID, ID_Products, Quantity, Sub_total)
VALUES
    (1, 8, 4, 0),
    (2, 23, 2, 0),
    (3, 15, 3, 0),
    (4, 5, 5, 0),
    (5, 19, 1, 0),
    (6, 11, 2, 0),
    (7, 24, 3, 0),
    (8, 16, 4, 0),
    (9, 6, 2, 0),
    (10, 12, 3, 0),
    (11, 4, 1, 0),
    (12, 21, 2, 0),
    (13, 9, 4, 0),
    (14, 7, 3, 0),
    (15, 17, 2, 0),
    (16, 22, 5, 0),
    (17, 3, 2, 0),
    (18, 10, 1, 0),
    (19, 20, 3, 0),
    (20, 2, 4, 0),
    (1, 13, 5, 0),
    (2, 18, 2, 0),
    (3, 1, 1, 0),
    (4, 14, 4, 0),
    (5, 24, 3, 0),
    (6, 16, 2, 0),
    (7, 5, 1, 0),
    (8, 7, 3, 0),
    (9, 19, 2, 0),
    (10, 11, 4, 0);



UPDATE Orders_Details
SET Sub_total = Quantity * (
    SELECT Sell_Price
    FROM Products
    WHERE Products.ID_Products = Orders_Details.ID_Products
);




UPDATE Orders
SET Total_Order_price = (
    SELECT SUM(Sub_total)
    FROM Orders_Details
    WHERE Orders.OrderID = Orders_Details.OrderID
);

UPDATE Orders
SET Free_delivery = (CASE WHEN Total_Order_price > 2000 THEN 'Yes' ELSE 'No' END);

UPDATE Locations
SET levels = (CASE WHEN Sector = 'Sektor A' THEN 1
				   WHEN Sector = 'Sektor B' THEN 2
				   WHEN Sector = 'Sektor C' THEN 3
				   ELSE 4 END);


