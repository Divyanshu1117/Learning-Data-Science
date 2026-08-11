CREATE DATABASE divyanshu;
USE divyanshu;
SELECT now();
SELECT current_date;
SELECT current_time;
SELECT current_timestamp;
SELECT localtime;
SELECT * FROM students;
ALTER TABLE students ADD COLUMN date_joined DATETIME DEFAULT (NOW());
INSERT INTO students (id, age, date_joined)
VALUES (33, 56, NOW());