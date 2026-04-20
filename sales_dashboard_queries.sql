-- =========================================
-- Sales Performance Dashboard SQL Queries
-- =========================================

-- 1️⃣ Total Sales KPI
SELECT 
    SUM(Sales) AS Total_Sales
FROM Superstore;


-- 2️⃣ Total Profit KPI
SELECT 
    SUM(Profit) AS Total_Profit
FROM Superstore;


-- 3️⃣ Total Quantity KPI
SELECT 
    SUM(Quantity) AS Total_Quantity
FROM Superstore;


-- 4️⃣ Monthly Sales Trend
SELECT 
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Monthly_Sales
FROM Superstore
GROUP BY 
    YEAR(Order_Date),
    MONTH(Order_Date)
ORDER BY 
    Year,
    Month;


-- 5️⃣ Sales by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY 
    Category
ORDER BY 
    Total_Sales DESC;


-- 6️⃣ Sales by Region
SELECT 
    Region,
    SUM(Sales) AS Total_Sales
FROM Superstore
GROUP BY 
    Region
ORDER BY 
    Total_Sales DESC;


-- 7️⃣ Profit by Category
SELECT 
    Category,
    SUM(Profit) AS Total_Profit
FROM Superstore
GROUP BY 
    Category
ORDER BY 
    Total_Profit DESC;