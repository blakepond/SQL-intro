-- find all customers with fax numbers and set those number to null
UPDATE customer
SET fax = null;
-- find all customers with no company and set their company to self
UPDATE customer
SET company = 'Self'
WHERE company = NULL;
-- find the customer with the email luisrojas@yahoo.cl and change his support rep to 4
UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';
-- find the customer Julia Barnett and change her last name to Thompson
UPDATE customer
SET last_name = 'Thompson'
WHERE first_name = 'Julia';
-- find all tracks that are the genre Metal and have no comoposer. Set the compose to "The darkness around us"
UPDATE track 
SET composer = 'The Darkness Around Us'
WHERE genre_id = 3;