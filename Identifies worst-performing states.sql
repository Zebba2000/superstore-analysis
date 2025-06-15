-- Identifies worst-performing states
SELECT 
    Region,
    State,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit)/SUM(Sales)*100, 1) AS Profit_Margin
FROM 
    superstore
GROUP BY 
    Region, State
ORDER BY 
    Profit_Margin ASC
    limit 5;
    -- Ohio has the wrost profit margin while texas has double its sales its still in the negative