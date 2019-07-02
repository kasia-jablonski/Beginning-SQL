-- Ordering by a single column criteria:
-- SELECT * FROM <table name> ORDER BY <column> [ASC|DESC];
SELECT * FROM books ORDER BY title ASC;
-- SELECT * FROM <table name> ORDER BY <column> [ASC|DESC],
--                                     <column 2> [ASC|DESC],
--                                     ...,
--                                     <column n> [ASC|DESC];
SELECT * FROM users ORDER BY    last_name ASC,
                                first_name ASC;

-- To limit the number of results returned, use the LIMIT keyword in SQLite, PostgreSQL and MySQL:
-- SELECT <columns> FROM <table> LIMIT <# of rows>;
SELECT * FROM campaigns ORDER BY sales DESC LIMIT 3;
-- MS SQL
-- To limit the number of results returned, use the TOP keyword.
-- SELECT TOP <# of rows> <columns> FROM <table>;

-- To page through results you can either use the OFFSET keyword in conjunction with the LIMIT keyword or just with LIMIT alone. SQLite, PostgreSQL and MySQL
-- SELECT <columns> FROM <table> LIMIT <# of rows> OFFSET <number of skipped rows>;
-- SELECT <columns> FROM <table> LIMIT <skipped rows>, <# of rows>; 
-- SELECT * FROM orders LIMIT 50 OFFSET 100;
-- MS SQL and Oracle
-- To page through results you can either use the OFFSET keyword in conjunction with the FETCH keyword. Cannot be used with TOP.
-- SELECT <columns> FROM <table> OFFSET <skipped rows> ROWS FETCH NEXT <# of rows> ROWS ONLY;

