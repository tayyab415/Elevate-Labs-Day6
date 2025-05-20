

-- Create the orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    amount DECIMAL(10, 2),
    product_id INT
);

-- Insert sample records
INSERT INTO orders (order_id, order_date, amount, product_id) VALUES
(1, '2024-01-15', 120.00, 101),
(2, '2024-01-20', 200.50, 102),
(3, '2024-02-10', 75.00, 103),
(4, '2024-02-18', 150.00, 104),
(5, '2024-03-05', 300.00, 101),
(6, '2024-03-25', 250.00, 105),
(7, '2024-04-01', 90.00, 102),
(8, '2024-04-15', 180.00, 103),
(9, '2024-05-02', 210.00, 104),
(10, '2024-05-20', 310.00, 101);





-- a. Use EXTRACT(MONTH FROM order_date) for month.
SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    EXTRACT(MONTH FROM order_date) AS month

FROM orders;


-- b & c. GROUP BY year/month.

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS total_revenue
FROM orders
GROUP BY year, month;

-- d. COUNT(DISTINCT order_id) for volume.

SELECT
YEAR(order_date) AS year,
MONTH(order_date) AS month,
SUM(amount) AS total_revenue,
COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY year, month;

-- e. Use ORDER BY for sorting.

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;

-- f. Limit results for specific time periods.

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
WHERE order_date >= '2024-03-01'
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;


--
-- final query 
--

SELECT 
    YEAR(order_date) AS year,
    MONTH(order_date) AS month,
    SUM(amount) AS total_revenue,
    COUNT(DISTINCT order_id) AS order_volume
FROM orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY year, month;



