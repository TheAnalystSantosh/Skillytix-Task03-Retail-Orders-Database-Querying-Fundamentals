INSERT INTO customers (first_name,last_name,email,city,country,signup_date) VALUES
('Asha','Patel','asha@example.com','Mumbai','India','2024-11-05'),
('John','Doe','john@example.com','San Jose','USA','2023-06-10'),
('Mei','Chen','mei@example.com','Shanghai','China','2025-01-20');

INSERT INTO categories (category_name) VALUES
('Electronics'),('Home'),('Clothing');

INSERT INTO products (product_name,category_id,price,stock) VALUES
('USB-C Cable',1,9.99,500),
('Wireless Mouse',1,24.99,150),
('Coffee Maker',2,79.99,40),
('T-Shirt',3,14.99,200);

INSERT INTO orders (customer_id,order_date,status,total_amount) VALUES
(1,'2025-02-14','Completed',59.97),
(2,'2025-03-02','Completed',24.99),
(1,'2025-03-10','Pending',94.98),
(3,'2025-03-11','Completed',14.99);

INSERT INTO order_items (order_id,product_id,quantity,unit_price) VALUES
(1,1,3,9.99),
(2,2,1,24.99),
(3,3,1,79.99),
(3,1,1,9.99),
(4,4,1,14.99);