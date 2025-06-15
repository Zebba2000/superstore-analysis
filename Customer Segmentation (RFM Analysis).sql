--  Customer Segmentation (RFM Analysis)
WITH rfm AS (
    SELECT 
        Customer_ID,
        Customer_Name,
        DATEDIFF(CURRENT_DATE, MAX(Order_Date)) AS Recency,
        COUNT(DISTINCT Order_ID) AS Frequency,
        SUM(Profit) AS Monetary
    FROM 
        superstore
    GROUP BY 
        Customer_ID, Customer_Name
)
SELECT 
    Customer_Name,
    Recency,
    Frequency,
    Monetary,
    CASE 
        WHEN Monetary > 1000 THEN 'High Value'
        WHEN Monetary > 0 THEN 'Medium Value'
        ELSE 'Low Value'
    END AS Customer_Tier
FROM 
    rfm
ORDER BY 
    Monetary DESC
LIMIT 10;
-- Tamara Chand stands out as the highest-value customer with $8,983 in spending despite only 5 orders (average $1,796/order)