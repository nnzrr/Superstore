select	aa.location,
		aa.iso_code,
		MAX(aa.date) AS date,
		MAX(aa.new_cases) AS apexofnewcases,
		MAX(bb.new_deaths) AS apexofnewdeath
			FROM covid19case aa
			JOIN covid19death bb
			ON aa.caseid = bb.caseid
				WHERE EXTRACT(YEAR FROM aa.DATE) = 2021 
				AND aa.iso_code NOT LIKE 'OWID%' 
					GROUP BY aa.location, aa.iso_code
        
        
        
        WITH hitode AS (SELECT 	location, 
						date,
						MAX(total_cases) AS apexoftotalcases
			   				FROM covid19case
			   					GROUP BY location, date)
SELECT location, apexoftotalcases FROM hitode
	WHERE apexoftotalcases = (SELECT MAX(apexoftotalcases) FROM hitode)
