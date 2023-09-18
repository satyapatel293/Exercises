CREATE SEQUENCE part_number_sequence;


This is DDL because we are usign the 
CREATE keyword and adding a sequence object 
to the database 




CREATE TABLE people (
  name varchar(255), 
  age integer,
  occupation varchar(255) 
);


INSERT INTO people (name,	age, occupation)
VALUES ('Abby',	34,	'biologist'),
('Mu''nisah',	26,	NULL),
('Mirabelle',	40,	'contractor');


SELECT name, age, occupation FROM people 
WHERE occupation IS NULL;

CREATE TABLE birds (
  name  varchar(255),
  length	decimal(3,1),
  wingspan decimal(3,1),
  family	varchar(255),
  extinct boolean 
);

INSERT INTO birds (name, length,	wingspan, family, extinct)
VALUES ('Spotted Towhee',	21.6,	26.7,	'Emberizidae',	false),
('American Rob''in',	25.5,	36.0,	'Turdidae',	false),
('Greater Koa Finch',	19.0,	24.0,	'Fringillidae',	true),
('Carolina Parakeet',	33.0,	55.8,	'Psittacidae',	true),
('Common Kestrel',	35.5,	73.5,	'Falconidae',	false)


--Write a SQL statement that finds the names and families for all birds that are not extinct, in order from longest to shortest (based on the length column's value).

SELECT name, family FROM birds 
WHERE extinct = false 
ORDER BY length DESC; 

-- Use SQL to determine the average, minimum, and maximum wingspan for the birds shown in the table.

SELECT round(avg(wingspan), 1), min(wingspan), max(wingspan) FROM birds;


CREATE TABLE menu_items (
  item varchar(50),
  prep_time integer,
  ingredient_cost decimal(4,2),
  sales integer,
  menu_price decimal(4,2)
);

INSERT INTO menu_items 
            (item, prep_time, ingredient_cost, sales, menu_price)
    VALUES ('omelette',	10,	1.50,	182,	7.99),
            ('tacos',	5,	2.00,	254,	8.99),
            ('oatmeal',	1,	0.50,	79,	5.99);


SELECT item, (menu_price - ingredient_cost) AS profit FROM menu_items
ORDER BY profit DESC LIMIT 1;

--Write a SQL query to determine how profitable each item on the menu is 
--based on the amount of time it takes to prepare one item. Assume that whoever 
--is preparing the food is being paid $13 an hour. List the most profitable items 
--first. Keep in mind that prep_time is represented in minutes and ingredient_cost
--and menu_price are both in dollars and cents:


return the profits 
while including labor costs for the item 

prep_time in min * 60/13 = labor cost 
(menu_price - ingredient_cost - (prep_time * (60/13)))


  SELECT item, menu_price, ingredient_cost, 
         round(prep_time * (13.0/60.0),2) AS labor,
         menu_price - ingredient_cost - round(prep_time * (13.0/60.0),2) AS profit
    FROM menu_items
ORDER BY profit DESC;


round((menu_price - ingredient_cost - (prep_time * (13.0/60.0))), 2) AS profit FROM menu_items
ORDER BY profit DESC;

SELECT item, (prep_time * (13.0/60.0)) AS profit FROM menu_items
ORDER BY profit DESC;