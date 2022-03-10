SELECT 	aa.location,
	aa.total_cases, 
	CAST((SUM(aa.total_cases/cc.population) * 10 ^ 6) AS DECIMAL(21,3)) AS totalcasespermillion 
		FROM covid19case aa
		JOIN covid19death bb
		ON aa.caseid = bb.caseid
		JOIN covid19vaccinated cc
		ON cc.vacid = bb.vacid
			GROUP BY aa.location, aa.total_cases
