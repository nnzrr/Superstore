SELECT 	propertyaddress,
		SUBSTRING (propertyaddress, 1, POSITION(',' IN propertyaddress) -1) AS address,
		SUBSTRING (propertyaddress, STRPOS(propertyaddress, ',') +2) AS city
			FROM public.nashville_housing
