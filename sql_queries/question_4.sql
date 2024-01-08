-- Create a view where the rows are the store types 
-- and the columns are the total sales, 
-- percentage of total sales and the count of orders

SELECT s.store_type, COUNT(o.order_date) as num_orders, 
SUM(o.product_quantity * p.sale_price) AS sales,
 (SUM(o.product_quantity * p.sale_price) / total.total_sales) * 100 AS sales_percentage
FROM dim_store s
JOIN orders o ON o.store_code = s.store_code
JOIN dim_product p ON p.product_code = o.product_code
JOIN (SELECT SUM(o.product_quantity * p.sale_price) AS total_sales
     FROM orders o
     JOIN dim_product p ON p.product_code = o.product_code) AS total ON 1=1
GROUP BY s.store_type, total.total_sales

