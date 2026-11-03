-- Q1 Total Sales
SELECT SUM(TotalSales) as total_sales, COUNT(*) as total_orders, AVG(TotalSales) as avg_sales FROM project.abc_final;

-- Q2 Region wise
SELECT Region, SUM(TotalSales) as total_sales FROM project.abc_final GROUP BY Region ORDER BY total_sales DESC;

-- Q3 Top Region
SELECT Region, SUM(TotalSales) as total_sales FROM project.abc_final GROUP BY Region ORDER BY total_sales DESC LIMIT 1;

-- Q4 Category wise
SELECT Category, SUM(TotalSales) as total_sales FROM project.abc_final GROUP BY Category ORDER BY total_sales DESC;

-- Q5 Top 5 Products
SELECT Product, SUM(TotalSales) as total_sales, SUM(Quantity) as qty FROM project.abc_final GROUP BY Product ORDER BY total_sales DESC LIMIT 5;

-- Q6 Monthly Trend
SELECT Years, Months, MonthNames, SUM(TotalSales) as total_sales FROM project.abc_final GROUP BY Years, Months, MonthNames ORDER BY Years, Months;

-- Q7 Payment Mode
SELECT PaymentMode, COUNT(*) as orders, SUM(TotalSales) as total_sales FROM project.abc_final GROUP BY PaymentMode ORDER BY orders DESC;

-- Q8 Best SalesRep
SELECT SalesRep, SUM(TotalSales) as total_sales, COUNT(*) as orders FROM project.abc_final GROUP BY SalesRep ORDER BY total_sales DESC;

-- Q9 Discount ka asar
SELECT CASE WHEN Discount=0 THEN 'No Discount' ELSE 'Discount Diya' END as discount_type, COUNT(*) as orders, AVG(TotalSales) as avg_sales FROM project.abc_final GROUP BY discount_type;

-- Q10 South ki top Cities
SELECT City, SUM(TotalSales) as total_sales FROM project.abc_final WHERE Region='South' GROUP BY City ORDER BY total_sales DESC;
