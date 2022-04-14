supsto.ShipDate[:3]
# 0   2016-11-11
# 1   2016-11-11
# 2   2016-06-16
# Name: ShipDate, dtype: datetime64[ns]

# create new column showing extracted year or month from ShipDate column
supsto['year'] = pd.DatetimeIndex(supsto['ShipDate']).year

supsto['month'] = supsto['ShipDate'].dt.month

#result
Ship_Date = supsto[["ShipDate", "Year", "Month"]]
Ship_Date.head(3)
#      ShipDate 	Year 	Month
# 0 	2016-11-11 	2016 	11
# 1 	2016-11-11 	2016 	11
# 2 	2016-06-16 	2016 	6
