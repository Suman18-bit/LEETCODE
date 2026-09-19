# Write your MySQL query statement below
WITH AllFriends AS (
    SELECT requester_id AS id, accepter_id AS friend
    FROM RequestAccepted
    UNION ALL
    SELECT accepter_id AS id, requester_id AS friend
    FROM RequestAccepted
),
FriendCounts AS (
    SELECT id, COUNT(DISTINCT friend) AS num
    FROM AllFriends
    GROUP BY id
)
SELECT id, num
FROM FriendCounts
ORDER BY num DESC, id ASC
LIMIT 1;
