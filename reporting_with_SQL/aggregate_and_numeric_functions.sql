-- To count rows you can use the COUNT() function.
-- SELECT COUNT(*) FROM <table>;
SELECT COUNT(*) FROM customers WHERE first_name = "Andrew";
-- To count unique entries use the DISTINCT keyword too:
-- SELECT COUNT(DISTINCT <column>) FROM <table>;
SELECT COUNT(DISTINCT category) FROM products;

-- To count aggregated rows with common values use the GROUP BY keywords:
-- SELECT COUNT(<column>) FROM <table> GROUP BY <column with common value>;
SELECT category, COUNT(*) AS product_count FROM products GROUP BY category;


-- To total up numeric columns use the SUM() function:
-- SELECT SUM(<numeric column) FROM <table>;
-- SELECT SUM(<numeric column) AS <alias> FROM <table>
--                                        GROUP BY <another column>
--                                        HAVING <alias> <operator> <value>;
SELECT SUM(cost) AS total_spend, user_id FROM orders GROUP BY user_id HAVING total_spend > 250 ORDER BY total_spend DESC;

-- To get the average value of a numeric column use the AVG() function.
-- SELECT AVG(<numeric column>) FROM <table>;
-- SELECT AVG(<numeric column>) FROM <table> GROUP BY <other column>;

-- To get the maximum value of a numeric column use the MAX() function.
-- SELECT MAX(<numeric column>) FROM <table>;
-- SELECT MAX(<numeric column>) FROM <table> GROUP BY <other column>;

-- To get the minimum value of a numeric column use the MIN() function.
-- SELECT MIN(<numeric column>) FROM <table>;
-- SELECT MIN(<numeric column>) FROM <table> GROUP BY <other column>;

-- ROUND(<value>, <decimal places>)

