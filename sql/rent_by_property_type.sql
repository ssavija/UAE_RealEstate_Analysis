--	Analiza cena po vrstama nekretnina
	SELECT 
    type_of_propertie,
    ROUND(AVG(rent_per_sqm), 2) AS avg_rent_per_sqm_aed,
    ROUND(AVG((rent_in_euro / 12) / are_in_sqm), 2) AS avg_monthly_rent_per_sqm_eur
FROM 
    dubai_properties_view
WHERE 
    are_in_sqm > 0 
GROUP BY 
    type_of_propertie
ORDER BY 
    avg_rent_per_sqm_aed DESC;