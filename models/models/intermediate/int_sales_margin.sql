SELECT 
    products_id, 
    date_date, 
    orders_id,
    revenue, 
    quantity, 
    CAST(purchase_price AS FLOAT64), 
    ROUND(sa.quantity*CAST(pr.purchase_price AS FLOAT64),2) AS purchase_cost,
    sa.revenue - ROUND(sa.quantity*CAST(pr.purchase_price AS FLOAT64),2) AS margin
FROM {{ref("stg_raw__sales")}} sa
LEFT JOIN {{ref("stg_raw__product")}} pr 
    USING (products_id)