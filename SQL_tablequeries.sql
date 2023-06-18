--    Create this table

--    +--------+---------------+-----------+------------+--------+
--    | emp_id | emp_fname     | emp_lname | department | salary |
--    +--------+---------------+-----------+------------+--------+
--    |      1 | Karan         | mehta     | HR         | 300000 |
--    |      2 | Rohit         | Sharma    | Admin      |  75000 |
--    |      3 | Anukush       | Rajput    | Account    |  60000 |
--    |      4 | Priyadarshini | Sharma    | HR         | 500000 |
--    |      5 | Sanket        | Gupta     | Developer  | 100000 |
--    |      6 | Shruthi       | Varyar    | Admin      |  80000 |
--    |      7 | Rohit         | Sharma    | Admin      |  75000 |
--    +--------+---------------+-----------+------------+--------+


-- First Create table
-- Use the CREATE TABLE statement to define the table's structure. Specify the table name and the columns it will have along with their data types.

CREATE TABLE employee_info (
  emp_id INT PRIMARY KEY,
  emp_fname VARCHAR(255),
  emp_lname VARCHAR(255),
  department VARCHAR(255),
  salary INT
);


-- Secondly Insert elements
-- Use the INSERT INTO statement to specify the table name and the columns you want to insert data into. Provide the values you want to insert for each column.

INSERT INTO employee_info (emp_id, emp_fname, emp_lname, department, salary)
VALUES
  (1, 'Karan', 'Mehta', 'HR', 300000),
  (2, 'Rohit', 'Sharma', 'Admin', 75000),
  (3, 'Anukush', 'Rajput', 'Account', 60000),
  (4, 'Priyadarshini', 'Sharma', 'HR', 500000),
  (5, 'Sanket', 'Gupta', 'Developer', 100000),
  (6, 'Shruthi', 'Varyar', 'Admin', 80000),
  (7, 'Rohit', 'Sharma', 'Admin', 75000);



