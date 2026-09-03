SELECT 
    query_name,
    ROUND(avg(rating / position), 2) AS quality,
   round(avg(if (rating<3 ,1 ,0)*100),2)
    AS poor_query_percentage
FROM Queries
group by query_name;
