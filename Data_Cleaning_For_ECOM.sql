-- Clean the customers_2 Table

select * from customers_2;
-- Task 1: Standardize Customer_Name
UPDATE customers_2
SET Customer_Name = CONCAT(UPPER(SUBSTRING(Customer_Name, 1, 1)), LOWER(SUBSTRING(Customer_Name, 2)));

-- Task 2: Remove duplicates in customers_2
-- Step 1: Create a temporary table to store unique rows
CREATE TEMPORARY TABLE unique_customers AS
SELECT MIN(Customer_ID) AS Customer_ID
FROM customers_2
GROUP BY Customer_Name, Email, Phone_Number, Join_Date;

-- Step 2: Delete duplicate rows from the original table
DELETE FROM customers_2
WHERE Customer_ID NOT IN (SELECT Customer_ID FROM unique_customers);

-- Task 3: Handle missing Email values by setting a placeholder, and remove duplicate emails
-- Set placeholder for missing emails
UPDATE customers_2
SET Email = 'unknown@example.com'
WHERE Email IS NULL;

-- Remove duplicate emails, keeping only the first occurrence
-- Step 1: Create a temporary table to store unique rows
CREATE TEMPORARY TABLE unique_customers2 AS
SELECT MIN(Email) AS Email
FROM customers_2
GROUP BY Customer_Name, Email, Phone_Number, Join_Date;

DELETE FROM customers_2
WHERE Email NOT IN (SELECT Email FROM unique_customers2);

-- Task 4: Standardize Phone_Number formatting by removing non-numeric characters
UPDATE customers_2
SET Phone_Number = REGEXP_REPLACE(Phone_Number, '[^0-9]', '');

-- Task 5: Standardize Join_Date formats (assuming MM/DD/YYYY and converting to YYYY-MM-DD format)
UPDATE customers_2
SET Join_Date = STR_TO_DATE(Join_Date, '%m/%d/%Y')
WHERE Join_Date LIKE '%/%';

-- -------------------------------------------------------------------------
-- Clean the products_2 Table
-- Standardize Product_Name capitalization
UPDATE products_2
SET Product_Name = CONCAT(
    UPPER(SUBSTRING(Product_Name, 1, 1)),
    LOWER(SUBSTRING(Product_Name, 2))
);

-- Identify duplicates based on Product_Name and remove duplicates while keeping the first occurrence
CREATE TEMPORARY TABLE unique_products AS
SELECT MIN(Product_ID) AS Product_ID
FROM products_2
GROUP BY Product_Name, Category;

DELETE FROM products_2
WHERE Product_ID NOT IN (SELECT Product_ID FROM unique_products);

-- Task 2: Normalize Category Field
UPDATE products_2
SET Category = LOWER(Category);

-- Task 3: Handle Missing or Outlier Unit_Price Values
-- Fill missing Unit_Price with average or median for each category
UPDATE products_2 AS p
JOIN (
    SELECT Category, AVG(Unit_Price) AS avg_price
    FROM products_2
    WHERE Unit_Price IS NOT NULL
    GROUP BY Category
) AS avg_p
ON p.Category = avg_p.Category
SET p.Unit_Price = avg_p.avg_price
WHERE p.Unit_Price IS NULL;

-- Flag Outlier Prices:
-- Optional: Flag outlier prices for review
UPDATE products_2
SET Unit_Price = NULL
WHERE Unit_Price < 5 OR Unit_Price > 500;

-- -------------------------------------------------------------------------

-- Clean the orders_2 Table
-- Task 1: Standardize Order_Date Formats
UPDATE orders_2
SET Order_Date = STR_TO_DATE(Order_Date, '%m/%d/%Y')
WHERE Order_Date LIKE '%/%';

-- Task 2: Remove Duplicates
-- Create a temporary table to store unique orders
CREATE TEMPORARY TABLE unique_orders AS
SELECT MIN(Order_ID) AS Order_ID
FROM orders_2
GROUP BY Customer_ID, Product_ID, Order_Date, Quantity, Total_Amount;

-- Delete duplicate orders
DELETE FROM orders_2
WHERE Order_ID NOT IN (SELECT Order_ID FROM unique_orders);

-- Task 3: Handle Nulls and Negative Values in Quantity
UPDATE orders_2
SET Quantity = NULL
WHERE Quantity < 0;

UPDATE orders_2
SET Quantity = 1
WHERE Quantity IS NULL;

-- Task 4: Validate and Recalculate Total_Amount
UPDATE orders_2 AS o
JOIN products_2 AS p ON o.Product_ID = p.Product_ID
SET o.Total_Amount = o.Quantity * p.Unit_Price
WHERE o.Quantity IS NOT NULL AND p.Unit_Price IS NOT NULL;

-- Task 5: Verify Referential Integrity
-- Delete orders with invalid Customer_ID
DELETE FROM orders_2
WHERE Customer_ID NOT IN (SELECT Customer_ID FROM customers_2);

-- Delete orders with invalid Product_ID
DELETE FROM orders_2
WHERE Product_ID NOT IN (SELECT Product_ID FROM products_2);
