-- Which German store type had the highest revenue for 2022?

SELECT SUM(o.product_quantity * p.sale_price) AS revenue,
       s.store_type
FROM orders o
JOIN dim_product p ON o.product_code = p.product_code
JOIN dim_store s ON o.store_code = s.store_code
WHERE EXTRACT(YEAR FROM o.order_date :: DATE) = 2022
AND s.country = 'Germany'
GROUP BY s.store_type
ORDER BY revenue DESC