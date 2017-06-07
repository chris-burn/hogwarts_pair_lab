DROP TABLE IF EXISTS students;
DROP TABLE houses;

CREATE TABLE houses (
id SERIAL8 PRIMARY KEY,
name VARCHAR(255), 
logo VARCHAR(255)
);

CREATE TABLE students (
id SERIAL8 PRIMARY KEY,
first_name VARCHAR(255),
last_name VARCHAR(255),
house_id INT8,
age INT8
);

-- ALTER TABLE students ADD house_id INT8 references houses(id)
-- ALTER TABLE students DROP COLUMN

