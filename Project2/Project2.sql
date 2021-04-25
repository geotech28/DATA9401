--Switch the Query Editor connection to the DATA9401_PROJECT2 database
USE DATA9401_PROJECT2

--Create a employee table
CREATE TABLE Employee
	(BusinessEntityID INT,
	Department INT,
	EmployeeID NVARCHAR (6),
	FirstName NVARCHAR (50),
	MiddleName NVARCHAR (50),
	LastName NVARCHAR (50),
	JobTitle NVARCHAR (50),
	SalesQuota Money,
	StartDate DATE NOT NULL,
	EndDate DATE);

--Insert multiple records into employee table
INSERT INTO Employee(
	BusinessEntityID, Department, EmployeeID, FirstName, MiddleName, LastName, JobTitle, SalesQuota, StartDate, EndDate
)

VALUES
	(1, 9, '000024', 'Ken', 'J', 'Sánchez', 'Sales Representative', '280000.50', '2009-09-05', NULL),
	(2, 42, '000004', 'Terri', 'Lee', 'Duffy', 'Assistant to the Chief Financial Officer', '7000.00', '2008-01-15', NULL),
	(3, 9, '000007', 'Roberto', 'H', 'Tamburello', 'European Sales Manager', '91000.00', '2008-02-20', NULL),
	(4, 42, '000002', 'Rob', 'B', 'Walters', 'Chief Financial Officer', '14000.00', '2008-01-01', NULL),
	(5, 9, '000022', 'Gail', 'A', 'Erickson', 'Sales Representative', '70000', '2009-05-28', NULL),
	(6, 11, '000021', 'Jossef', 'H', 'Goldberg', 'Purchasing Assistant', '154000.75', '2009-03-15', '2015-05-26'),
	(7, 11, '000016', 'Dylan', 'A', 'Miller', 'Purchasing Manager', '263000.00', '2008-09-12', NULL),
	(8, 9, '000009', 'Diane', 'L', 'Margheim', 'Vice President of Sales', '84000.00', '2008-03-02', NULL),
	(9, 9, '000006', 'Gigi', 'N', 'Matthew', 'North American Sales Manager', '367000.25', '2008-02-14', NULL),
	(10, 42, '000005', 'Michael', 'C', 'Raheem', 'Marketing Manager', '849000.00', '2008-01-20', NULL),
	(11, 42, '000011', 'Ovidiu', 'V', 'Cracium', 'Marketing Specialist', '63900.85', '2008-04-08', NULL),
	(12, 12, '000017', 'Thierry', 'B', 'D''Hers', 'Finance Manager', '565000.00', '2008-10-25', '2013-02-24'),
	(13, 10, '000015', 'Janice', 'M', 'Galvin', 'Accounts Receivable Specialist', '87200.00', '2008-08-02', NULL),
	(14, 10, '000013', 'Michael', 'I', 'Sullivan', 'Accounts Manager', '95200.15', '2008-06-05', NULL),
	(15, 10, '000014', 'Sharon', 'B', 'Salavaria', 'Accounts Payable Specialist', '95200.55', '2008-07-14', '2014-02-15'),
	(16, 9, '000020', 'David', 'M', 'Bradley', 'Sales Representative', '244000.00', '2009-01-26', '2013-07-26'),
	(17, 42, '000012', 'Kevin', 'F', 'Brown', 'Marketing Assistant', '50700.00', '2008-05-24', NULL),
	(18, 10, '000018', 'John', 'L', 'Wood', 'Accountant', '802000.00', '2008-11-26', NULL),
	(19, 9, '000019', 'Mary', 'A', 'Dempsey', 'Sales Representative', '210000.00', '2008-12-10', NULL),
	(20, 9, '000025', 'Wanida', 'M', 'Benshoof', 'Sales Representative', '675000.26', '2009-11-04', '2014-06-16'),
	(21, 9, '000010', 'Terry', 'J', 'Eminhizer', 'Sales Representative', '571000.89', '2008-03-31', NULL),
	(22, 42, '000008', 'Sariya', 'E', 'Harnpadoungsataya', 'Pacific Sales Manager', '950000.00', '2008-02-23', NULL),
	(23, 1, '000001', 'Mary', 'E', 'Gibson', 'Chief Executive Officer', '917000.95', '2007-12-21', NULL),
	(24, 33, '000003', 'Jill', 'A', 'Williams', 'Human Resources Manager', '647000.00', '2008-01-05', NULL),
	(25, 33, '000023', 'James', 'R', 'Hamilton', 'Human Resources Administrative Assistant', '301000.65', '2009-06-08', NULL);

--Create view
CREATE VIEW Sales_Person  
	AS  
	SELECT FirstName, LastName, JobTitle, SalesQuota
	FROM Employee;  

--Test the view
SELECT * FROM Sales_Person;  

--Create a stored procedure

--Test the stored procedure
EXEC sp_SelectAllJobTitles @JobTitle = 'Sales Representative';

--System Defined Functions
--Aggregate Functions

--Average
SELECT AVG(SalesQuota)
FROM Employee
--Return average value

--Count
SELECT COUNT(JobTitle)
FROM Employee
--Return the number of rows

--First Value
SELECT TOP 1 JobTitle 
FROM Employee
ORDER BY BusinessEntityID ASC;
--Returns the first value

--Last Value
SELECT TOP 1 JobTitle 
FROM Employee
ORDER BY BusinessEntityID DESC;
--Returns the last value

--Max Value
SELECT MAX(SalesQuota)
FROM Employee
--Returns the largest value

--Min
SELECT MIN(SalesQuota)
FROM Employee
--Returns the smallest value

--Sum
SELECT SUM(SalesQuota)
FROM Employee
--Returns the sum

--Uppercase
SELECT UPPER(JobTitle)
FROM Employee
--Converts text in a field to uppercase

--Lowercase
SELECT LOWER(JobTitle)
FROM Employee
--Converts text in a field to lowercase

--Substring
SELECT SUBSTRING(FirstName, 1, 3) AS ExtractString
FROM Employee
--Selects characters from a text field

--Length
SELECT FirstName, LEN(LastName) AS LengthofLastName
FROM Employee
--Returns the length of a text field

--Round
SELECT FirstName, ROUND(SalesQuota,0) AS RoundedSalesQuota
FROM Employee
--Round a numeric field to the number of decimals

--User Defined Functions
