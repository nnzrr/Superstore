SELECT aa.parcelid, aa.propertyaddress, bb.propertyaddress, COALESCE(aa.propertyaddress, bb.propertyaddress) AS propertyaddresstransformed from nashville_housing aa
JOIN nashville_housing bb
ON aa.parcelid = bb.parcelid
AND aa.uniqueid != bb.uniqueid
WHERE aa.propertyaddress IS NULL
