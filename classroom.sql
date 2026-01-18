-- create database
CREATE DATABASE Classroom;

-- select which database use
USE Classroom;

-- create table
CREATE TABLE Students(
name VARCHAR(50) NOT NULL,
roll_no INT PRIMARY KEY AUTO_INCREMENT,
class VARCHAR(10) DEFAULT  "10th",
address VARCHAR(100),
pincode INT,
phone_no VARCHAR(10) NOT NULL,
father_name VARCHAR(50),
mother_name VARCHAR(50)
);

-- insert the only one row for table
INSERT INTO Students (name, address, pincode, phone_no, father_name, mother_name)
VALUES ("sam", "ishaq", 136128, "8168487782", "mr. rajbir singh", "mrs. neelam rani");

-- insert more record only for one time
INSERT INTO Students (name, address, pincode, phone_no, father_name, mother_name)
VALUES
("harman", "pehowa", 136128, "9416443485", "mr. ramesh", "mrs. rani"),
("sumit", "cheeka", 137127, "9993401010", "mr. rajesh kumar", "mrs. kusum"),
("shiv", "cheeka", 137127, "9416444286", "mr. rampal", "mrs. suman"),
("harshit", "pehowa", 136128, "9413673485", "mr. rakesh", "mrs. seema rani"),
("sumit", "cheeka", 137127, "9997620110", "mr. rajesh kumar", "mrs. kavita"),
("shivakshi", "cheeka", 137127, "9417001580", "mr. ram", "mrs. shreya"),
("heena", "pehowa", 136128, "9416903801", "mr. omparkesh", "mrs. komal rani"),
("asha", "cheeka", 137127, "9898705725", "mr. raj kumar", "mrs. anita"),
("sanjana", "cheeka", 137127, "9990170457", "mr. rampal", "mrs. payal"),
("himanshu", "pehowa", 136128, "9960380225", "mr. aman", "mrs. reetu rani"),
("awin", "cheeka", 137127, "9985700267", "mr. sukdev kumar", "mrs. kavita"),
("om", "cheeka", 137127, "9417088030", "mr. ram krishan", "mrs. sheetal"),
("aslin", "pehowa", 136128, "9400503901", "mr. naresh", "mrs. baby"),
("kritika", "cheeka", 137127, "9993450134", "mr. javbir kumar", "mrs. kusum"),
("jasnoor", "cheeka", 137127, "9983470189", "mr. harikesh", "mrs. soroj"),
("alwish", "pehowa", 136128, "9416800267", "mr. hemat", "mrs. neha"),
("sneha", "cheeka", 137127, "9990054778", "mr. roop kumar", "mrs. kavita"),
("akri", "cheeka", 137127, "9860015793", "mr. balbir", "mrs. divya"),
("neha", "pehowa", 136128, "9998456701", "mr. deep", "mrs. jaspreet"),
("ritu", "cheeka", 137127, "8100744801", "mr. raj singh", "mrs. sapna"),
("sanjana", "cheeka", 137127, "9945027610", "mr. rakesh", "mrs. sheela"),
("minakshi", "pehowa", 136128, "8160059324", "mr. amandeep", "mrs. usha"),
("muskan", "cheeka", 137127, "9990287768", "mr. sahil kumar", "mrs. rekha"),
("divya", "cheeka", 137127, "9410006282", "mr. jetha", "mrs. krishna");

-- fetch the all data
SELECT * FROM Students; 

-- fetch/ see only name
SELECT name AS Students_name FROM Students;

-- delete the column (pincode)
ALTER TABLE Students
DROP COLUMN pincode;

-- delete the only one rows where roll no is 4
DELETE FROM Students
WHERE roll_no = 4;

-- change the name where rollno is 1 (Update table)
UPDATE Students
SET name = "samiksha"
WHERE roll_no = 1;

-- change the table name
ALTER TABLE Students
RENAME Students_details;

-- chnage the column name
ALTER TABLE Students_details
RENAME COLUMN name TO stdname;

-- see only students where name start with s
SELECT * FROM Students_details
WHERE stdname LIKE 'S%';

-- ADD new column
ALTER TABLE Students_details
ADD COLUMN date DATE;

-- find the null values (Address)
SELECT * FROM students_details
WHERE address IS NULL;

-- sort the data according to the name(a to z)
SELECT * FROM Students_details
ORDER BY stdname ASC;

-- count the all students with address
SELECT address, count(*) FROM Students_details
GROUP BY address;

-- capital all letter of the name
SELECT UPPER(stdname) FROM Students_details;

-- only first letter capital other small 
SELECT CONCAT(
         UPPER(LEFT(stdname, 1)),
         LOWER(SUBSTRING(stdname, 2)))
         FROM Students_details;