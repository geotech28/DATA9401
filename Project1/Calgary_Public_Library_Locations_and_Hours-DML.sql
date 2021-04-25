--Connect to database
USE DATA9401_PROJECT1

--Create a new table
CREATE TABLE Calgary_Public_Library_Locations_and_Hours (
	Library_Name VARCHAR (200),
	Postal_Code VARCHAR (7),
	Phone_Number VARCHAR (12)
);

--Insert multiple records
INSERT INTO Calgary_Public_Library_Locations_and_Hours(
	Library_Name, Postal_Code, Phone_Number
)

VALUES
	('W.R. Castell Central Library', 'T2G 2M2', '403-260-2600'),
	('Alexander Calhoun Library', 'T2T 3V8', '403-260-2600'),
	('Bowness Library', 'T3B 0H3', '403-260-2600'),
	('Fish Creek Library', 'T2J 6S1', '403-260-2600'),
	('Forest Lawn Library', 'T2A 4M1', '403-260-2600'),
	('Glenmore Square Library', 'T2C 2N5', '403-260-2600'),
	('Louise Riley Library', 'T2N 1M5', '403-260-2600'),
	('Memorial Park Library', 'T2R 0W5', '403-260-2600'),
	('Nose Hill Library', 'T2L 0G6', '403-260-2600'),
	('Shawnessy Library', 'T2Y 4H3', '403-260-2600'),
	('Signal Hill Library', 'T3H 3P8', '403-260-2600'),
	('Southwood Library', 'T2W 0J9', '403-260-2600'),
	('Judith Umbach Library', 'T2K 4Y5', '403-260-2600'),
	('Village Square Library', 'T1Y 6E7', '403-260-2600'),
	('Crowfoot Library', 'T3G 5T3', '403-260-2600'),
	('Country Hills Library', 'T3K 6E3', '403-260-2600'),
	('Saddletowne Library', 'T3J 0C9', '403-260-2600'),
	('Westbrook Library', 'T3C 1P4', '403-260-2600');

--Select all columns
SELECT * FROM Calgary_Public_Library_Locations_and_Hours;

--Select columns
SELECT Library_Name, Postal_Code FROM Calgary_Public_Library_Locations_and_Hours;

--Insert a record
INSERT INTO Calgary_Public_Library_Locations_and_Hours(
	Library_Name, Postal_Code, Phone_Number
)

VALUES
	('Rocky Ridge Library', 'T3G5H3', '403-260-2600');

--Update multiple records in a column
UPDATE Calgary_Public_Library_Locations_and_Hours
SET Phone_Number = '311'
WHERE Phone_Number = '403-260-2600';

--Delete a row of records
DELETE FROM Calgary_Public_Library_Locations_and_Hours WHERE Library_Name='Rocky Ridge Library';