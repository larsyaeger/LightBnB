SELECT properties.id, properties.title, properties.cost_per_night, avg(property_reviews.rating) AS average_rating 
FROM properties
JOIN property_reviews ON properties.id = property_id
WHERE city LIKE '%Vancouver%'
GROUP BY properties.id
HAVING avg(property_reviews.rating) >= 4
ORDER BY cost_per_night 
FETCH FIRST 10 ROWS ONLY;
