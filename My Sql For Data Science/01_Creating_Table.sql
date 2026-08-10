CREATE DATABASE divyanshu;
SHOW DATABASES;
USE divyanshu;
CREATE TABLE students (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL DEFAULT 'No Name',
  age INT,
  email VARCHAR(100) UNIQUE,
  admission_date DATE
);

SELECT * FROM students;