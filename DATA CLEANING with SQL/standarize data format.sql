ALTER TABLE public.nashville_housing 
	ALTER COLUMN saledatetransformed TYPE DATE 
	
SELECT CAST(saledate AS DATE) AS saledateconverted
	FROM public.nashville_housing
