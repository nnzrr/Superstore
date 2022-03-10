select DISTINCT 	aa.location,
MAX(aa.date) AS DATE,
		MAX(aa.new_cases) AS apexoftotalcases,
		MAX(bb.new_deaths) AS apexoftotaldeath
			FROM covid19case aa
			JOIN covid19death bb
				ON aa.caseid = bb.caseid
				WHERE aa.date = (SELECT DATE_PART('year',DATE '2021-01-01'))
				GROUP BY aa.location
        
        
        
        
        WITH hitode AS (SELECT 	location, 
						date,
						MAX(total_cases) AS apexoftotalcases
			   				FROM covid19case
			   					GROUP BY location, date)
SELECT location, apexoftotalcases FROM hitode
	WHERE apexoftotalcases = (SELECT MAX(apexoftotalcases) FROM hitode)
