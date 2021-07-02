-- Find all customers with fax numbers 
-- and set those numbers to null.

UPDATE customer
SET fax = null

-- Find all customers with no company 
-- (null) and set their company to “Self”.????
--???????????????/

UPDATE customer
SET company = 'Self'
WHERE company IS null;

SELECT * FROM customer

-- Find the customer Julia Barnett and 
-- change her last name to Thompson.28

UPDATE customer
SET last_name = 'Thompson'
WHERE customer_id = 28;

SELECT * FROM customer

-- Find the customer with this email 
-- luisrojas@yahoo.cl and change his 
-- support rep to 4. 57

UPDATE customer
SET support_rep_id = 4
WHERE email = 'luisrojas@yahoo.cl';

SELECT * FROM customer

-- Find all tracks that are the genre 
-- Metal and have no composer. 
-- Set the composer to 
-- “The darkness around us”.

UPDATE track
SET composer = 'The darkness around us'
WHERE genre_id = ( SELECT genre_id FROM genre WHERE name = 'Metal' )
AND composer IS null;

SELECT * FROM track;