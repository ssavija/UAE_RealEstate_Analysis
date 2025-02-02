--Identifikacija najskupljih i najjeftinijih gradova po prose?noj ceni zakupa
	
	(
    SELECT 
        location_of_propertie AS city,
        ROUND(AVG((rent_in_euro / 12) / are_in_sqm), 2) AS avg_monthly_rent_per_sqm_eur, 
		'TOP FIVE' AS TOP_OR_LAST
    FROM 
        dubai_properties_view
    WHERE 
        are_in_sqm > 0 AND rent_per_sqm > 0
    GROUP BY 
        location_of_propertie
    ORDER BY 
        avg_monthly_rent_per_sqm_eur DESC
    LIMIT 5
)
UNION ALL
(
    SELECT 
        location_of_propertie AS city,
        ROUND(AVG((rent_in_euro / 12) / are_in_sqm), 2) AS avg_monthly_rent_per_sqm_eur,
	'LAST FIVE' AS TOP_OR_LAST
    FROM 
        dubai_properties_view
    WHERE 
        are_in_sqm > 0 AND rent_per_sqm > 0
    GROUP BY 
        location_of_propertie
    ORDER BY 
        avg_monthly_rent_per_sqm_eur ASC
    LIMIT 5
);