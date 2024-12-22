CREATE PROCEDURE userCountries()
BEGIN
	SELECT users.id, IFNULL(cities.country, 'unknown') as country
	             --COALESCE(c.country, 'unknown') AS country
    FROM users
    LEFT JOIN cities
    ON users.city = cities.city
    ORDER BY 1;
END
