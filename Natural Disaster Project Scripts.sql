SELECT * FROM public.natdisastergdp

SELECT * FROM public.natdisasterdeath

--select data that we are going to using

--case-sensitive, 'indonesia' or 'Indonesia' have different results
SELECT * FROM public.natdisasterdeath 
	WHERE entity = 'Indonesia';
	
--in this demonstration, this query is more faster	
SELECT * FROM public.natdisasterdeath 
	WHERE code = 'IDN';

--looking at countries highest death by temperature
SELECT entity, year, code, MAX(deaths_temperature) AS deaths_temperature
	FROM natdisasterdeath 
		WHERE LENGTH(code) = 3
		GROUP BY entity, year, code
		ORDER BY deaths_temperature DESC LIMIT 1
		
--looking at which year had highest death by earthquake in japan
SELECT entity, year, MAX(deaths_earthquake) AS deaths_earthquake 
	FROM public.natdisasterdeath 
		WHERE code = 'JPN'
		GROUP BY entity, year 
ORDER BY MAX(deaths_earthquake) DESC limit 1

--looking at countries lowest death by landslide 
SELECT entity, year, MIN(deaths_landslide) AS deaths_landslide 
	FROM public.natdisasterdeath
	WHERE deaths_landslide != 0 AND LENGTH(code) = 3
		GROUP BY entity, year
		ORDER BY deaths_landslide ASC

--looking at Total death, Deaths by drought, and deaths by drought percentage to total death in Indonesia
SELECT entity, GREATEST(0, SUM( deaths_temperature + deaths_wildfire + deaths_storm +
    	deaths_landslide + deaths_mass_movement + deaths_volcanic +
 		deaths_earthquake + deaths_flood + deaths_drought )) AS total_death,
(SELECT SUM(deaths_drought) FROM natdisasterdeath WHERE code = 'IDN') as deaths_drought,
(SELECT (SUM(deaths_drought)/GREATEST(0, SUM( deaths_temperature + deaths_wildfire + deaths_storm +
    	deaths_landslide + deaths_mass_movement + deaths_volcanic +
 		deaths_earthquake + deaths_flood + deaths_drought ))) * 100 AS percentage)
FROM public.natdisasterdeath 
	WHERE code = 'IDN' 
	GROUP BY entity
	
--looking at 2000's total death, GDP damaged, in Indonesia 
SELECT 	gdp.entity AS entity, gdp.year AS year, 
		GREATEST(0, SUM( deaths_temperature + deaths_wildfire + deaths_storm +
    	deaths_landslide + deaths_mass_movement + deaths_volcanic +
 		deaths_earthquake + deaths_flood + deaths_drought )) AS total_death, 
		CAST(gdp.total_damages_pct_gdp_landslide AS numeric(5,4)) AS gdpDamagedPercentage
			FROM public.natdisasterdeath dea
				JOIN public.natdisastergdp gdp
				ON dea.code = gdp.code and dea.year = gdp.year
					WHERE gdp.code = 'IDN' AND gdp.year = 2000
					GROUP BY gdp.entity, gdp.year, gdp.total_damages_pct_gdp_landslide
					
					
--add new data set "worldpopulation" to database
--world population with ten years frequency
SELECT * FROM public.worldpopulation
	WHERE year < 2010 AND year > 1950
		GROUP BY entity, code, year, population
		HAVING mod(year, 10) = 0
