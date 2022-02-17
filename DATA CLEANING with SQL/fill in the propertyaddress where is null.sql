SELECT  aa.parcelid,
	aa.uniqueid AS null_propertyaddress,
	bb.uniqueid,
	aa.propertyaddress AS null_propertyaddress, 
        bb.propertyaddress, 
        COALESCE(aa.propertyaddress, bb.propertyaddress) AS null_propertyaddresstransformed 
  FROM nashville_housing aa
  INNER JOIN nashville_housing bb
  ON aa.parcelid = bb.parcelid
  AND aa.uniqueid != bb.uniqueid
      WHERE aa.propertyaddress IS NULL
