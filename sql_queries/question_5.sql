-- Which product category generated the most profit
--  for the "Wiltshire, UK" region in 2021?

SELECT p.category, SUM((p.sale_price - p.cost_price)*o.product_quantity) AS profit
FROM dim_product p
JOIN orders o ON o.product_code = p.product_code
JOIN dim_store s on o.store_code = s.store_code
WHERE EXTRACT(YEAR FROM o.order_date :: DATE) = 2021
AND s.country_region = 'Wiltshire'
GROUP BY p.category, s.country_region
ORDER BY profit DESC
