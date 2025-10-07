# Mastering GROUP BY, HAVING, Window Functions & Advanced Aggregation Queries

# Project Overview
This project is a hands-on SQL practice dataset designed to strengthen data aggregation, grouping, filtering, and analytical query skills.
It simulates an e-commerce sales dataset with realistic business data — customers, products, orders, revenues, and regions — to demonstrate SQL proficiency from basic to advanced level.

# Database Setup
Database Name: aggregate_
Table Name: sales
🔹 Columns Description
Column Name	Data Type	Description
order_id	INT (PK)	Unique order identifier
customer_name	VARCHAR(50)	Customer’s full name
customer_email	VARCHAR(50)	Customer’s email
product_name	VARCHAR(50)	Product purchased
product_category	VARCHAR(30)	Category (Electronics, Books, etc.)
unit_price	DECIMAL(10,2)	Price per unit
quantity	INT	Quantity purchased
order_date	DATE	Date of the order
order_status	VARCHAR(20)	Order status (Shipped, Delivered, etc.)
shipping_region	VARCHAR(20)	Shipping region (North, South, East, West)
payment_method	VARCHAR(20)	Payment method used

# Data Description
•	Total Rows: 30
•	Categories Covered: Electronics, Books, Apparel, Home Goods, Fitness
•	Regions Covered: North, South, East, West
•	Multiple Payment Methods: Credit Card, PayPal, Debit Card
•	Includes repeat customers and varied order statuses to make analysis realistic.

# Query Levels
🟢 BASIC LEVEL (1–10)
Covers fundamental aggregation and grouping concepts.
Examples:
•	Count total orders
•	Calculate total revenue
•	Find total quantity per product
•	Group by order_status and region
•	Average price per category
🟡 INTERMEDIATE LEVEL (11–20)
Introduces HAVING, multi-column grouping, and conditional filtering.
Examples:
•	Customers with more than 2 orders
•	Top 3 product categories by revenue
•	Average order value per region
•	Distinct category count per customer
•	Revenue per payment method
🔴 ADVANCED LEVEL (21–30)
Real-world analytical SQL with CTEs, subqueries, and window functions.
Examples:
•	Customer who spent the most overall
•	Region with highest total sales
•	Compare customer avg. order vs. global avg
•	Top-selling product per category (RANK)
•	Revenue share % by category within region
•	Grand total using WITH ROLLUP
•	Customers who bought both Books & Electronics

# SQL Features Used
•	GROUP BY, HAVING, ORDER BY
•	Aggregate functions: SUM(), AVG(), COUNT(), MIN(), MAX()
•	Subqueries and Common Table Expressions (CTE)
•	RANK() and OVER(PARTITION BY …) window functions
•	WITH ROLLUP for grand totals
•	Date functions: MONTH(), DATE_FORMAT()

# Tools Used
•	Database: MySQL
•	Editor: MySQL Workbench 
•	Dataset: Custom simulated dataset (30 rows)

# Learning Outcomes
By completing this project, you will:
•	Master aggregation and summarization in SQL.
•	Learn to apply analytical logic with subqueries and window functions.
•	Understand business insights from raw transactional data.
•	Be interview-ready for data analyst SQL challenges.

🧑‍💻 Author
👋 Varun Singh
🎓 BBA Student | 📊 Aspiring Data Analyst
💡 Skilled in SQL, Excel, Power BI, Python
🔗 LinkedIn Profile (Add your LinkedIn link here)
📂 Other Projects (Optional: Add your other GitHub projects link)

# How to Use
1.	Clone or download this repository.
2.	Run the SQL script in MySQL Workbench.
3.	Execute each query step-by-step (Basic → Intermediate → Advanced).
4.	Analyze outputs and explore variations.

# Future Enhancements
•	Add visualization layer in Power BI using this dataset.
•	Create stored procedures for automated analysis.
•	Add advanced SQL joins and window analytics.

