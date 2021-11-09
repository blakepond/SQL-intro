-- create table
CREATE TABLE person(
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    age int,
    height_cm FLOAT, 
    city VARCHAR(30),
    favorite_color VARCHAR(10)
);
-- insert data into table
INSERT INTO person(name,age,height_cm,city,favorite_color)
VALUES('Jon','21','177.8','El Paso','Orange'),
('Meagan','39','160.8','Ammon','Yellow'),
('Gregg','36','182.88','Twin Falls','Red'),
('Tyler','35','180','Idaho Falls','Green'),
('Brock','33','181.05','Ketchum','Blue');
-- select height and order from highest to lowest
SELECT * FROM person
ORDER BY height_cm DESC;
-- select height and orer from lowest to highest
SELECT * FROM person
ORDER BY height_cm ASC;
-- select all people and sort by oldest to youngest
SELECT * FROM person
ORDER BY age DESC;
-- select all people older than 20
SELECT * FROM person
WHERE age > 20;
-- select all people that are exactly 18
SELECT * FROM person
WHERE age = 18;
-- select all people that are not between 20 and 30 
SELECT * FROM person
WHERE age NOT BETWEEN 20 AND 30;
-- select all people that are not 27
SELECT * FROM person
WHERE age <> 27;
-- select all people where their favorite color is not red
SELECT * FROM person
WHERE favorite_color <> 'Red';
-- select all people where their favorite color is not red and blue
SELECT * FROM person
WHERE favorite_color <> 'Red' AND favorite_color <> 'Blue';
-- select all people where their favorite color is green or orange
SELECT * FROM person
WHERE favorite_color = 'Green' OR favorite_color = 'Orange';
-- select all people where their favorite colors are green orange and blue using IN
SELECT * FROM person
WHERE favorite_color IN ('Orange','Green','Blue')
-- select all people where their favorite color is yellow or purplse using IN
SELECT * FROM person
WHERE favorite_color IN ('Yellow') OR favorite_color IN ('Purple');