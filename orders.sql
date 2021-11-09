-- create orders table
CREATE TABLE orders(
  id SERIAL PRIMARY KEY,
	order_id INT,
  person_id INT,
  product_name VARCHAR(30),
  product_price FLOAT,
  quantity INT
);
-- insert items into orders table
INSERT INTO orders(order_id,person_id,product_name,product_price,quantity)
VALUES(1,1,'Computer',499.99,1),
(2,1,'Hard Drive',199.99,1),
(3,2,'Flat Screen',799.99,1),
(4,2,'Xbox One',399.99,1),
(5,2,'Headset',49.99,1);
-- select all items in table
SELECT * FROM orders;
-- calculate total number of products ordered
SELECT SUM(quantity) FROM orders;
-- calculate total order price
SELECT SUM(product_price) FROM orders;
-- calculate total order price by a single person_id
SELECT SUM(product_price)
FROM orders
WHERE person_id = 1
;