--PROCEDURA
--USE zad_prog_2;

CREATE PROCEDURE Marka_przych�d
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

----Aby wy�wietli�:

--EXEC Marka_przych�d @MinPercentage = 0.05;


-- Aby usun�� procedure:
--DROP PROCEDURE Marka_przych�d; 


