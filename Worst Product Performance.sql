-- Worst Product Performance
SELECT 
    Product_Name,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 1) AS Profit_Margin
FROM 
    superstore
GROUP BY 
    Product_Name
HAVING 
    SUM(Profit) < 0  -- Focus on loss-makers
ORDER BY 
    Total_Sales DESC
LIMIT 10;
-- Cisco TelePresence is the 3rd best-selling product but has negative profit