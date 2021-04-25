--Switch the Query Editor connection to the DATA9401_PROJECT3 database
USE DATA9401_PROJECT3

--Create a employee table
CREATE TABLE Employee
	(BusinessEntityID INT,
	Department INT,
	EmployeeID NVARCHAR (6),
	FirstName NVARCHAR (50),
	MiddleName NVARCHAR (50),
	LastName NVARCHAR (50),
	JobTitle NVARCHAR (50),
	StartDate DATE NOT NULL,
	EndDate DATE);

--Insert multiple records into employee table
INSERT INTO Employee(
	BusinessEntityID, Department, EmployeeID, FirstName, MiddleName, LastName, JobTitle, StartDate, EndDate
)

VALUES
	(1, 9, '000024', 'Ken', 'J', 'Sánchez', 'Research and Development Engineer', '2009-09-05', NULL),
	(2, 5, '000004', 'Terri', 'Lee', 'Duffy', 'Vice President of Engineering', '2008-01-15', NULL),
	(3, 5, '000007', 'Roberto', 'H', 'Tamburello', 'Engineering Manager', '2008-02-20', NULL),
	(4, 42, '000002', 'Rob', 'B', 'Walters', 'Chief Financial Officer', '2008-01-01', NULL),
	(5, 10, '000022', 'Gail', 'A', 'Erickson', 'Database Administrator', '2009-05-28', NULL),
	(6, 6, '000021', 'Jossef', 'H', 'Goldberg', 'Quality Assurance Technician', '2009-03-15', '2015-05-26'),
	(7, 10, '000016', 'Dylan', 'A', 'Miller', 'Master Scheduler', '2008-09-12', NULL),
	(8, 8, '000009', 'Diane', 'L', 'Margheim', 'Production Control Manager', '2008-03-02', NULL),
	(9, 9, '000006', 'Gigi', 'N', 'Matthew', 'Research and Development Manager', '2008-02-14', NULL),
	(10, 42, '000005', 'Michael', 'C', 'Raheem', 'Marketing Manager', '2008-01-20', NULL),
	(11, 42, '000011', 'Ovidiu', 'V', 'Cracium', 'Marketing Specialist', '2008-04-08', NULL),
	(12, 5, '000017', 'Thierry', 'B', 'D''Hers', 'Senior Design Engineer', '2008-10-25', '2013-02-24'),
	(13, 7, '000015', 'Janice', 'M', 'Galvin', 'Facilities Administrative Assistant','2008-08-02', NULL),
	(14, 8, '000013', 'Michael', 'I', 'Sullivan', 'Production Supervisor - WC45', '2008-06-05', NULL),
	(15, 6, '000014', 'Sharon', 'B', 'Salavaria', 'Control Specialist', '2008-07-14', '2014-02-15'),
	(16, 5, '000020', 'David', 'M', 'Bradley', 'Design Engineer', '2009-01-26', '2013-07-26'),
	(17, 42, '000012', 'Kevin', 'F', 'Brown', 'Marketing Assistant', '2008-05-24', NULL),
	(18, 8, '000018', 'John', 'L', 'Wood', 'Production Technician - WC60', '2008-11-26', NULL),
	(19, 8, '000019', 'Mary', 'A', 'Dempsey', 'Production Technician - WC50', '2008-12-10', NULL),
	(20, 8, '000025', 'Wanida', 'M', 'Benshoof', 'Production Technician - WC40', '2009-11-04', '2014-06-16'),
	(21, 6, '000010', 'Terry', 'J', 'Eminhizer', 'Document Control Manager', '2008-03-31', NULL),
	(22, 7, '000008', 'Sariya', 'E', 'Harnpadoungsataya', 'Facilities Manager', '2008-02-23', NULL),
	(23, 1, '000001', 'Mary', 'E', 'Gibson', 'Chief Executive Officer', '2007-12-21', NULL),
	(24, 33, '000003', 'Jill', 'A', 'Williams', 'Human Resources Manager', '2008-01-05', NULL),
	(25, 33, '000023', 'James', 'R', 'Hamilton', 'Human Resources Administrative Assistant', '2009-06-08', NULL);

--Create a person.contact table
CREATE TABLE Contact
	(ContactTypeID INT,
	Gender NVARCHAR (50),
	FirstName NVARCHAR (50),
	MiddleName NVARCHAR (50),
	LastName NVARCHAR (50),
	EmailAddress NVARCHAR (50),
	PhoneNumber NVARCHAR (25));

--Insert multiple records into person.contact table
INSERT INTO Contact(
	ContactTypeID, Gender, FirstName, MiddleName, LastName, EmailAddress, PhoneNumber
)

VALUES
	(1, 'M', 'Michael', 'C', 'Raheem', 'Michael.Raheem@gibsonconsulting.com', '312-555-2568'),
	(2, 'M', 'Kevin', 'F', 'Brown', 'Kevin.Brown@gibsonconsulting.com', '312-555-0189'),
	(3, 'M', 'John', 'L', 'Wood', 'John.Wood@gibsonconsulting.com', '312-555-0150'),
	(4, 'M', 'Thierry', 'B', 'D''Hers', 'Thierry.D''Hers@gibsonconsulting.com', '312-555-0183'),
	(5, 'F', 'Jill', 'A', 'Williams', 'Jill.Williams@gibsonconsulting.com', '312-555-0121'),
	(6, 'F', 'Mary', 'A', 'Dempsey', 'Mary.Dempsey@gibsonconsulting.com', '312-555-0114'),
	(7, 'F', 'Terri', 'Lee', 'Duffy', 'Terri.Lee@gibsonconsulting.com', '312-555-0175'),
	(8, 'M', 'Michael', 'I', 'Sullivan', 'Michael.Sullivan@gibsonconsulting.com', '312-555-0156'),
	(9, 'F', 'Sharon', 'B', 'Salavaria', 'Sharon.Salvaria@gibsonconsulting.com', '312-555-0138'),
	(10, 'M', 'Roberto', 'H', 'Tamburello', 'Roberto.Tamburello@gibsonconsulting.com', '312-555-0187'),
	(11, 'M', 'Terry', 'J', 'Eminhizer', 'Terry.Eminhizer@gibsonconsulting.com', '312-555-0118'),
	(12, 'F', 'Mary', 'E', 'Gibson', 'Mary.Gibson@gibsonconsulting.com', '312-555-0183'),
	(13, 'F', 'Wanida', 'M', 'Benshoof', 'Wanida.Benshoof@gibsonconsulting.com', '312-555-0141'),
	(14, 'F', 'Gail', 'A', 'Erickson', 'Gail.Erickson@gibsonconsulting.com', '312-555-0139'),
	(15, 'F', 'Gigi', 'N', 'Matthew', 'Gigi.Matthew@gibsonconsulting.com', '312-555-0186'),
	(16, 'M', 'James', 'R', 'Hamilton', 'James.Hamilton@gibsonconsulting.com', '312-555-0122'),
	(17, 'M', 'Dylan', 'A', 'Miller', 'Dylan.Miller@gibsonconsulting.com', '312-555-0156'),
	(18, 'F', 'Diane', 'L', 'Margheim', 'Diane.Margheim@gibsonconsulting.com', '312-555-0138'),
	(19, 'M', 'Jossef', 'H', 'Goldberg', 'Jossef.Goldberg@gibsonconsulting.com', '312-555-0189'),
	(20, 'F', 'Janice', 'M', 'Galvin', 'Janice.Galvin@gibsonconsulting.com', '312-555-0117'),
	(22, 'M', 'Ovidiu', 'V', 'Cracium', 'Ovidiu.Cracium@gibsonconsulting.com', '312-555-0181'),
	(23, 'M', 'Ken', 'J', 'Sánchez', 'Ken.Sánchez@gibsonconsulting.com', '312-555-0142'),
	(24, 'M', 'Rob', 'B', 'Walters', 'Rob.Walters@gibsonconsulting.com', '312-555-0100'),
	(24, 'M', 'David', 'M', 'Bradley', 'David.Bradley@gibsonconsulting.com', '312-555-0172'),
	(25, 'M', 'Sariya', 'E', 'Harnpadoungsataya', 'Sariya.Harnpadoungsataya@gibsonconsulting.com', '312-555-0176');

--Inner join
SELECT Employee.FirstName, Employee.LastName, Contact.FirstName, Contact.LastName
FROM Employee INNER JOIN Contact 
ON Employee.Department = Contact.ContactTypeID;

--Left outer join
SELECT Employee.FirstName, Employee.LastName, Contact.FirstName, Contact.LastName
FROM Employee LEFT OUTER JOIN Contact 
ON Employee.Department = Contact.ContactTypeID;

--Right outer join
SELECT Employee.FirstName, Employee.LastName, Contact.FirstName, Contact.LastName
FROM Employee RIGHT OUTER JOIN Contact 
ON Employee.Department = Contact.ContactTypeID;

--Full outer join
SELECT Employee.FirstName, Employee.LastName, Contact.FirstName, Contact.LastName
FROM Employee FULL OUTER JOIN Contact 
ON Employee.Department = Contact.ContactTypeID;

--Union
SELECT Employee.FirstName, Employee.LastName 
FROM Employee
WHERE StartDate BETWEEN '2008-01-01' AND '2009-01-01'
UNION
SELECT Contact.FirstName, Contact.LastName 
FROM Contact
WHERE MiddleName = 'M'

--Intersect
SELECT FirstName 
FROM Employee   
INTERSECT   
SELECT FirstName 
FROM Contact  
WHERE Contact.Gender = 'F'  
ORDER BY FirstName;  

--Except
SELECT FirstName
FROM Employee   
EXCEPT   
SELECT FirstName 
FROM Contact  
WHERE Contact.Gender = 'F'  
ORDER BY FirstName;
