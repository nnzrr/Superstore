--select tables that i am going to using/retrieve

SELECT * FROM public.covid19case;
--or
SELECT 	location, 
		date, 
		total_death 
			FROM public.covid19vaccinated
--it's query more faster and cleaner because we retrieve specific columns

--looking at zero case in new case
SELECT 	location, 
		date,
		new_cases
			FROM public.covid19case
			
--looking at new case in specific
SELECT 	location, 
		date,
		new_cases
			FROM public.covid19case
			WHERE location like 'istan'
			WHERE new_cases = 0;

--looking at zero case in new cases where total cases <= 1000

SELECT 	location, 
		date,
		new_cases,
		total_cases
			FROM public.covid19case
			WHERE new_cases = 0
			AND total_cases <= 1000
			
--looking at total cases in specific name/location

SELECT 	location, 
		date,
		total_cases
			FROM public.covid19case
			WHERE location like '%nesia'
			
--looking at total deaths with classify table. example ('low', 'high', 'not available')
SELECT 	location, 
		date,
		total_deaths,
		CASE WHEN (total_deaths >= 100000)
				THEN 'high'
			WHEN (total_deaths >= 20000 AND total_deaths < 100000)
				THEN 
					'middle'
			WHEN (total_deaths IS NULL)
				THEN
					'Not Available'
			ELSE
					'low'
		END
			FROM public.covid19death;
			
--looking at new death or total death at specific date '2021-01-01'
SELECT 	location, 
		date,
		total_deaths 
		FROM public.covid19death
			WHERE date = '2021-01-01'
