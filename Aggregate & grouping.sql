-- Step 1: create database --

CREATE DATABASE aggregate_;
USE aggregate_;

-- Step 2: Create table and insert values --

CREATE TABLE sales (
    order_id INT PRIMARY KEY,               -- A unique ID for each order line, our Primary Key
    customer_name VARCHAR(50),              -- Name of the customer
    customer_email VARCHAR(50),             -- Customer's email, useful for contact
    product_name VARCHAR(50),               -- The name of the product purchased
    product_category VARCHAR(30),           -- The category the product belongs to (e.g., Electronics, Books)
    unit_price DECIMAL(10, 2),              -- The price of a single unit of the product
    quantity INT,                           -- The number of units purchased in this order
    order_date DATE,                        -- The date the order was placed
    order_status VARCHAR(20),               -- The current status of the order (e.g., Shipped, Pending)
    shipping_region VARCHAR(20),            -- The geographical region for shipping
    payment_method VARCHAR(20)              -- How the customer paid (e.g., Credit Card, PayPal)
);

-- Step 3: Insert 30 records into the sales_records table
-- The data includes repeat customers, multiple product categories, and varied statuses to make queries interesting.

INSERT INTO sales (order_id, customer_name, customer_email, product_name, product_category, unit_price, quantity, order_date, order_status, shipping_region, payment_method) VALUES
(101, 'Alice Johnson', 'alice.j@email.com', 'Laptop', 'Electronics', 1200.00, 1, '2024-01-05', 'Delivered', 'North', 'Credit Card'),
(102, 'Bob Williams', 'bob.w@email.com', 'Smartphone', 'Electronics', 800.00, 1, '2024-01-06', 'Shipped', 'South', 'PayPal'),
(103, 'Charlie Brown', 'charlie.b@email.com', 'SQL for Beginners', 'Books', 25.50, 2, '2024-01-06', 'Shipped', 'West', 'Debit Card'),
(104, 'Diana Prince', 'diana.p@email.com', 'Coffee Maker', 'Home Goods', 75.00, 1, '2024-01-07', 'Pending', 'East', 'Credit Card'),
(105, 'Alice Johnson', 'alice.j@email.com', 'Headphones', 'Electronics', 150.00, 1, '2024-01-08', 'Delivered', 'North', 'Credit Card'),
(106, 'Ethan Hunt', 'ethan.h@email.com', 'T-Shirt', 'Apparel', 20.00, 3, '2024-01-09', 'Shipped', 'South', 'PayPal'),
(107, 'Fiona Glenanne', 'fiona.g@email.com', 'The Great Gatsby', 'Books', 15.00, 1, '2024-01-10', 'Delivered', 'West', 'Debit Card'),
(108, 'Bob Williams', 'bob.w@email.com', 'Laptop Charger', 'Electronics', 45.00, 1, '2024-01-11', 'Shipped', 'South', 'PayPal'),
(109, 'George Costanza', 'george.c@email.com', 'Blender', 'Home Goods', 90.00, 1, '2024-01-12', 'Delivered', 'East', 'Credit Card'),
(110, 'Diana Prince', 'diana.p@email.com', 'Jeans', 'Apparel', 60.00, 2, '2024-01-13', 'Pending', 'East', 'Credit Card'),
(111, 'Harry Potter', 'harry.p@email.com', 'Advanced Potions', 'Books', 40.00, 1, '2024-01-14', 'Shipped', 'North', 'PayPal'),
(112, 'Irene Adler', 'irene.a@email.com', 'Keyboard', 'Electronics', 95.00, 1, '2024-01-15', 'Delivered', 'West', 'Debit Card'),
(113, 'Alice Johnson', 'alice.j@email.com', 'Data Science Intro', 'Books', 55.00, 1, '2024-01-16', 'Shipped', 'North', 'Credit Card'),
(114, 'Jack Sparrow', 'jack.s@email.com', 'Kitchen Knives Set', 'Home Goods', 120.00, 1, '2024-01-17', 'Cancelled', 'South', 'PayPal'),
(115, 'Karen Page', 'karen.p@email.com', 'Winter Coat', 'Apparel', 180.00, 1, '2024-01-18', 'Shipped', 'East', 'Credit Card'),
(116, 'Bob Williams', 'bob.w@email.com', 'Mouse', 'Electronics', 25.00, 1, '2024-01-19', 'Delivered', 'South', 'PayPal'),
(117, 'Luke Skywalker', 'luke.s@email.com', 'To Kill a Mockingbird', 'Books', 18.00, 1, '2024-01-20', 'Pending', 'West', 'Debit Card'),
(118, 'Diana Prince', 'diana.p@email.com', 'Toaster', 'Home Goods', 35.00, 1, '2024-01-21', 'Shipped', 'East', 'Credit Card'),
(119, 'Michael Scott', 'michael.s@email.com', 'Office Chair', 'Home Goods', 250.00, 1, '2024-01-22', 'Delivered', 'North', 'Debit Card'),
(120, 'Nancy Drew', 'nancy.d@email.com', 'Sweater', 'Apparel', 45.00, 2, '2024-01-23', 'Shipped', 'South', 'PayPal'),
(121, 'Alice Johnson', 'alice.j@email.com', 'Webcam', 'Electronics', 85.00, 1, '2024-01-24', 'Pending', 'North', 'Credit Card'),
(122, 'Oliver Queen', 'oliver.q@email.com', '1984', 'Books', 12.50, 1, '2024-01-25', 'Delivered', 'West', 'Credit Card'),
(123, 'Pam Beesly', 'pam.b@email.com', 'Desk Lamp', 'Home Goods', 40.00, 1, '2024-01-25', 'Shipped', 'East', 'PayPal'),
(124, 'Quentin Coldwater', 'quentin.c@email.com', 'The Magicians', 'Books', 22.00, 1, '2024-01-26', 'Delivered', 'North', 'Debit Card'),
(125, 'Bob Williams', 'bob.w@email.com', 'External Hard Drive', 'Electronics', 110.00, 1, '2024-01-27', 'Shipped', 'South', 'PayPal'),
(126, 'Rachel Green', 'rachel.g@email.com', 'Designer Scarf', 'Apparel', 95.00, 1, '2024-01-28', 'Pending', 'East', 'Credit Card'),
(127, 'Steve Rogers', 'steve.r@email.com', 'Dumbbells Set', 'Fitness', 85.00, 1, '2024-01-29', 'Delivered', 'West', 'Debit Card'),
(128, 'Tony Stark', 'tony.s@email.com', 'Smartwatch', 'Electronics', 350.00, 1, '2024-01-30', 'Shipped', 'North', 'Credit Card'),
(129, 'Ursula Buffay', 'ursula.b@email.com', 'Yoga Mat', 'Fitness', 30.00, 1, '2024-01-30', 'Delivered', 'South', 'PayPal'),
(130, 'Charlie Brown', 'charlie.b@email.com', 'History of SQL', 'Books', 30.00, 1, '2024-01-31', 'Pending', 'West', 'Debit Card');


-- Step 4: Verify the data has been inserted correctly by selecting all records
-- This is a good final check to ensure everything is set up.
SELECT * FROM sales;

--  BASIC LEVEL (1–10) — Fundamentals of Aggregation & GROUP BY --

-- Find the total number of orders in the table. --

SELECT
	COUNT(*) AS total_orders
FROm sales
;

-- Calculate the total revenue (unit_price × quantity) for all sales. --

SELECT
	SUM(unit_price*quantity) AS total_sales
FROM sales
;

-- Count how many orders each customer has placed. --

SELECT 
	customer_name,
	COUNT(*) AS order_count
FROM sales
	GROUP BY customer_name
;

-- Find the total quantity sold per product. --

SELECT 
	product_name,
	SUM(quantity) AS total_quantity
FROM sales
	GROUP BY  product_name
;

-- Display the average unit price per product category. --

SELECT 
	product_category,
	AVG(unit_price) AS AVG_unt_price
FROM sales
	GROUP BY product_category
;

-- Show the minimum and maximum unit price for each category. --

SELECT
	product_category,
    MIN(unit_price) AS least_expensive,
	MAX(unit_price) AS most_expensive
FROM sales
	GROUP BY product_category
;

-- Count the number of orders by order_status. --

SELECT 
    order_status, COUNT(*)
FROM
    sales
GROUP BY order_status
;

-- Find the number of unique customers in each shipping region.

SELECT
	shipping_region,
	COUNT(DISTINCT(customer_name)) AS unique_customer
FROM sales
	GROUP BY shipping_region
;
    
-- Calculate the total revenue for each payment method.--

SELECT
	payment_method,
    SUM(unit_price * quantity) AS total_revenue
FROM sales
	GROUP BY payment_method
;

-- Show total orders per shipping_region sorted in descending order of count. --

SELECT 
	shipping_region,
    COUNT(*) AS total_orders
FROM sales
	GROUP BY shipping_region
ORDER BY total_orders DESC
;

-- INTERMEDIATE LEVEL (11–20) — Filtering, HAVING, and Multi-Column Grouping --

-- Find all customers who have placed more than 2 orders (HAVING COUNT(*) > 2). --

SELECT
	customer_name,
	COUNT(*) AS total_orders
FROM sales
	GROUP BY customer_name
HAVING COUNT(*)>2
;

-- Show the total revenue per customer (include full name), sorted by highest revenue.--

SELECT
	customer_name,
    SUM(unit_price * quantity ) AS revenue
FROM sales
	GROUP BY customer_name
    ORDER BY revenue DESC
;

-- Find the average order value for each shipping_region. --

SELECT 
	shipping_region,
    AVG(unit_price * quantity) AS Avg_order_value
FROM sales
GROUP BY shipping_region ;

-- Show total sales for each product_category where total revenue > ₹500.

SELECT
	product_category,
    SUM(unit_price * quantity ) AS total_revenue
FROM sales
GROUP BY product_category
	HAVING SUM(unit_price * quantity ) > 500
;

-- Calculate the average quantity per order_status. --

SELECT 
	order_status,
    AVG(quantity) AS avg_quantity
FROM sales
GROUP BY order_status
;

-- For each customer, show how many distinct product categories they purchased from. --

SELECT 
	customer_name,
    COUNT(DISTINCT(product_category)) AS purchase_categories
FROM sales
GROUP BY customer_name 
;
    
-- Find the top 3 product categories by total revenue. --

SELECT
	product_category,
    SUM(unit_price * quantity) AS total_revenue
FROM sales
GROUP BY product_category
ORDER BY total_revenue DESC
LIMIT 3 ;

-- Find the most popular payment_method (the one used in the most orders). --

SELECT 
	payment_method,
	COUNT(*) AS popular
FROM sales
GROUP BY payment_method
ORDER BY popular DESC
LIMIT 1 ;
    
-- Show total revenue per region and category, ordered by revenue descending. --

SELECT 
	shipping_region,
    product_category,
    SUM(unit_price * quantity ) as total_revenue
FROM sales
GROUP BY shipping_region, product_category
ORDER BY total_revenue DESC ;

-- Find products that have been sold more than once across all customers.

SELECT
    product_name,
    COUNT(*) AS sold
FROM sales
GROUP BY product_name                 -- No product has been sold more than twice
HAVING COUNT(*) > 2
;
    
-- ADVANCED LEVEL (21–30) — Complex Aggregations, Nested Logic, and Ranking --

-- Find the customer who spent the most overall (total revenue).

SELECT
	customer_name,
    SUM(unit_price * quantity ) as total_revenue
FROM sales
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 1 ;

--  Find the region that generated the highest total revenue.

  SELECT
	shipping_region,
    SUM(unit_price * quantity ) as total_sales
FROM sales
GROUP BY shipping_region
ORDER BY total_sales DESC
LIMIT 1 ;  
    
-- Calculate the average order value per customer and show only --
-- those above the global average. --
    
WITH customer_avg AS (
    SELECT 
        customer_name,
        AVG(unit_price * quantity) AS avg_order_value
    FROM sales
    GROUP BY customer_name
)
SELECT *
FROM customer_avg
WHERE avg_order_value > (SELECT AVG(unit_price * quantity) FROM sales)
ORDER BY avg_order_value DESC;

-- Identify the top-selling product (by revenue) in each product_category. --

-- Step 1: Calculate total revenue per product
WITH product_revenue AS (
  SELECT
    product_category,
    product_name,
    SUM(unit_price * quantity) AS total_revenue
  FROM sales
  GROUP BY product_category, product_name
),

-- Step 2: Rank products within each category by revenue
ranked_products AS (
  SELECT
    product_category,
    product_name,
    total_revenue,
    RANK() OVER (PARTITION BY product_category ORDER BY total_revenue DESC) AS revenue_rank
  FROM product_revenue
)

-- Step 3: Filter to top-ranked products per category
SELECT
  product_category,
  product_name,
  total_revenue
FROM ranked_products
WHERE revenue_rank = 1;

-- Show monthly total revenue, grouping by MONTH(order_date). --

SELECT 
    MONTH(order_date) AS month_number,
    DATE_FORMAT(order_date, '%M') AS month_name,
    SUM(unit_price * quantity) AS total_revenue
FROM sales
GROUP BY MONTH(order_date), DATE_FORMAT(order_date, '%M')
ORDER BY month_number;

-- Find average revenue per order_status and sort descending.

SELECT 
    order_status,
    AVG(unit_price * quantity) AS avg_revenue
FROM sales
GROUP BY order_status
ORDER BY avg_revenue DESC;

-- Identify customers who bought both Electronics and Books. --

SELECT customer_name
FROM sales
WHERE product_category IN ('Electronics', 'Books')
GROUP BY customer_name
HAVING COUNT(DISTINCT product_category) = 2;

-- For each region, find percentage contribution of each category to total regional revenue --

SELECT 
    shipping_region,
    product_category,
    SUM(unit_price * quantity) AS category_revenue,
    ROUND(
        (SUM(unit_price * quantity) * 100.0 /
        SUM(SUM(unit_price * quantity)) OVER (PARTITION BY shipping_region)), 2
    ) AS percent_contribution
FROM sales
GROUP BY shipping_region, product_category
ORDER BY shipping_region, percent_contribution DESC;

-- Show total revenue by region plus a grand total (using WITH ROLLUP). --

SELECT 
    shipping_region,
    SUM(unit_price * quantity) AS total_revenue
FROM sales
GROUP BY shipping_region WITH ROLLUP;

-- Find the latest order date and the customer who placed it. --

SELECT 
    customer_name,
    order_date
FROM sales
WHERE order_date = (SELECT MAX(order_date) FROM sales);



