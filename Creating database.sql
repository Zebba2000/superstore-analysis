Create database if not exists Sales;

USE sales;

CREATE TABLE superstore (
    Category VARCHAR(255),
    City VARCHAR(255),
    Country_Region VARCHAR(255),
    Customer_ID VARCHAR(255),
    Customer_Name VARCHAR(255),
    Order_Date DATE,
    Order_ID VARCHAR(255),
    Order_Profitable VARCHAR(255),
    Postal_Code VARCHAR(255),
    Product_ID VARCHAR(255),
    Product_Name VARCHAR(255),
    Region VARCHAR(255),
    Row_ID INT,
    Segment VARCHAR(255),
    Ship_Date DATE,
    Ship_Mode VARCHAR(255),
    Ship_Status VARCHAR(255),
    State VARCHAR(255),
    Sub_Category VARCHAR(255),
    Days_to_Ship_Actual INT,
    Days_to_Ship_Scheduled INT,
    Profit DECIMAL(10,2),
    Quantity INT,
    Sales DECIMAL(10,2),
    Sales_Forecast DECIMAL(10,2)
);

SHOW VARIABLES LIKE 'secure_file_priv';

LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Superstore_2023 - Superstore_2023 (1).csv'
INTO TABLE superstore
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;








