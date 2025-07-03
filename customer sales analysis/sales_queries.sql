-- Total Sales by Region
SELECT Region, SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY Region
ORDER BY TotalSales DESC;

-- Top 10 Customers
SELECT CustomerName, SUM(Sales) AS TotalSales
FROM sales_data
GROUP BY CustomerName
ORDER BY TotalSales DESC
LIMIT 10;

-- Monthly Sales Trend
SELECT DATE_TRUNC('month', OrderDate) AS Month, SUM(Sales) AS MonthlySales
FROM sales_data
GROUP BY Month
ORDER BY Month;
