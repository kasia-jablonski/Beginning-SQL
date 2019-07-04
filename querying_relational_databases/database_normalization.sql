-- UNIQUE keys:
-- are configured so that no value can be repeated within it
-- can be NULL
-- multiple unique keys per table
-- can be modified to a new value

-- PRIMARY keys:
-- no value can be repeated
-- may never be null
-- one primary key per table
-- cannot be modified to a new table

-- FOREIGN keys:
-- columns designed correctly
-- foreign key constraint
-- foreign key values must also exist as a primary key value in the reference table

-- INNER JOIN
-- SELECT <columns> FROM <table1> INNER JOIN <table2> ON <equality criteria> WHERE <search criteria>
-- inner joins match records together where values are equal on both sides of the join statement. 
SELECT mk.MakeName, md.ModelName FROM make as mk INNER JOIN model AS md ON mk.MakeID = md.MakeID WHERE MakeName = "Chevy;"

-- OUTER JOIN: left, right, full
-- SELECT <columns> FROM <table1> LEFT OUTER JOIN <table2> ON <equality criteria> WHERE <search criteria>
SELECT mk.MakeName, COUNT(md.ModelName) FROM make as mk LEFT OUTER JOIN model AS md ON mk.MakeID = md.MakeID -- returns all makes even those without models


-- SET OPERATIONS

-- UNION combines two data sets into one, stacked one on top of the other, unlike an inner join which puts data together side by side
-- returns a distinct list of results - if the row exists in both subsets of the union, the result will only contain one row
-- <query 1> UNION <query 2>
SELECT MakeName FROM Make UNION SELECT MakeName FROM ForeignMake;
SELECT MakeID, MakeName FROM MASKED
    WHERE MakeName < "D"
UNION
SELECT ForeignMakeID, MakeName FROM ForeignMake
    WHERE MakeName < "D"
    ORDER BY MakeName;

-- UNION ALL is almost the same as UNION, but will not eliminate duplicates - it will display duplicates instead of eliminating them
-- <query 1> UNION ALL <query 2>

-- INTERSECT is similar to an Inner Join. As with a UNION, they must have the same columns in both the left and right side of the SQL operation.
-- Returns only rows that exist in both tables
-- <query 1> INTERSECT <query 2>
SELECT MakeName FROM Make INTERSECT SELECT MakeName FROM ForeignMake ORDER BY MakeName;

-- EXCEPT gives only records from a query except the rows that are a match in the second query
SELECT MakeName FROM Make EXCEPT SELECT MakeName FROM ForeignMake -- returns domestic only



