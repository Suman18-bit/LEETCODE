# Write your MySQL query statement below
-- SELECT user_id, name, mail
-- FROM Users
-- WHERE LOWER(mail) REGEXP '^[a-z][a-z0-9_.-]*@leetcode\\.com$';
-- SELECT user_id, name, mail
-- FROM Users
-- WHERE mail REGEXP '^[A-Za-z][A-Za-z0-9_.-]*@leetcode\\.com$';
SELECT user_id, name, mail
FROM Users
WHERE REGEXP_LIKE(
    mail,
    '^[A-Za-z][A-Za-z0-9_.-]*@leetcode[.]com$',
    'c'
);

