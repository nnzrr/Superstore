SELECT 	aa.location, 
		aa.date, 
		aa.total_cases, 
		bb.total_deaths, 
		(CAST(SUM((bb.total_deaths/aa.total_cases) * 100) AS DECIMAL(21,2))) AS totaldeathsPercentage
			FROM covid19case aa
			JOIN covid19death bb
			ON aa.caseid = bb.caseid
				GROUP BY aa.location, aa.date, aa.total_cases, bb.total_deaths
