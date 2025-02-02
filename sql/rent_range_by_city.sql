-- Analiza raspona cena po gradovima
SELECT 
    location_of_propertie AS city,
    MIN(rent_per_sqm) AS min_rent_per_sqm_aed,
    MAX(rent_per_sqm) AS max_rent_per_sqm_aed,
    ROUND(AVG(rent_per_sqm), 2) AS avg_rent_per_sqm_aed,
    MIN((rent_in_euro / 12) / are_in_sqm) AS min_monthly_rent_per_sqm_eur,
    MAX((rent_in_euro / 12) / are_in_sqm) AS max_monthly_rent_per_sqm_eur,
    ROUND(AVG((rent_in_euro / 12) / are_in_sqm), 2) AS avg_monthly_rent_per_sqm_eur
FROM 
    dubai_properties_view
WHERE 
    are_in_sqm > 0 
	and rent_per_sqm >0
GROUP BY 
    location_of_propertie
ORDER BY 
    avg_rent_per_sqm_aed DESC;
	