ALTER TABLE public.nashville_housing 
	ADD COLUMN saledatetransferormed TYPE DATE 
	
SELECT CAST(saledate AS DATE) AS saledateconverted
	FROM public.nashville_housing
