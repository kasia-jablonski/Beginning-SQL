
-- INSERT INTO <table> VALUES (<value 1>, <value 2>, ...);
-- This will insert values in the order of the columns prescribed in the schema.
INSERT INTO movies VALUES (3, "Starman", "Science Fiction", 1984);

-- INSERT INTO <table> (<column 2>, <column 1>) VALUES (<value 2>, <value 1>);
-- Inserting a single row with values in any order:
INSERT INTO movies (title, genre, year_released) VALUES ("Starman", "Science Fiction", 1984);

-- INSERT INTO <table> (<column 1>, <column 2>, ...) 
            --  VALUES 
            --         (<value 1>, <value 2>, ...),
            --         (<value 1>, <value 2>, ...),
            --         (<value 1>, <value 2>, ...);
INSERT INTO movies (title, genre, year_released) 
     VALUES 
                   ("Starman", "Science Fiction", 1984),
                   ("Moulin Rouge!", "Musical", 2001);


-- UPDATE <table> SET <column> = <value>;
UPDATE products SET price = 2.99;
-- UPDATE <table> SET <column 1> = <value 1>, <column 2> = <value 2>;
UPDATE users SET first_name = "Anony", last_name = "Moose";
-- UPDATE <table> SET <column> = <value> WHERE <condition>;
UPDATE users SET password = "thisisabadidea" WHERE id = 3;


-- DELETE FROM <table>;
-- To delete all rows from a table:
DELETE FROM products;
-- DELETE FROM <table> WHERE <condition>;
DELETE FROM movies WHERE genre = "Musical";


-- Autocommit - every statement you write gets saved to disk.
-- Switch autocommit off and begin a transaction:
BEGIN TRANSACTION;
-- or BEGIN
-- To save all results of the statements after the start of the transaction to disk:
COMMIT;
-- To reset the state of the database to before the begining of the transaction:
ROLLBACK;