--Sql Queries

/*

SQL queries are categorized into two types: Data manipulation language (DML) and Data definition
language (DDL). DML commands are used to manipulate data stored in the database, while DDL
commands are used to define the structure of the database.

*/

--Create a new database:
--Use the CREATE DATABASE statement to create a new database. Specify the name you want to give to your database.--

CREATE DATABASE mydb;

--Create a new table
--Use the CREATE TABLE statement to define the table's structure. Specify the table name and the columns it will have along with their data types.

CREATE TABLE employees (
id INT PRIMARY KEY,
name VARCHAR(100),
age INT,
email VARCHAR(255)
);

--Add data into the table
--Use the INSERT INTO statement to specify the table name and the columns you want to insert data into. Provide the values you want to insert for each column.

INSERT INTO employees (id, name, age, email) VALUES 
(1, 'Faf fergusen', 25, 'faffergusen@gmail.com'),
(2, 'Jane Smith', 28, 'janesmith@example.com'),
(3, 'Mark Johnson', 35, 'markjohnson@example.com'),
(4, 'Alonson joe', 38, 'alonson@gmail.com');

--Query the table
--To display the contents of a table in SQL, you can use the SELECT statement.

SELECT * FROM employees;