# before converting, datatypes stored as object
supsto.ShipDate[:5]
# 0    11/11/2016
# 1    11/11/2016
# 2     6/16/2016
# 3    10/18/2015
# 4    10/18/2015
# Name: ShipDate, dtype: object# 

supsto['ShipDate'] = pd.to_datetime(supsto['ShipDate'])

# after converting
supsto.ShipDate[:5]
# 0   2016-11-11
# 1   2016-11-11
# 2   2016-06-16
# 3   2015-10-18
# 4   2015-10-18
# Name: ShipDate, dtype: datetime64[ns]
