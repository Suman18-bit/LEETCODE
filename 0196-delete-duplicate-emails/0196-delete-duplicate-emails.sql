# Write your MySQL query statement below
DELETE p
FROM Person p
JOIN (
    SELECT email, MIN(id) AS min_id
    FROM Person
    GROUP BY email
) keep
ON p.email = keep.email
WHERE p.id > keep.min_id;
