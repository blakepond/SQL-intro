-- select all employees that live in calgary
SELECT * FROM employee
WHERE city = 'Calgary'
-- find birthdate for youngest employee
SELECT MIN(birth_date)
FROM employee
-- find birthdate for oldest employee
SELECT MAX(birth_date)
FROM employee
-- find everyone that reports to Nancy Edwards
SELECT * FROM employee
WHERE reports_to = 2
-- count how many people ive in Lethbridge
SELECT COUNT(city) FROM employee
WHERE city = 'Lethbridge'