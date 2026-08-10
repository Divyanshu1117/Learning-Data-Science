CREATE DATABASE divyanshu;
USE divyanshu;
SELECT * FROM students;
SELECT @@autocommit;
SET autocommit = 0;
SET autocommit = 1;

INSERT INTO students (id, age, email, is_passed, name) VALUES 
(32, 34, "cold@gmail.com", 1, "Divyanshu");

START TRANSACTION;
UPDATE students SET age = age + 1 where id = 1;
UPDATE students SET age = age - 1 where id = 2;
COMMIT;
ROLLBACK;

-- INSERT INTO students (id, age, email, is_passed, name) VALUES
-- (1, 18, 'aarav01@gmail.com', 1, 'Aarav Sharma'),
-- (2, 19, 'vivaan02@gmail.com', 1, 'Vivaan Kumar'),
-- (3, 20, 'aditya03@gmail.com', 1, 'Aditya Singh'),
-- (4, 18, 'arjun04@gmail.com', 0, 'Arjun Verma'),
-- (5, 21, 'rohan05@gmail.com', 1, 'Rohan Gupta'),
-- (6, 20, 'rahul06@gmail.com', 1, 'Rahul Mehta'),
-- (7, 19, 'aman07@gmail.com', 0, 'Aman Yadav'),
-- (8, 22, 'karan08@gmail.com', 1, 'Karan Kapoor'),
-- (9, 20, 'mohit09@gmail.com', 1, 'Mohit Saini'),
-- (10, 18, 'harsh10@gmail.com', 1, 'Harsh Bansal'),
-- (11, 21, 'rohit11@gmail.com', 0, 'Rohit Jain'),
-- (12, 19, 'nikhil12@gmail.com', 1, 'Nikhil Verma'),
-- (13, 20, 'yash13@gmail.com', 1, 'Yash Malhotra'),
-- (14, 18, 'dev14@gmail.com', 0, 'Dev Kumar'),
-- (15, 22, 'sumit15@gmail.com', 1, 'Sumit Sharma'),
-- (16, 19, 'ankit16@gmail.com', 1, 'Ankit Gupta'),
-- (17, 20, 'deepak17@gmail.com', 0, 'Deepak Singh'),
-- (18, 21, 'manish18@gmail.com', 1, 'Manish Kumar'),
-- (19, 18, 'sahil19@gmail.com', 1, 'Sahil Verma'),
-- (20, 20, 'varun20@gmail.com', 0, 'Varun Mehta'),
-- (21, 22, 'tushar21@gmail.com', 1, 'Tushar Saini'),
-- (22, 19, 'prince22@gmail.com', 1, 'Prince Yadav'),
-- (23, 21, 'vikas23@gmail.com', 0, 'Vikas Sharma'),
-- (24, 20, 'akash24@gmail.com', 1, 'Akash Gupta'),
-- (25, 18, 'sachin25@gmail.com', 1, 'Sachin Kumar'),
-- (26, 22, 'gautam26@gmail.com', 1, 'Gautam Singh'),
-- (27, 19, 'abhishek27@gmail.com', 0, 'Abhishek Verma'),
-- (28, 21, 'sumit28@gmail.com', 1, 'Sumit Kapoor'),
-- (29, 20, 'naveen29@gmail.com', 1, 'Naveen Jain'),
-- (30, 18, 'piyush30@gmail.com', 0, 'Piyush Bansal');