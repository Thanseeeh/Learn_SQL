--    Create this table

--   +-----------+------------+-----------+--------+--------------+------------+
--   | worker_id | first_name | last_name | salary | joining_date | department |
--   +-----------+------------+-----------+--------+--------------+------------+
--   |         1 | Monika     | Arora     | 100000 | 2019-06-08   | HR         |
--   |         2 | Niharika   | Verma     |  80000 | 2019-06-02   | Admin      |
--   |         3 | Vishal     | Singhal   | 300000 | 2019-06-03   | HR         |
--   |         4 | Amithab    | Singh     | 500000 | 2019-06-04   | Admin      |
--   |         5 | Vivek      | Bhati     | 500000 | 2019-06-05   | Admin      |
--   |         6 | Vipul      | Diwan     | 200000 | 2019-06-05   | Account    |
--   |         7 | Satish     | Kumar     |  75000 | 2019-06-14   | Account    |
--   |         8 | Deepika    | Chauhan   |  90000 | 2019-06-21   | Admin      |
--   +-----------+------------+-----------+--------+--------------+------------+


-- First Create table
-- Use the CREATE TABLE statement to define the table's structure. Specify the table name and the columns it will have along with their data types.

CREATE TABLE workers (
  worker_id INT,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  salary INT,
  joining_date DATE,
  department VARCHAR(50)
);


-- Secondly Insert elements
-- Use the INSERT INTO statement to specify the table name and the columns you want to insert data into. Provide the values you want to insert for each column.

INSERT INTO workers (worker_id, first_name, last_name, salary, joining_date, department)
VALUES
  (1, 'Monika', 'Arora', 100000, '2019-06-08', 'HR'),
  (2, 'Niharika', 'Verma', 80000, '2019-06-02', 'Admin'),
  (3, 'Vishal', 'Singhal', 300000, '2019-06-03', 'HR'),
  (4, 'Amithab', 'Singh', 500000, '2019-06-04', 'Admin'),
  (5, 'Vivek', 'Bhati', 500000, '2019-06-05', 'Admin'),
  (6, 'Vipul', 'Diwan', 200000, '2019-06-05', 'Account'),
  (7, 'Satish', 'Kumar', 75000, '2019-06-14', 'Account'),
  (8, 'Deepika', 'Chauhan', 90000, '2019-06-21', 'Admin');



--Q1: Write an SQL query to fetch “FIRST_NAME” from the Worker table using the alias name as <WORKER_NAME>.
SELECT first_name AS <WORKER_NAME> FROM Worker;

--Q2:  Write an SQL query to fetch “FIRST_NAME” from the Worker table in upper case.
SELECT UPPER(first_name) FROM Worker;

--Q3: Write an SQL query to fetch unique values of DEPARTMENT from Worker table.
SELECT DISTINCT department FROM Worker;

--Q4: Write an SQL query to find the position of the alphabet (‘a’) in the first name column ‘Amitabh’ from the Worker table.
SELECT INSTR(first_name, 'a') FROM Worker WHERE first_name = 'Amitabh';

--Q5: Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side.
SELECT RTRIM(first_name) AS trimmed_first_name FROM Worker;

--Q6: Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side.
SELECT LTRIM(department) AS trimmed_department FROM Worker;

--Q7: Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’.
SELECT REPLACE(first_name, 'a', 'A') AS modified_first_name FROM Worker;

--Q8: Write an SQL query to print the FIRST_NAME and LAST_NAME from the Worker table into a single column COMPLETE_NAME. A space char should separate them.
SELECT CONCAT(first_name, ' ', last_name) AS complete_name FROM Worker;

--Q9: Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending.
SELECT * FROM Worker ORDER BY first_name ASC;

--Q10: Write an SQL query to print all Worker details from the Worker table order by FIRST_NAME Ascending and DEPARTMENT Descending.
SELECT * FROM Worker ORDER BY first_name ASC, department DESC;

--Q11: Write an SQL query to print details of the Workers whose FIRST_NAME contains ‘a’.
SELECT * FROM Worker WHERE first_name LIKE '%a%';

--Q12: Write an SQL query to fetch worker names with salaries >= 50000 and <= 100000.
SELECT first_name FROM Worker WHERE salary >= 50000 AND salary <= 100000;

--Q13: Write an SQL query to fetch the first 50% records from a table.
SELECT * FROM Worker LIMIT (SELECT COUNT(*) / 2 FROM Worker);

--Q14: Write an SQL query to show the last record from a table.
SELECT * FROM Worker ORDER BY worker_id DESC LIMIT 1;

--Q15: Swapping the Values of first name and last name Columns in a worker table
UPDATE Worker
SET
    first_name = (SELECT @temp := first_name),
    first_name = last_name,
    last_name = @temp;