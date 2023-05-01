
--|  Student Management System is purely developed by using DBMS queries.
--|  The main functions involved to develop this project is developing ER diagram, DDL/DML, SQL constraints,
--|  Retrieving data using the select function, Restrictions, and sorting functions,  Aggregate, and grouping, 
--|  Single row function, Joins, and finally Subquery.

create database studentDetails;
use studentDetails;

--                                   <<<Creating tables or Entities>>> 
--> Create student table
create table student(
s_id int primary key,
firstName varchar(30) not null,
lastName varchar(20),
dob date not null,
email varchar(50)not null,
phone varchar(11) not null,
city varchar(20));

--> Create course table
create table course(
c_id int primary key,
c_name varchar(20) not null,
c_description varchar(50),
c_fees decimal(10,2),
c_duration int );

--> Create table batch
create table batch(
b_id char(2) primary key,
b_name varchar(30) not null,
startDate date);

--> Create enrollment table
create table enrollment(
e_id int primary key,
s_id int,
c_id int,
b_id char(2) not null,
e_date date,
foreign key(b_id) references batch(b_id),
foreign key(s_id) references student(s_id),
foreign key(c_id) references course(c_id));

--> Create grade table
create table grade(
id int,
enrollment_id int,
primary key(id),
foreign key(enrollment_id) references enrollment(e_id));


--                          <<<Insert data into the records of the entities>>>
--> Insert data into student table
insert into student values(20401, 'Sai Praveen', 'Ande', '2001-10-22', 'saipraveenande@gmail.com', '79974-09920', 'Palakollu');
insert into student values(20410, 'Lavanya', 'Koya', '2001-12-25', 'lavanya.k1425@gmail.com', '62818-77239', 'Mogaltur');
insert into student values(20403, 'Vamsi Srinivas', 'Baswani', '2001-01-01', 'vamsisrinivas@gmail.com', '79953-34947', 'Kalavapudi');
insert into student values(21403, 'Raja Blessing', 'Penumaka', '2001-01-27', 'rajablessing@gmail.com', '91774-35298', 'Bhimavaram');
insert into student values(21404, 'Sai Subhramanyam', 'Peta', '2001-01-01', 'petasaisubhramanyam@gmail.com', '90148-84989', 'Ravulapalem');
insert into student values(21407, 'Pavan Puthram', 'initial', '2001-04-25', 'pavanputhram@gmail.com', '93470-74845', 'Mogalthur');
insert into student values(19456, 'nazir shaik', 'Ahamadh', '2001-01-01', 'nazir@gmail.com', '74164-90330', 'Palakollu');
insert into student values(19428, 'Jagadheesh', 'Gudavalli', '2001-01-01', 'jagadhishgudavalli@gmail.com', '97041-81344', 'Chintaparru');
insert into student values(19451, 'Ajay', 'Naidu', '2001-10-22', 'ajaynaidu@gmail.com', '93460-53515', 'Jangareaddy Gudem');
insert into student values(19445, 'Rajesh', 'Palli', '2001-10-22', 'rajeshpalli@gmail.com', '96528-11768', 'Marteru');
insert into student values(19460, 'Venkat Ready', 'Uggam', '2001-01-01', 'venkatreaddy@gmail.com', '80081-67450', 'Karnool');
insert into student values(19450, 'Dhanun Jai', 'Naidu', '2001-01-01', 'dhanunjai@gmail.com', '86887-89757', 'Vijag');
insert into student values(19452, 'Yeshwanth', 'Telagamsetti', '2001-01-01', 'yeshwanthtelagamsetti@gmail.com', '94903-46929', 'Narsapuram');
insert into student values(19439, 'Nikhil Kumar', 'Chowdary', '2001-06-06', 'nikhilchowdhary@gmail.com', '93477-47499', 'Guntur');
insert into student values(19420, 'charan sudheer', 'chegondi', '2001-01-01', 'charansudheer@gmail.com', '93914-37416', 'Perupalem');
insert into student values(19408, 'Srinivas', 'Naidu', '2001-01-01', 'srinivasnaidu@gmail.com', '91215-23960', 'Perupalem');
insert into student values(19463, 'Mallesh', 'initial', '2001-01-01', 'mallesh@gmail.com', '93903-93067', 'Tanuku');
insert into student values(19430, 'Manikanta Balaji', 'Gurrala', '2001-01-01', 'balajimanikanta@gmail.com', '84988-71774', 'East Godavari');
insert into student values(19401, 'Vera Venkata naga Sai', 'Ande', '2001-01-01', 'nagasai@gmail.com', '63028-24847', 'Bhaggeswaram');

--> Insert data into course table
insert into course values(101, 'C-Programing', 'Basic introduction programing language', 3999.00, 36);
insert into course values(102, 'Python', 'Best and easest Programing Language', 2999.00, 47);
insert into course values(103, 'SQL', 'Structural Query Language', 1499.00, 23);
insert into course values(104, 'Java', 'Companies mostly using language', 3999.00, 52);
insert into course values(105, 'C++', 'Extension for C with OOPs', 1999.00, 46);
insert into course values(106, 'AWS', 'Cloud Computing with Amazon', 1999.00, 37);
insert into course values(107, 'SDLC', 'Sofware Engineering Principles', 999.00, 22);

--> Insert data into batch table
insert into batch values('B4','Rainy 2023', '2023-07-01');
insert into batch values('B3','summer 2023', '2023-03-01');
insert into batch values('B2','Winter 2022', '2022-12-01');
insert into batch values('B1','Rainy 2022', '2022-07-01');

--> Insert data into enrollment table
insert into enrollment values(201, 20401,  101, 'B1', '2022-06-22');
insert into enrollment values(202, 20410,  101, 'B1', '2022-06-22');
insert into enrollment values(203, 20403,  102, 'B1', '2022-06-22');
insert into enrollment values(204, 19456,  101, 'B1', '2022-05-21');
insert into enrollment values(205, 19428,  101, 'B1', '2022-05-21');
insert into enrollment values(206, 19451,  101, 'B1', '2022-05-21');
insert into enrollment values(207, 19445,  105, 'B1', '2022-06-12');
insert into enrollment values(208, 19450,  101, 'B1', '2022-05-21');
insert into enrollment values(209, 19460,  101, 'B1', '2022-05-21');
insert into enrollment values(210, 19439,  101, 'B1', '2022-05-21');
insert into enrollment values(211, 19452,  101, 'B2', '2022-11-29');
insert into enrollment values(212, 20401,  102, 'B2', '2022-10-22');
insert into enrollment values(213, 20410,  102, 'B2', '2023-10-22');
insert into enrollment values(214, 20410,  103, 'B2', '2023-10-22');
insert into enrollment values(215, 19439,  104, 'B2', '2022-11-15');
insert into enrollment values(216, 19456,  105, 'B2', '2022-11-15');
insert into enrollment values(217, 19428,  105, 'B2', '2022-11-15');
insert into enrollment values(218, 19451,  105, 'B2', '2022-11-15');
insert into enrollment values(219, 19450,  105, 'B2', '2022-11-15');
insert into enrollment values(220, 19456,  105, 'B2', '2022-11-15');
insert into enrollment values(221, 19460,  105, 'B2', '2022-11-15');
insert into enrollment values(222, 20401,  107, 'B2', '2022-10-22');
insert into enrollment values(223, 20403,  107, 'B2', '2022-10-22');
insert into enrollment values(224, 21403,  107, 'B2', '2022-10-22');
insert into enrollment values(225, 21404,  107, 'B2', '2022-10-22');
insert into enrollment values(226, 21407,  107, 'B2', '2022-10-22');
insert into enrollment values(227, 20401,  103, 'B3', '2023-02-16');
insert into enrollment values(228, 19451,  104, 'B3', '2023-02-01');
insert into enrollment values(229, 19460,  104, 'B3', '2023-02-01');
insert into enrollment values(230, 19452,  104, 'B3', '2023-01-21');
insert into enrollment values(231, 20401,  106, 'B4', '2023-04-01');
insert into enrollment values(232, 19452,  106, 'B4', '2023-04-25');
insert into enrollment values(233, 19450,  106, 'B4', '2023-04-25');
insert into enrollment values(234, 19451,  106, 'B4', '2022-04-25');

--> Insert data into grade table
insert into grade values(1, 201, 8.0);
insert into grade values(2, 202, 8.2);
insert into grade values(3, 203, 7.1);
insert into grade values(4, 204, 6.8);
insert into grade values(5, 205, 7.6);
insert into grade values(6, 206, 8.6);
insert into grade values(7, 207, 6.4);
insert into grade values(8, 208, 8.4);
insert into grade values(9, 209, 8.5);
insert into grade values(10, 210, 7.2);
insert into grade values(11, 211, 7.8); 
insert into grade values(12, 212, 9.2);
insert into grade values(13, 213, 7.9);
insert into grade values(14, 214, 8.2);
insert into grade values(15, 215, 6.9);
insert into grade values(16, 216, 7.0);
insert into grade values(17, 217, 7.8);
insert into grade values(18, 218, 8.1);
insert into grade values(19, 219, 8.2);
insert into grade values(20, 220, 7.0);
insert into grade values(21, 221, 8.1);
insert into grade values(22, 222, 8.3);
insert into grade values(23, 223, 7.8);
insert into grade values(24, 224, 8.2);
insert into grade values(25, 225, 7.9);
insert into grade values(26, 226, 8.9);
insert into grade values(27, 227, 8.5);
insert into grade values(34, 228, null);
--> Insert NULL values into a column in 3 ways
insert into grade(id, enrollment_id, CGPA) values(28, 229, NULL);
insert into grade(id, enrollment_id, CGPA) values(29, 230, NULL);
insert into grade(id, enrollment_id) values(30, 231);
insert into grade(id, enrollment_id) values(31, 232);
insert into grade values(32, 233, NULL);
insert into grade values(33, 234, NULL);


--                                  ***  Apply DML commands on Existing Tables  ***

--> ADD column(CGPA) into table with ALTER
ALTER TABLE grade ADD CGPA FLOAT;

--> Change data type of particular column
ALTER TABLE grade ALTER COLUMN CGPA VARCHAR(7);

--> Update value of column which satisfies specific condition
UPDATE grade SET CGPA = 'Ongoing' WHERE CGPA IS NULL;

-->delete rows in student table based on a condition
DELETE FROM student WHERE s_id IN (19463, 19401);


--                                     *** RETRIEVING DATA USING SELECT ***

-->  Display all the columns of the student table!
SELECT * FROM student;

SELECT * FROM grade WHERE CGPA = 'Ongoing';

-->  Display the columns c_name aliases course name of table name course
SELECT c_id AS ID, c_name AS Name_Of_Course, c_fees AS 'course Fees', c_duration AS courseDurationInHours  FROM course;

-->  Display the columns c_fee and c_name using concatenation and aliases course details of table name course!
SELECT CONCAT(c_name, '(Fees:', c_fees, ')') AS 'Course Details' FROM course

-->  Display the course fee and increase in course fee by 3000 where the course duration is 45_hr!
SELECT c_name, c_fees+301 AS 'New Fees' FROM course WHERE c_duration >45; 

-->  Remove the duplicate value from course duration with a student ID from the table name course!
SELECT DISTINCT c.c_duration AS 'Duration (Hrs)', e.s_id FROM course c
INNER JOIN enrollment e ON e.c_id = c.c_id;

-->  Display CGPA on a specific course
SELECT * FROM grade WHERE enrollment_id IN (SELECT e_id FROM enrollment WHERE c_id = 102);



--                                   ***  RESTRICTIONS AND SORTING  ***

--> Display the student ID and the first name from the table name student whose city is Palakollu!
SELECT s_id AS 'PIN Number', firstName FROM student where city = 'Palakollu';

--> Display all the data of the table course whose course name is ‘Python’.
SELECT * FROM student WHERE s_id IN (SELECT s_id FROM enrollment WHERE c_id IN (SELECT c_id FROM course WHERE c_name='C++'))

--> Display all the data of the table course whose course fee range is less than 2000!
SELECT * FROM course WHERE c_fees < 2000;

--> Display the Lastname and city of the table student where the student’s first name starts with ‘a’!
SELECT firstName, lastName, city FROM student 
WHERE firstName LIKE 'a%';

--                                    *** AGGREGATE AND GROUPING ***
--> Display the average course fee for all the courses in the given table!
SELECT AVG(c_fees) AS 'Average Fees' from course

--> Display the minimum and maximum course fees in the given table!
SELECT MIN(c_fees) AS 'Minimum Fees', MAX(c_fees) AS 'Maximum Fees' FROM course

--> Display the count number of course names from the table name course!
SELECT COUNT(c_name) AS 'Number of Courses' FROM course

--> Display the total course fee in the table name course!
SELECT SUM(c_fees) AS TotalFees FROM course


--                                    *** SINGLE ROW FUNCTION  ***

--> Display the student ID and student first name and city from the student table where convert first name into uppercase & city into lower case!
SELECT UPPER(firstName) AS 'First Name', LOWER(city) AS City FROM student;

--> Display the student ID and student firstname lastname together and length of full name from table student use character-manipulation function!
SELECT s_id, CONCAT(firstName, ' ', lastName) AS 'Full Name', LEN(CONCAT(firstName, ' ', lastName)) AS 'Full Name Length' FROM student;

--> Student full progress
SELECT * FROM grade WHERE enrollment_id IN (SELECT e_id FROM enrollment WHERE s_id = 20401);

--> Display sort records based on highest course fees
select * from course order by c_fees desc;

--> Display records based on starting month of course
select * from batch where month(startDate) = 3;


--                                             *** JOINS ***

--> Display the registration number for user’s table and student’s first name on the table student use inner join!
SELECT e.e_id AS 'Registration Number', s.firstName FROM student s
INNER JOIN enrollment e ON e.s_id = s.s_id;

--> Display the registration number for user’s table and student’s first name on the table student use left join and order by the first name.
SELECT DISTINCT e.s_id AS 'Registration Number', s.firstName FROM student s
LEFT JOIN enrollment e ON e.s_id = s.s_id
ORDER BY s.firstName;

--> Select all students’ first names and last names and city in the given table using self-join and order by the city!
SELECT s1.firstName, s2.lastName, s1.city FROM student s1
INNER JOIN student s2 ON s1.phone =  s2.phone
ORDER BY s1.city;

--> Number of students enrolled in each course
SELECT C.c_name, count(*) AS num_students FROM course C
JOIN enrollment E ON E.c_id = C.c_id
GROUP BY C.c_name;

--> Retrive records of a student with student ID
SELECT s.firstName, s.lastName, c.c_name, g.CGPA FROM student s 
JOIN enrollment e ON e.s_id = s.s_id
JOIN grade g ON g.enrollment_id = e.e_id
JOIN course c ON c.c_id = e.c_id
WHERE s.s_id = 20401;

--> Display studentID and minimum course fee from the course table and group by student ID having a course fee less than 2000 and sort the minimum course fee in descending order!
SELECT s.s_id AS Student_ID, MIN(c.c_fees) AS Minimum_Course_Fee
FROM student s 
JOIN enrollment e ON e.s_id =  s.s_id 
JOIN course c ON e.c_id = c.c_id
WHERE c.c_fees < 2000
GROUP BY s.s_id
ORDER BY Minimum_Course_Fee DESC;

--. Retrive names of all students who enrolled into a particular course after a date
SELECT b.b_id, s.firstName, s.lastName, c.c_name FROM student s
JOIN enrollment e ON e.s_id = s.s_id
JOIN course c ON e.c_id= c.c_id
JOIN batch b ON e.b_id = b.b_id
WHERE e.e_date > '2022-12-31';

--> Retrive names and grades of all students in a particular course
SELECT s.firstName, s.lastName, g.CGPA FROM student s
JOIN enrollment e ON e.s_id = s.s_id
JOIN grade g ON g.enrollment_id = e.e_id
JOIN course ON e.c_id = course.c_id
WHERE course.c_name='C++';

--Retrieve the names and enrollment dates of all students enrolled in a course, along with the name of the batch
SELECT s.firstName, s.lastName, e.e_date From student s
JOIN enrollment e ON e.s_id = s.s_id
Join batch b ON e.b_id = b.b_id
JOIN course c ON e.c_id = c.c_id
WHERE c.c_name = 'SQL';

--Retrieve the names and grades of all students enrolled in a batch, along with the name of the course 
SELECT s.firstName, s.lastName, c.c_name, g.CGPA FROM student s
JOIN enrollment e ON e.s_id = s.s_id
JOIN grade g ON e.e_id = g.enrollment_id
JOIN batch b ON e.b_id= b.b_id
JOIN course c ON e.c_id = c.c_id
WHERE b.b_id = 'B1';

--Retrieve the names and total fees paid by all students enrolled in a course
SELECT s.firstName, s.lastName, c.c_fees
FROM student s
JOIN enrollment e ON e.s_id = s.s_id
JOIN course c ON e.c_id = c.c_id
WHERE c.c_name = 'Python';

--> Retrieve course name, batch id, enrollment data and cgpa of a specific student
SELECT c.c_name, b.b_id, e.e_date, g.CGPA FROM course c
JOIN enrollment e ON e.c_id = c.c_id
JOIN batch b ON b.b_id = e.b_id
JOIN grade g ON g.enrollment_id = e.e_id
JOIN student s ON s.s_id = e.s_id
where s.firstName = 'Sai Praveen';


--                                              *** SUBQUERY ***

--> Display the first name and email of the student where the course fee is minimum
SELECT firstName, email FROM student
WHERE s_id IN (SELECT s_id FROM enrollment WHERE c_id IN (SELECT c_id FROM course WHERE c_fees IN (SELECT MIN(c_fees) FROM course)))  

SELECT firstName, email FROM student
WHERE s_id IN (SELECT e.s_id  FROM enrollment e JOIN course c ON e.c_id = c.c_id WHERE c.c_fees IN ( SELECT MIN(c_fees) FROM course)) 

--> Display the phone number of the student of who’s registration number is 220!
SELECT phone, firstName FROM student WHERE s_id = ( SELECT s_id FROM enrollment WHERE e_id = 226)

--> Display the registration number who live in Mogalthur
SELECT e_id AS Registration_Number FROM enrollment WHERE s_id IN (SELECT s_id FROM student WHERE city = 'Mogalthur')

--> Retrieve the names of students who have enrolled in at least one course:
SELECT firstName, lastName FROM student where s_id in (select s_id from enrollment);

--> Drop foreign key constraint in a table
EXEC sp_helpconstraint 'enrollment';
alter table enrollment drop constraint FK__enrollment__b_id__55F4C372;
alter table grade drop constraint FK__grade__enrollmen__4A8310C6;

--> Drop different tables 
drop table student;
drop table batch;
drop table enrollment;
drop table course;
drop table grade;
