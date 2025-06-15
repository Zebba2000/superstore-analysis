-- 🎯 BUSINESS QUESTION: Shipping Efficiency?
SELECT 
    ship_mode,
    AVG(DATEDIFF(ship_date, order_date)) AS avg_delivery_days,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit)/SUM(sales)*100, 1) AS profit_margin,
    -- Profit per day metric
    ROUND(SUM(profit)/AVG(DATEDIFF(ship_date, order_date)), 2) AS profit_per_day
FROM 
    superstore
GROUP BY 
    ship_mode
ORDER BY 
    profit_margin DESC;
    -- First class has the best profit margin but Standard class is the most popular with a similar profit margin