SELECT COUNT(*) AS total_rows FROM pizza_sales;


SELECT 
  SUM(CASE WHEN pizza_id IS NULL THEN 1 ELSE 0 END) AS null_pizza_id,
  SUM(CASE WHEN order_id IS NULL THEN 1 ELSE 0 END) AS null_order_id,
  SUM(CASE WHEN pizza_name_id IS NULL THEN 1 ELSE 0 END) AS null_pizza_name_id,
  SUM(CASE WHEN quantity IS NULL THEN 1 ELSE 0 END) AS null_quantity,
  SUM(CASE WHEN order_date IS NULL THEN 1 ELSE 0 END) AS null_order_date,
  SUM(CASE WHEN order_time IS NULL THEN 1 ELSE 0 END) AS null_order_time,
  SUM(CASE WHEN unit_price IS NULL THEN 1 ELSE 0 END) AS null_unit_price,
  SUM(CASE WHEN total_price IS NULL THEN 1 ELSE 0 END) AS null_total_price,
  SUM(CASE WHEN pizza_size IS NULL THEN 1 ELSE 0 END) AS null_pizza_size,
  SUM(CASE WHEN pizza_category IS NULL THEN 1 ELSE 0 END) AS null_pizza_category,
  SUM(CASE WHEN pizza_ingredients IS NULL THEN 1 ELSE 0 END) AS null_pizza_ingredients,
  SUM(CASE WHEN pizza_name IS NULL THEN 1 ELSE 0 END) AS null_pizza_name
FROM pizza_sales;


SELECT * 
FROM pizza_sales
WHERE quantity <= 0 OR unit_price < 0 OR total_price < 0;


SELECT * 
FROM pizza_sales
WHERE total_price != unit_price * quantity;
