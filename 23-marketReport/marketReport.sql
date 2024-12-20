CREATE PROCEDURE marketReport()
BEGIN
	SELECT
	IFNULL(country,'Total:') as country
	COUNT(*) AS competitors
	FROM foreignCompetitors
	GROUP BY country With ROLLUP;
	
END

#or

(SELECT country, COUNT(*) as competitors
    FROM foreignCompetitors
    GROUP BY country
    ORDER BY country
    LIMIT 100)
    UNION
    SELECT 'Total:', COUNT(competitor) as competitors 
    FROM foreignCompetitors;
