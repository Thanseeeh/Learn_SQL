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