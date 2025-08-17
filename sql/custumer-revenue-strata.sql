
/*
Calculate the total revenue from each customer in March 2019.
Include only customers who were active in March 2019.
An active user is a customer who made at least one transaction in March 2019.

Output the revenue along with the customer id
and sort the results based on the revenue in descending order.

Table: orders
Columns:
cust_id:           bigint         -- Customer ID
id:                bigint         -- Order ID
order_date:        date           -- Date of the order
order_details:     text           -- Details of the order
total_order_cost:  bigint         -- Total cost of the order
*/

SELECT 
    cust_id,
    SUM(total_order_cost) AS total_revenue
FROM 
    orders
WHERE 
    order_date >= '2019-03-01' 
    AND order_date < '2019-04-01'
GROUP BY 
    cust_id
ORDER BY 
    total_revenue DESC;