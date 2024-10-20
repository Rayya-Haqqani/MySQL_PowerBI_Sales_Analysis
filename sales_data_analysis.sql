SELECT * FROM sales.transactions
WHERE market_code = 'Mark001';

SELECT * FROM sales.transactions
WHERE currency = 'USD';

SELECT * FROM sales.transactions LIMIT 5;

SELECT * FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = '2020';

-- sales in Mark001 in year 2020
SELECT * FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = '2020' AND sales.transactions.market_code = 'Mark001';
-- aggregate sales in Mark001 in year 2020
SELECT SUM(sales.transactions.sales_amount) FROM sales.transactions
INNER JOIN sales.date ON sales.transactions.order_date = sales.date.date
WHERE sales.date.year = '2020' AND sales.transactions.market_code = 'Mark001';


