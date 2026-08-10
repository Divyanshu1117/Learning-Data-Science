CREATE DATABASE schooldb;
USE schooldb;
SELECT * FROM student;
DELETE FROM student WHERE date_of_birth IS NULL;
DELETE FROM student WHERE id = 2;
DELETE FROM student WHERE age < 20;
DELETE FROM student;
DROP TABLE student;