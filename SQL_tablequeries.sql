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



--Q1: Write a query to find the third highest  salary from the EmployeeInfo table ?
SELECT salary FROM employee_info ORDER BY salary DESC LIMIT 1 OFFSET 2;

--Q2: Write a query to find the third highest  salary from the table without using TOP/LIMIT keyword ?
SELECT salary
FROM employee_info
WHERE salary < (
  SELECT MAX(salary)
  FROM employee_info
)
ORDER BY salary DESC
LIMIT 1;

--Q3: Write a query to find the duplicate row in  a table ?
SELECT emp_id, emp_fname, emp_lname, department, salary, COUNT(*) as count
FROM employee_info
GROUP BY emp_id, emp_fname, emp_lname, department, salary
HAVING COUNT(*) > 1;

--Q4: Write  a query to calculate the even and odd records from a table ?
SELECT * FROM employee_info WHERE emp_id % 2 = 0;

--Q5: Write a query to display the first and last record from the EmployeeInfo table ?
(SELECT *
FROM employee_info
ORDER BY emp_id
LIMIT 1)
UNION ALL
(SELECT *
FROM employee_info
ORDER BY emp_id DESC
LIMIT 1);

--Q6: How do you copy all rows of a table using query ?
CREATE TABLE new_employee_info LIKE employee_info;

INSERT INTO new_employee_info
SELECT * FROM employee_info;
