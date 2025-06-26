CREATE DATABASE COLLEGE;

USE COLLEGE;

CREATE TABLE Courses
(
	Course_id INT PRIMARY KEY,
	Course_name varchar(50),
	Duration_month INT  );

	CREATE TABLE STUDENTS
	(
	Student_id INT PRIMARY KEY,
	FullName varchar(50),
	Course_id INT,
	Age INT,
	FOREIGN KEY(Course_id) REFERENCES Courses(Course_id ) );

	--INSERTING DATA INTO COURSES---
	INSERT INTO Courses 
	VALUES  (111,'FULLSTACK JAVA' , 6);

	INSERT INTO Courses 
	VALUES(112, 'ORACLE', 3);  
	
	INSERT INTO Courses 
	VALUES  (113, 'DATASCEINCE', 4);

	INSERT INTO Courses 
	VALUES  (114, 'PHYTON', 6);

	SELECT * FROM Courses;

----INSERTING DATA INTO STUDENTS----
	INSERT INTO STUDENTS
	VALUES (101,'KEERTHI DAS', 111, 24);

	INSERT INTO STUDENTS
	VALUES (102,'NEERJA SHARMA', 112, 27);

	INSERT INTO STUDENTS
	VALUES (103,'KIRAN RAO', 111, 23);

	INSERT INTO STUDENTS
	VALUES (104,'SWETHA', 113, 25);

	INSERT INTO STUDENTS
	VALUES (105,'RAVI KUMAR', 112, 24);

SELECT * FROM STUDENTS;

--SELECT SPECIFIC COLUMN---
SELECT FullName, Course_id FROM STUDENTS;

---SELECT WITH WHERE --
SELECT * FROM Courses
WHERE Duration_month <6;

---SELECT WITH OR --
SELECT * FROM STUDENTS
WHERE course_id = 112 OR course_id = 113;


--SELECT WITH WHERE & AND---
SELECT * FROM STUDENTS
WHERE Age<25 AND Course_id=111;

--SELECT WITH LIKE---
SELECT * FROM STUDENTS
WHERE FullName LIKE 'K%';
 
 --SELECT WITH BETWEEN--
SELECT * FROM STUDENTS
WHERE Age BETWEEN 24 AND 27;

---SELECT WITH ORDER--
SELECT * FROM STUDENTS
ORDER BY Age DESC;

SELECT * FROM Students
ORDER BY age ASC;


SELECT s.FullName, c.course_name
FROM Students s
JOIN Courses c ON s.course_id = c.course_id;




---SELECT specific columns + WHERE + AND + ORDER BY
SELECT s.FullName, c.course_name, s.age
FROM Students s
JOIN Courses c ON s.course_id = c.course_id
WHERE s.age BETWEEN 23 AND 25 AND c.Duration_month >= 4
ORDER BY s.FullName;



