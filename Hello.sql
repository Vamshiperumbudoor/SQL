CREATE DATABASE college;

USE college;


CREATE TABLE student (
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    maths INT,
    physics INT,
    english INT,
    social INT,
    computers INT
);

INSERT INTO student (id,name,maths,physics,english,social,computers) VALUES
(1, 'vamshi', 85, 90, 88, 76, 95),
(2, 'rishi', 70, 65, 72, 60, 80),
(3, 'prince', 92, 88, 95, 85, 90),
(4, 'raju', 60, 75, 70, 65, 68),
(5, 'ramesh', 88, 82, 80, 78, 85);

SELECT * FROM student;