CREATE TABLE jacks (
  name varchar(25),
  age int,
  species varchar(15)
);


INSERT INTO birds (name, age, species)
  VALUES ('Charlie', 3, 'Finch'),
         ('Allie', 5, 'Owl'),
         ('Jennifer', 3, 'Magpie'),
         ('Jamie', 4, 'Owl'),
         ('Roy', 8, 'Crow');

SELECT * FROM birds
  WHERE id = 1 and age = 3;

UPDATE birds SET species = 'Raven'
  WHERE species = 'Crow'


delete FROM birds
  WHERE id = 1 and age = 3;

ALTER TABLE birds 
ADD CONSTRAINT postive_age_only 
CHECK (age > 0) 