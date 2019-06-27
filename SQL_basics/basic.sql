SELECT title AS Title, first_published AS "First Published" FROM books;

-- SELECT <columns> FROM <table> WHERE <condition>;
-- condition: <column> <operator> <value>
SELECT title, author FROM books WHERE first_published = 1997
SELECT title FROM books WHERE author = "J. K. Rowling" AND first_published < 2000;

-- SELECT <columns> FROM <table> WHERE <column> IN (<value 1>, <value 2>, ...); 
SELECT title FROM courses WHERE topic IN ("JavaScript", "Databases", "CSS");
-- SELECT <columns> FROM <table> WHERE <column>  NOT IN (<value 1>, <value 2>, ...);
SELECT title FROM courses WHERE topic NOT IN ("SQL", "NoSQL");
-- SELECT <columns> FROM <table> WHERE <column> BETWEEN <lesser value> AND <greater value>; INCLUSIVE
SELECT * FROM movies WHERE release_year BETWEEN 2000 AND 2010;

-- SELECT <columns> FROM <table> WHERE <column> LIKE <pattern>;
-- Placing the percent symbol (%) any where in a string in conjunction with the LIKE keyword will operate as a wildcard. Meaning it can be substituted by any number of characters, including zero
SELECT title FROM books WHERE title LIKE "Harry Potter%";

-- SELECT <columns> FROM <table> WHERE <column> IS NULL 
-- SELECT <columns> FROM <table> WHERE <column> IS NOT NULL 