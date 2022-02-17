ALTER TABLE public.nashville_housing 
	ALTER COLUMN saledatetransformed TYPE DATE --convert a column to a different datatype
	
SELECT CAST(saledate AS DATE) AS saledateconverted
	FROM public.nashville_housing --retrieve a new column with a different datatype
