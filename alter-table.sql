-- Copy, paste, and run the insert statement from the 
-- delete section above. (You should have deleted 
-- all the entries.)

CREATE TABLE animals (
id SERIAL PRIMARY KEY, name VARCHAR(50), type TEXT, age INTEGER

);

-- Add a column to the animals table called “location”. 
-- It should have a VARCHAR data type.

ALTER TABLE animals
ADD COLUMN location VARCHAR(50);

-- Insert 3 new animals into the table – make sure none of their fields are null.

INSERT INTO animals ( name, type, age ) VALUES ('Bob', 'monkey', 11), ('John', 'muskrat', 5), ('Mike', 'giraffe', 15)

SELECT * FROM animals;

-- Change the “type” column’s name to be “species”.

ALTER TABLE animals
RENAME COLUMN type
TO "species";

-- Change the “species” column data type to be VARCHAR.

ALTER TABLE animals
ALTER spicies
SET DATA TYPE VARCHAR(100);
