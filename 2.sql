/* 1. */
SELECT 
    YEAR(order_date) AS year, 
    MONTH(order_date) AS month, 
    SUM(total_amount) AS revenue 
FROM 
    Orders 
WHERE 
    YEAR(order_date) = 2022 
GROUP BY 
    YEAR(order_date), 
    MONTH(order_date);

/* 2. */
SELECT 
    Products.name, 
    SUM(Order_Items.quantity * Order_Items.unit_price) AS revenue 
FROM 
    Products 
INNER JOIN 
    Order_Items 
ON 
    Products.id = Order_Items.product_id 
INNER JOIN 
    Orders 
ON 
    Order_Items.order_id = Orders.id 
WHERE 
    YEAR(Orders.order_date) = 2021 
GROUP BY 
    Products.id 
ORDER BY 
    revenue DESC 
LIMIT 
    5;

/* 3. */
SELECT 
    Customers.name, 
    SUM(Orders.total_amount) AS total_spent 
FROM 
    Customers 
INNER JOIN 
    Orders 
ON 
    Customers.id = Orders.customer_id 
WHERE 
    YEAR(Orders.order_date) = 2020 
GROUP BY 
    Customers.id 
ORDER BY 
    total_spent DESC 
LIMIT 
    10;

/* 4 */
SELECT 
    Customers.name, 
    AVG(Orders.total_amount) AS avg_order_value 
FROM 
    Customers 
INNER JOIN 
    Orders 
ON 
    Customers.id = Orders.customer_id 
WHERE 
    YEAR(Orders.order_date) = 2021 
GROUP BY 
    Customers.id;


/* 5 */
SELECT 
    SUM(total_amount) AS revenue 
FROM 
    Orders 
INNER JOIN 
    Order_Items 
ON 
    Orders.id = Order_Items.order_id 
INNER JOIN 
    Products 
ON 
    Order_Items.product_id = Products.id 
WHERE 
    Products.name LIKE '%blue%';

