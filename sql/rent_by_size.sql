-- Analiza cena po veli?ini nekretnina
	 
	 SELECT 
    CASE 
        WHEN are_in_sqm < 50 THEN 'Manje od 50m�'
        WHEN are_in_sqm BETWEEN 50 AND 100 THEN '50-100m�'
        WHEN are_in_sqm BETWEEN 100 AND 150 THEN '100-150m�'
        WHEN are_in_sqm BETWEEN 150 AND 200 THEN '150-200m�'
        ELSE 'Preko 200m�'
    END AS size_category,
    ROUND(AVG((rent_in_euro / 12) / are_in_sqm), 2) AS avg_monthly_rent_per_sqm_eur,
    COUNT(*) AS property_count
FROM dubai_properties_view
WHERE are_in_sqm > 0 AND rent_per_sqm > 0
GROUP BY size_category
ORDER BY avg_monthly_rent_per_sqm_eur DESC;
	