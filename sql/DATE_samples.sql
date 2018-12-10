-- determine the most current prod release
SELECT release_name FROM rel_name_map 
WHERE DATE_PART('day',release_prod_date - now()) <= 0 
ORDER BY DATE_PART('day',release_prod_date - now()) DESC
LIMIT 1;

-- determine the next upcoming release
SELECT release_name FROM rel_name_map 
WHERE DATE_PART('day',release_prod_date - now()) > 0 
ORDER BY DATE_PART('day',release_prod_date - now()) ASC
LIMIT 1;