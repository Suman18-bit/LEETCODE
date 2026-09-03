SELECT 
    ROUND(
        SUM(IF(minimum_order_date = minimum_customer_pref_delivery_date, 1, 0)) * 100 
        / COUNT(minimum_order_date), 
        2
    ) AS immediate_percentage
FROM (
    SELECT 
        delivery_id,
        customer_id,
        MIN(order_date) AS minimum_order_date,
        MIN(customer_pref_delivery_date) AS minimum_customer_pref_delivery_date
    FROM Delivery
    GROUP BY customer_id
) AS new_table;
