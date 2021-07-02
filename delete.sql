-- Copy, paste, and run the SQL code from the summary.
SELECT * FROM animals;

-- Delete all ‘lion’ entries from the 
-- table.

DELETE
FROM animals
WHERE type = 'lion';

SELECT * FROM animals

-- Delete all animals whose names 
-- start with “M”.

DELETE 
FROM animals
WHERE name LIKE 'M%';

-- Delete all entries whose age 
-- is less than 9.

DELETE
FROM animals
WHERE age < 9;