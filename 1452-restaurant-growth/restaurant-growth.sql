# Write your MySQL query statement below
WITH Daily AS (
    SELECT visited_on,
           SUM(amount) AS amount
    FROM Customer
    GROUP BY visited_on
),
SevenDayWindow AS (
    SELECT d1.visited_on,
           SUM(d2.amount) AS amount,
           ROUND(SUM(d2.amount) / 7.0, 2) AS average_amount
    FROM Daily d1
    JOIN Daily d2
      ON d2.visited_on BETWEEN DATE_SUB(d1.visited_on, INTERVAL 6 DAY) AND d1.visited_on
    GROUP BY d1.visited_on
    HAVING COUNT(d2.visited_on) = 7
)
SELECT visited_on, amount, average_amount
FROM SevenDayWindow
ORDER BY visited_on;
