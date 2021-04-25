--Switch the Query Editor connection to the DATA9401_PROJECT5 database
USE DATA9401_PROJECT5

--Create a Grade_Record table
CREATE TABLE Grade_Record
	(studentID INT NOT NULL,
	First_name NVARCHAR(50) NOT NULL,
	Lastname NVARCHAR(50) NOT NULL,
	Midtermexam NVARCHAR(50) NOT NULL,
	Finalexam NVARCHAR(50) NOT NULL,
	assignment1 NVARCHAR(50) NOT NULL,
	assignment2 NVARCHAR(50) NOT NULL,
	Totalpoints INT NOT NULL,
	Studentaverage NVARCHAR(50) NOT NULL,
	Grade NVARCHAR(50) NOT NULL
);

--Importing data from a CSV file
BULK INSERT Grade_Record FROM 'C:\Users\Jordan\Documents\BVC\DATA9401\Class_Project\Project5\Grade_Record.csv'
   WITH (
      FORMAT = 'CSV',
	  FIRSTROW = 2,
      FIELDTERMINATOR = ',',
      ROWTERMINATOR = '\n'
);

--Create Students_Grades view
CREATE VIEW Students_Grades
AS
SELECT studentID, Midtermexam, Finalexam, assignment1, assignment2, Totalpoints, Studentaverage, Grade
FROM Grade_Record;

--Create Students_Grades_Results table
SELECT *
INTO Students_Grades_Results
FROM Students_Grades;

--Identify Midtermexam, Finalexam, assignments grade with text
SELECT studentID, Midtermexam, 'Midtermexam' AS Midterm_Exam_txt, Finalexam, 'Finalexam' AS Final_Exam_txt, assignment1, 'assignment1' AS assignment1_txt, assignment2, 'assignment2' AS assignment2_txt, Totalpoints, Studentaverage, Grade
FROM Students_Grades_Results;

--Grades view with text
CREATE VIEW Grades
AS
SELECT studentID, Midtermexam, 'Midtermexam' AS Midterm_Exam_txt, Finalexam, 'Finalexam' AS Final_Exam_txt, assignment1, 'assignment1' AS assignment1_txt, assignment2, 'assignment2' AS assignment2_txt, Totalpoints, Studentaverage, Grade
FROM Students_Grades_Results;

--Create Grades table
SELECT *
INTO Grades_Results
FROM Grades;

/*Create StudentID_Grades view.
Combine finalexam into Midtermexam AS exam and assignment2 into assignment1 AS assignment */
CREATE VIEW Students_Grades
AS
SELECT studentID, Midtermexam As exam, 'Midtermexam' AS exam_Txt, assignment1 AS assignment, 'assignment1' AS assignment_Txt, Totalpoints, Studentaverage, Grade
FROM Grades_Results
UNION
SELECT studentID, Finalexam, 'Finalexam' AS Final_Exam_Txt, assignment2, 'assignment2' AS assignment2_Txt, Totalpoints, Studentaverage, Grade 
FROM Grades_Results;

--Select Student_Grade view and create a Student_Grade_1NF table
SELECT *
INTO Students_Grades_1NF
FROM Students_Grades;

--Create a Students_2NF table
SELECT DISTINCT studentID, First_name, Lastname INTO Students_2NF
FROM Grade_Record;

--Create a Students_Grades_2NF table
SELECT DISTINCT studentID, Grade, Totalpoints INTO Students_Grades_2NF
FROM Grade_Record;

--Create a Students_3NF table
SELECT DISTINCT studentID, First_name, Lastname, Grade INTO Students_3NF
FROM Grade_Record;

--Create a Students_Grades_3NF table
SELECT DISTINCT Grade, exam, assignment, Totalpoints, Studentaverage INTO Students_Grades_3NF
FROM Students_Grades_1NF;

--Join
