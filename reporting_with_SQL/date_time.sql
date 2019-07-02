-- SQLite
-- To get the current date use: DATE("now")
-- To get the current time use: TIME("now")
-- To get the current date time: DATETIME("NOW")

-- MS SQL
-- To get the current date use: CONVERT(date, GETDATE())
-- To get the current time use: CONVERT(time, GETDATE())
-- To get the current date time: GETDATE()

-- MySQL
-- To get the current date use: CURDATE()
-- To get the current time use: CURTIME()
-- To get the current date time: NOW()

-- Oracle and PostgreSQL
-- To get the current date use: CURRENT_DATE
-- To get the current time use: CURRENT_TIME
-- To get the current date time: `CURRENT_TIMESTAMP

-- calculates how many orders were in the last 7 days
SELECT COUNT(*) FROM orders WHERE ordered_on BETWEEN DATE("now", "-7 days") AND DATE("now", "-1 day");

STRFTIME("%d/%m/%Y", "2015-04-01 23:12:01", <modifier>) -- "01/04/2015"
STRFTIME("%d/%m/%Y", "2015-04-01 23:12:01", "+1 year") -- "01/04/2016"
-- https://www.sqlite.org/lang_datefunc.html
-- https://docs.microsoft.com/en-us/sql/t-sql/functions/date-and-time-data-types-and-functions-transact-sql?view=sql-server-2017#SetorGetSessionFormatFunctions
-- https://www.postgresql.org/docs/9.1/functions-datetime.html
-- https://docs.oracle.com/cd/B28359_01/server.111/b28286/sql_elements004.htm#SQLRF00210

