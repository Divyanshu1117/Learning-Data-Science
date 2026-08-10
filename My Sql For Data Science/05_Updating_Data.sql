CREATE DATABASE schooldb;
USE schooldb;
-- SELECT * FROM student;
UPDATE student SET grade = "X" WHERE grade = "10th";
UPDATE student SET grade = "X";
UPDATE student SET age = age + 1 WHERE age < 18;
SELECT * FROM student;
SET SQL_SAFE_UPDATES = 0;
SET SQL_SAFE_UPDATES = 1;