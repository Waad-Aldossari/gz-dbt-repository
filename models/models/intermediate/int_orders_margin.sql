SELECT
  orders_id,
  MAX(date_date) AS date_date,
  ROUND(SUM(revenue), 2) AS revenue,
  ROUND(SUM(quantity), 2) AS quantity,
  ROUND(SUM(purchase_cost), 2) AS purchase_cost,
  ROUND(SUM(margin), 2) AS margin
FROM `sound-aileron-414008`.`dbt_waad`.`int_sales_margin`
GROUP BY orders_id
ORDER BY orders_id DESC