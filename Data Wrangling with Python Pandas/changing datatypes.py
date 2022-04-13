# before converting, datatypes stored as object
supsto.ShipDate[:3]
# 0    11/11/2016
# 1    11/11/2016
# 2     6/16/2016
# Name: ShipDate, dtype: object# 

supsto['ShipDate'] = pd.to_datetime(supsto['ShipDate'])

# after converting
supsto.ShipDate[:3]
# 0   2016-11-11
# 1   2016-11-11
# 2   2016-06-16
# Name: ShipDate, dtype: datetime64[ns]

--##--

# before converting, datatypes stored as float64
Discounts = supsto["Discount"]
Discounts.head(3)
# 0    0.0
# 1    0.0
# 2    0.0
# Name: Discount, dtype: float64

supsto['Discount'] = supsto['Discount'].astype(int)
 
# after converting
Discounts = supsto["Discount"]
Discounts.head(3)
# 0    0
# 1    0
# 2    0
# Name: Discount, dtype: int32
