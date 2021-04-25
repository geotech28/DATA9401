--Switch the Query Editor connection to the DATA9401_PROJECT4 database
USE DATA9401_PROJECT4

--Create a Los_Angeles_Area-Fast_Food_Details table
CREATE TABLE CA_LA_Area_Fast_Food_Details 
	(RestaurantID INT NOT NULL,
	Restaurant1 NVARCHAR(50),
	Restaurant2 NVARCHAR(50),
	Website NVARCHAR(50) NOT NULL,
	Keys NVARCHAR(100) NOT NULL,
	Country NVARCHAR(50) NOT NULL,
	US_State NVARCHAR(50) NOT NULL,
	City NVARCHAR(50) NOT NULL,
	US_Address NVARCHAR(50) NOT NULL,
	ZipCode INT NOT NULL,
	Latitude FLOAT NOT NULL,
	Longitude FLOAT NOT NULL
);

--Importing data from a CSV file
BULK INSERT CA_LA_Area_Fast_Food_Details FROM 'C:\Users\Jordan\Documents\BVC\DATA9401\Class_Project\Project4\CA_LA_Area_Fast_Food_Details.csv'
   WITH (
      FORMAT = 'CSV',
	  FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      ROWTERMINATOR = '\n'
);

--Create RestaurantID_Website] view
--Combine Restaurant1 AS Restaurant 
CREATE VIEW [RestaurantID_ZipCode] AS
SELECT RestaurantID, Restaurant1 AS Restaurant, Website, Keys, Country, US_State, City, US_Address, ZipCode, Latitude, Longitude
FROM CA_LA_Area_Fast_Food_Details 
UNION
SELECT RestaurantID, Restaurant2, Website, Keys, Country, US_State, City, US_Address, ZipCode, Latitude, Longitude
FROM CA_LA_Area_Fast_Food_Details; 

--Select RestaurantID_ZipCode view and create a CA_LA_Area_Fast_Food_1NF table
SELECT *
INTO CA_LA_Area_Fast_Food_Details_1NF
FROM RestaurantID_ZipCode;

--Create a Restaurant_Website_2NF table
SELECT DISTINCT Website INTO Restaurant_Website_2NF
FROM CA_LA_Area_Fast_Food_Details_1NF;

--Create a Restaurant_City_2NF table
SELECT DISTINCT City INTO Restaurant_City_2NF
FROM CA_LA_Area_Fast_Food_Details_1NF;

--Create a Restaurant_3NF table
SELECT DISTINCT RestaurantID, Restaurant, ZipCode INTO Restaurant_3NF
FROM CA_LA_Area_Fast_Food_Details_1NF;

--Create a Restaurant_ZipCode_3NF table
SELECT DISTINCT ZipCode, Country, US_State, City, US_Address, Latitude, Longitude INTO Restaurant_ZipCode_3NF
FROM CA_LA_Area_Fast_Food_Details_1NF;