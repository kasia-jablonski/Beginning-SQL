-- A function looks like:
-- <function name>(<value or column>)
SELECT UPPER("Andrew Chalkley") 

-- SQLite, PostgreSQL and Oracle
-- Use the concatenation operator ||.
-- SELECT <value or column> || <value or column> || <value or column>  FROM <table>;  
-- MS SQL
-- Use the concatenation operator +.
-- SELECT <value or column> + <value or column> + <value or column>  FROM <table>;  
-- MySQL, Postgres and MS SQL
-- Use the CONCAT() function.
-- SELECT CONCAT(<value or column>, <value or column>, <value or column>) FROM <table>;
SELECT first_name + " " + last_name AS "Full Name" FROM customers;

-- Single vs Double Quotes
-- In SQL there's a difference between using single quotes (') and double quotes ("). Single quotes should be used for String literals (e.g. 'lbs'), and double quotes should be used for identifiers like column aliases (e.g. "Max Weight"):
-- SELECT maximum_weight || 'lbs' AS "Max Weight" FROM ELEVATOR_DATA;


-- To obtain the length of a value or column use the LENGTH() function.
-- SELECT LENGTH(<value or column>) FROM <tables>;
SELECT username, LENGTH(username) AS length FROM customers ORDER BY LENGTH;
SELECT username FROM customers WHERE LENGTH(username) < 7;

-- Use the UPPER() function to uppercase text.
-- SELECT UPPER(<value or column>) FROM <table>;
-- Use the LOWER() function to lowercase text.
-- SELECT LOWER(<value or column>) FROM <table>;
SELECT * FROM customers WHERE LOWER(email) = "abc@email.com";

-- To create smaller strings from larger piece of text you can use the SUBSTR() funciton or the substring function.'
-- SELECT SUBSTR(<value or column>, <start>, <length>) FROM <table>;
SELECT name, SUBSTR(description, 1, 30) + '...' AS short_description, price FROM products;

-- To replace piece of strings of text in a larger body of text you can use the REPLACE() function.
-- SELECT REPLACE(<original value or column>, <target string>, <replacement string>) FROM <table>;
SELECT street, city, REPLACE(state, "California", "CA"), zip FROM addresses;


-- Find the actor with the longest name
SELECT name FROM actors ORDER BY LENGTH(name) DESC LIMIT 1;

