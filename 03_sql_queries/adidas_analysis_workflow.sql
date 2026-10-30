-- step 1: Create the table structure for adidas_sales
CREATE TABLE adidas_sales (
    retailer VARCHAR(100),
    retailer_id INT,
    invoice_date DATE,
    region VARCHAR(50),
    state VARCHAR(50),
    city VARCHAR(50),
    product VARCHAR(100),
    price_per_unit NUMERIC(10, 2),
    units_sold NUMERIC(10, 2),     
    total_sales NUMERIC(12, 2),
    operating_profit NUMERIC(12, 2),
    operating_margin NUMERIC(5, 4),
    sales_method VARCHAR(50)
);


-- step 2: Insert data into the adidas_sales table
COPY adidas_sales 
FROM '/Users/nicolasrodriguez/Desktop/Adidas_case_study/02_processed_data/Adidas_US_Sales_CLEAN.csv' 
WITH (FORMAT csv, HEADER true, DELIMITER ',');


-- step 3: verify the data has been inserted correctly
SELECT * FROM adidas_sales LIMIT 10;


-- Step 4: Perform calculations and KPI'S on the data in the adidas_sales table

-- This query calculates the total revenue, total operating profit, overall operating margin percentage, total units sold, and average selling price from the adidas_sales table.
SELECT 
    SUM(total_sales) AS total_revenue,
    SUM(operating_profit) AS total_operating_profit,
    ROUND((SUM(operating_profit) / SUM(total_sales)) * 100, 2) AS overall_operating_margin_pct,
    SUM(units_sold) AS total_units_sold,
    ROUND(SUM(total_sales) / SUM(units_sold), 2) AS average_selling_price
FROM adidas_sales;

--- categorize the products into different categories based on their names
SELECT 
    product,
    SUM(units_sold) AS units_sold,
    SUM(total_sales) AS total_revenue,
    SUM(operating_profit) AS total_operating_profit,
    ROUND((SUM(operating_profit) / SUM(total_sales)) * 100, 2) AS operating_margin_pct,
    ROUND(SUM(total_sales) * 100.0 / SUM(SUM(total_sales)) OVER (), 2) AS revenue_share_pct
FROM adidas_sales
GROUP BY product
ORDER BY total_revenue DESC;

-- Sales growth by channel
SELECT 
    sales_method,
    SUM(units_sold) AS units_sold,
    SUM(total_sales) AS total_revenue,
    SUM(operating_profit) AS total_operating_profit,
    ROUND((SUM(operating_profit) / SUM(total_sales)) * 100, 2) AS operating_margin_pct,
    ROUND(SUM(total_sales) * 100.0 / SUM(SUM(total_sales)) OVER (), 2) AS revenue_share_pct
FROM adidas_sales
GROUP BY sales_method
ORDER BY total_revenue DESC;

-- Retailer contribution rate
SELECT 
    retailer,
    SUM(units_sold) AS total_units_sold,
    SUM(total_sales) AS total_revenue,
    SUM(operating_profit) AS total_operating_profit,
    ROUND((SUM(operating_profit) / SUM(total_sales)) * 100, 2) AS operating_margin_pct,
    ROUND(SUM(total_sales) * 100.0 / SUM(SUM(total_sales)) OVER (), 2) AS revenue_contribution_pct
FROM adidas_sales
GROUP BY retailer
ORDER BY total_revenue DESC;

-- sales growth by region
SELECT 
    region,
    SUM(units_sold) AS units_sold,
    SUM(total_sales) AS total_revenue,
    SUM(operating_profit) AS total_operating_profit,
    ROUND((SUM(operating_profit) / SUM(total_sales)) * 100, 2) AS operating_margin_pct
FROM adidas_sales
GROUP BY region
ORDER BY total_revenue DESC;