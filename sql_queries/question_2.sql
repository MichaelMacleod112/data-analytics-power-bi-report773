-- Which month in 2022 has had the highest revenue?

SELECT EXTRACT(MONTH FROM o.order_date :: DATE) AS month,
       EXTRACT(YEAR FROM o.order_date :: DATE) AS year,
       SUM(o.product_quantity * p.sale_price) AS revenue
FROM orders o
JOIN dim_product p ON o.product_code = p.product_code
WHERE EXTRACT(YEAR FROM o.order_date :: DATE) = 2022
GROUP BY year, month
ORDER BY revenue DESC
