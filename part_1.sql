-- CREATE DATABASE college;
-- -- create database xyz_company;
-- -- DROP DATABASE xyz_company;
-- USE college;
-- CREATE TABLE student(
-- rollno INT,
-- name VARCHAR(30),
-- age INT
-- );
--  
-- INSERT INTO student
-- VALUES
-- (101,"adam",25),
-- (102,"bob",23);

-- SELECT*FROM student;

CREATE DATABASE IF NOT EXISTS instagram;

USE instagram;

CREATE TABLE user(
id INT,
-- age INT,
name VARCHAR(30) NOT NULL,
email VARCHAR(50) UNIQUE,
followers INT DEFAULT 0,
following INT
-- CONSTRAINT age_check CbHECK(age>=13),
-- PRIMARY KEY(id)  in comment section of user table first we run the table then we create age,make primary key, appy check so we need to alter  creating column in existing table.
);
ALTER TABLE user
ADD   PRIMARY KEY(id);

ALTER TABLE user
ADD COLUMN age INT;

ALTER TABLE user
ADD CONSTRAINT age_check CHECK(age>=13);

ALTER TABLE user
MODIFY name VARCHAR(30) NOT NULL;

ALTER TABLE user
MODIFY email VARCHAR(30) UNIQUE;


CREATE TABLE post(
id INT PRIMARY KEY,
content VARCHAR(100),
user_id INT,
FOREIGN KEY (user_id) REFERENCES user(id)
);
INSERT INTO user
(id,name,email,followers,following,age)
VALUES
(1,"adam", "adam@yahoo.in",123,124,14),
(2,"bob", "bob@yahoo.in",323,324,15),
(3,"raj", "raj@yahoo.in",23,24,16),
(4,"jyoti", "jyoti@yahoo.in",143,11,17);

INSERT INTO user
(id,name,email,followers,following,age)
VALUES
(5,"fara","fara123@gmail.com",400,489,14),
(6,"eve","eve@gmail.com",1000,1000,16);

INSERT INTO user
(id,name,email,age)
VALUES
(5,"adarsh","adam@yahoo.in",25);

DELETE FROM user
WHERE id = 5;
 
-- DROP DATABASE IF EXISTS college;
-- SHOW DATABASES;
SHOW TABLES;
SELECT id,name ,email FROM user;
SELECT *FROM user;
SELECT DISTINCT following FROM user;



SELECT name,followers FROM user
WHERE followers<>23;

SELECT name,age FROM user
WHERE age>15 OR followers>100;

SELECT name,age FROM user
WHERE age BETWEEN 15 AND 17;

SELECT name, age
FROM user
WHERE age+1=18;


 SELECT name,followers,email
 FROM user
 WHERE email IN ("adam@yahoo.in","bob@yahoo.in","abcd@gmail.com");
 
 SELECT name,followers,email,age
 FROM user
 WHERE age NOT IN (14,16);
 
  SELECT name,followers,email,age
 FROM user
 WHERE age  IN (14,16);
 
 
 SELECT name,age
 FROM user
 WHERE age>14
 LIMIT 2;
 
 SELECT * FROM user
 ORDER BY followers ASC;
 
 SELECT * FROM user
 ORDER BY id;
   
    
SELECT MAX(age)
FROM user;

SELECT COUNT(age) FROM user
WHERE age=14;

SELECT age, COUNT(id),max(followers) FROM user
GROUP BY age;

SELECT age,max(followers)
from user
group by age
having max( followers)>200;

UPDATE user
SET followers=600
WHERE age=16;

SET SQL_SAFE_UPDATES =0;

DELETE FROM user
WHERE age=14;

ALTER TABLE    user
ADD COLUMN city VARCHAR(50) DEFAULT "Delhi";

ALTER TABLE user
DROP COLUMN age;

ALTER TABLE user
RENAME TO instaUser;

ALTER TABLE instauser
RENAME TO user;

ALTER TABLE instaUser
CHANGE COLUMN followers Subs INT DEFAULT 0;

ALTER TABLE instaUser
MODIFY subs INT DEFAULT 5;


TRUNCATE TABLE user;

INSERT INTO instaUser
(id,name,email,following)
VALUES
(5,"adarsh","adam@yahoo.in",25);

SELECT * FROM instaUser;

