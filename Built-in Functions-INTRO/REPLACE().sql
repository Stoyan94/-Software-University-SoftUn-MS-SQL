 -- The REPLACE function in SQL is used to replace all occurrences of a specified substring 

 -- Suppose you have a table named Products with a column named Description. You want to replace 
 -- all occurrences of the word "red" with "blue" in the descriptions of products.


SELECT REPLACE(Description, 'red', 'blue') AS UpdatedDescription
FROM Products

-- This query will replace all occurrences of "red" with "blue" in the Description column of the Products table and return the updated descriptions.
-- 
-- For instance, if you have a product description like "This is a red apple. It's a delicious red fruit.", 
-- after running the REPLACE function, it would become "This is a blue apple. It's a delicious blue fruit."





