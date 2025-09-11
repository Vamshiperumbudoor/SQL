CREATE DATABASE ecommerce;

USE ecommerce;

CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  city VARCHAR(50),
  country VARCHAR(50)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  category VARCHAR(50),
  price DECIMAL(10,2)
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  order_date DATE,
  quantity INT,
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY(product_id) REFERENCES products(product_id)
);

INSERT INTO customers VALUES 
(1, 'Vamshi', 'Perumbudoor', 'Hyderabad', 'INDIA'),
(2, 'Rishi',  'Kumar', 'Banglore', 'INDIA'),
(3, 'Ravi', 'Kumar', 'Chennai', 'INDIA');

INSERT INTO products VALUES 
(101, 'iPhone 13', 'Electronics', 799.99),
(102, 'Coffee Mug', 'Home', 12.50),
(103, 'Running Shoes', 'Sports', 89.99);

INSERT INTO orders VALUES
(1001, 1, 101, '2023-10-25', 1),
(1002, 2, 103, '2023-10-26', 2),
(1003, 1, 102, '2023-10-27', 5),
(1004, 3, 101, '2023-10-28', 1);

SELECT * FROM customers;

SELECT * FROM orders WHERE order_date > '2023-10-26';

SELECT * FROM products WHERE category = 'Electronics';

SELECT * FROM products WHERE price > '50';

SELECT * FROM orders ORDER BY quantity DESC; 
 
SELECT * FROM products ORDER BY product_name DESC;

SELECT * FROM products ORDER BY product_name, category; 


