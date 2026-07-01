CREATE DATABASE Project_1;
USE Project_1;


CREATE TABLE Customer(
customer_id INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
city VARCHAR(20) NOT NULL
);

CREATE TABLE Product(
product_id INT PRIMARY KEY,
product_name VARCHAR(50) NOT NULL,
price DECIMAL(10,2) NOT NULL
);

CREATE TABLE Orders(
order_id INT PRIMARY KEY,
customer_id INT NOT NULL,
order_date DATE NOT NULL
);

CREATE TABLE Order_Item(
order_id INT NOT NULL,
product_id INT NOT NULL,
quantity INT NOT NULL,
PRIMARY KEY (order_id, product_id)
);

CREATE TABLE Payment(
pay_id INT PRIMARY KEY,
order_id INT NOT NULL,
amount DECIMAL(10,2) NOT NULL,
method VARCHAR(20) NOT NULL,
pay_date DATE NOT NULL
);





ALTER TABLE Orders
ADD FOREIGN KEY(customer_id)
REFERENCES Customer(customer_id);

ALTER TABLE Order_Item
ADD FOREIGN KEY(order_id)
REFERENCES Orders(order_id);

ALTER TABLE Order_Item
ADD FOREIGN KEY(product_id)
REFERENCES Product(product_id);

ALTER TABLE Payment
ADD FOREIGN KEY(order_id)
REFERENCES Orders(order_id);
