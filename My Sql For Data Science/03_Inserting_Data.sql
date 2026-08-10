-- CREATE DATABASE schooldb;
USE schooldB;
CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    grade VARCHAR(10),
    date_of_birth DATE
);

DESCRIBE student;
SELECT * FROM student;

-- INSERT INTO student () VALUES ();
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (1, 'Ayesha Khan', 16, '10th', '2007-05-15');
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (2, 'Ravi Sharma', 17, '11th', '2006-03-22'); 
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (3, 'Meena Joshi', 15, '9th', NULL);
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (4, 'Arjun Verma', 18, '12th', NULL);
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (5, 'Sara Ali', 16, '10th', NULL);
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (6, 'Karan Mehta', 17, '11th', NULL);
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (7, 'Tanya Roy', 15, '9th', NULL);
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (8, 'Vikram Singh', 18, '12th', NULL);
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (9, 'Anjali Desai', 16, '10th', NULL);
-- INSERT INTO student (id, name, age, grade, date_of_birth) VALUES (10, 'Farhan Zaidi', 17, '11th', NULL);

-- INSERT into student(id, name, age, grade, date_of_birth) VALUES
-- (),
-- (),
-- (),
-- ();

-- INSERT INTO student (id, name, age, grade) VALUES
-- (15, 'Pasha', 16, '10th'),
-- (25, 'Lakhan Singh', 17, '11th'),
-- (35, 'Rockey Pehelwan', 15, '9th'),
-- (45, 'Pulkit', 18, '12th'),
-- (55, 'Divyanshu', 16, '10th'),
-- (65, 'Karan Peshwan', 17, '11th'),
-- (75, 'Aayush', 15, '9th'),
-- (85, 'Paras', 18, '12th'),
-- (95, 'Lovish', 16, '10th'),
-- (105, 'Lakshay', 17, '11th');